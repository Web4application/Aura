import xml.etree.ElementTree as ET
import pandas as pd
import sys
import os
import shutil
import datetime
from glob import glob

ns = {"x": "urn:oasis:names:tc:xliff:document:1.2"}

def parse_xlf(file_path):
    tree = ET.parse(file_path)
    root = tree.getroot()
    data = []
    for unit in root.findall(".//x:trans-unit", ns):
        unit_id = unit.attrib.get("id", "")
        source = unit.find("x:source", ns).text or ""
        target = unit.find("x:target", ns).text if unit.find("x:target", ns) is not None else ""
        data.append({"id": unit_id, "source": source, "target": target})
    return data, tree

def backup(file_path):
    ts = datetime.datetime.now().strftime("%Y%m%d-%H%M%S")
    bak_path = f"{file_path}.{ts}.bak"
    shutil.copy(file_path, bak_path)
    print(f"Backup saved: {bak_path}")

def rollback(file_path):
    pattern = f"{file_path}.*.bak"
    backups = sorted(glob(pattern), reverse=True)
    if not backups:
        print("No backup files found.")
        return
    latest = backups[0]
    shutil.copy(latest, file_path)
    print(f"Rolled back {file_path} from backup: {latest}")

def list_all(file_path):
    data, _ = parse_xlf(file_path)
    for d in data:
        print(f"[{d['id']}] {d['source']} → {d['target']}")

def list_todo(file_path):
    data, _ = parse_xlf(file_path)
    for d in data:
        if not d['target']:
            print(f"[{d['id']}] {d['source']} → [MISSING]")

def update(file_path, unit_id, new_text):
    data, tree = parse_xlf(file_path)
    root = tree.getroot()
    backup(file_path)
    for unit in root.findall(".//x:trans-unit", ns):
        if unit.attrib.get("id") == unit_id:
            target = unit.find("x:target", ns)
            if target is None:
                target = ET.SubElement(unit, "target")
            target.text = new_text
            break
    tree.write(file_path, encoding="utf-8", xml_declaration=True)
    print(f"Updated {unit_id} → {new_text}")

def export_todo(file_path, out_csv="untranslated.csv"):
    data, _ = parse_xlf(file_path)
    todo = [d for d in data if not d['target']]
    df = pd.DataFrame(todo)
    df.to_csv(out_csv, index=False)
    print(f"Exported {len(todo)} untranslated entries to {out_csv}")

def import_csv(file_path, csv_path):
    data, tree = parse_xlf(file_path)
    df = pd.read_csv(csv_path)
    root = tree.getroot()
    backup(file_path)
    updates = 0
    for _, row in df.iterrows():
        unit_id = str(row["id"])
        new_text = str(row["target"]) if not pd.isna(row["target"]) else ""
        for unit in root.findall(".//x:trans-unit", ns):
            if unit.attrib.get("id") == unit_id and new_text:
                target = unit.find("x:target", ns)
                if target is None:
                    target = ET.SubElement(unit, "target")
                target.text = new_text
                updates += 1
    tree.write(file_path, encoding="utf-8", xml_declaration=True)
    print(f"Imported {updates} translations from {csv_path}")

if __name__ == "__main__":
    if len(sys.argv) < 3 and sys.argv[1] != "rollback":
        print("Usage: python translate.py [list|todo|update|export|import|rollback] file.xlf [args]")
        sys.exit(1)

    cmd = sys.argv[1]

    if cmd == "list":
        list_all(sys.argv[2])
    elif cmd == "todo":
        list_todo(sys.argv[2])
    elif cmd == "update" and len(sys.argv) >= 5:
        update(sys.argv[2], sys.argv[3], sys.argv[4])
    elif cmd == "export":
        out_csv = sys.argv[3] if len(sys.argv) >= 4 else "untranslated.csv"
        export_todo(sys.argv[2], out_csv)
    elif cmd == "import" and len(sys.argv) >= 4:
        import_csv(sys.argv[2], sys.argv[3])
    elif cmd == "rollback" and len(sys.argv) >= 3:
        rollback(sys.argv[2])
    else:
        print("Invalid command or arguments")
