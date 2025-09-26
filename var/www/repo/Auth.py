#!/usr/bin/env python3
import os, json, hashlib, tarfile, subprocess
from pathlib import Path

REPO_DIR = "/var/www/repo/stable"
INDEX_FILE = os.path.join(REPO_DIR, "index.json")
SIGN_KEY = "AuraOS Repo"  # GPG key name

def sha256sum(filename):
    import hashlib
    h = hashlib.sha256()
    with open(filename, "rb") as f:
        while chunk := f.read(8192):
            h.update(chunk)
    return f"sha256:{h.hexdigest()}"

def extract_meta(package_file):
    import json
    meta = {}
    try:
        with tarfile.open(package_file, "r:gz") as tar:
            f = tar.extractfile("aura.meta")
            if f:
                meta = json.load(f)
    except Exception:
        pass
    return meta

def gpg_sign(file_path):
    sig_file = f"{file_path}.sig"
    subprocess.run([
        "gpg", "--batch", "--yes", "-u", SIGN_KEY,
        "--output", sig_file, "--detach-sign", file_path
    ], check=True)
    return sig_file

def update_index():
    packages = []
    for f in Path(REPO_DIR).glob("*.aura"):
        meta = extract_meta(f)
        checksum = sha256sum(f)
        sig_file = gpg_sign(str(f))

        pkg = {
            "name": meta.get("name", f.stem),
            "version": meta.get("version", "unknown"),
            "description": meta.get("description", ""),
            "url": f"https://repo.auraos.org/stable/{f.name}",
            "checksum": checksum,
            "signature": f"https://repo.auraos.org/stable/{Path(sig_file).name}"
        }
        packages.append(pkg)

    index = {"version": "1.0", "packages": packages}
    with open(INDEX_FILE, "w") as out:
        json.dump(index, out, indent=2)

    # Sign index.json too
    gpg_sign(INDEX_FILE)
    print(f"✅ index.json updated, {len(packages)} packages signed.")

if __name__ == "__main__":
    update_index()
