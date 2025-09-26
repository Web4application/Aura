#!/usr/bin/env python3
import os, json, hashlib, tarfile, sys
from pathlib import Path

REPO_DIR = "/var/www/repo/stable"
INDEX_FILE = os.path.join(REPO_DIR, "index.json")

def sha256sum(filename):
    h = hashlib.sha256()
    with open(filename, "rb") as f:
        while chunk := f.read(8192):
            h.update(chunk)
    return f"sha256:{h.hexdigest()}"

def extract_meta(package_file):
    meta = {}
    try:
        with tarfile.open(package_file, "r:gz") as tar:
            f = tar.extractfile("aura.meta")
            if f:
                meta = json.load(f)
    except Exception as e:
        print(f"Warning: cannot read aura.meta in {package_file}: {e}")
    return meta

def update_index():
    packages = []
    for f in Path(REPO_DIR).glob("*.aura"):
        meta = extract_meta(f)
        pkg = {
            "name": meta.get("name", f.stem),
            "version": meta.get("version", "unknown"),
            "description": meta.get("description", ""),
            "url": f"https://repo.auraos.org/stable/{f.name}",
            "checksum": sha256sum(f)
        }
        packages.append(pkg)

    index = {"version": "1.0", "packages": packages}
    with open(INDEX_FILE, "w") as out:
        json.dump(index, out, indent=2)

    print(f"✅ index.json updated with {len(packages)} packages.")

if __name__ == "__main__":
    update_index()
