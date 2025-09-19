
# Path for setup script
setup_script_path = os.path.join(serai_base, "setup_serai.sh")

# Write the setup script into the SERAI monorepo
with open(setup_script_path, "w") as f:
    f.write("""#!/bin/bash

# -----------------------------
# SERAI GitHub Auto Setup Script
# -----------------------------

# --- CONFIGURATION ---
GITHUB_USERNAME="YourUsername"
REPO_NAME="SERAI"
GITHUB_URL="https://github.com/$GITHUB_USERNAME/$REPO_NAME.git"
PYTHON_VERSION="3.11"

# --- INIT GIT ---
echo "Initializing git repository..."
git init
git add .
git commit -m "Initial commit: SERAI monorepo with Aura.xlsx, AI, teleport scripts"

# --- CREATE REMOTE ---
echo "Adding GitHub remote..."
git remote add origin $GITHUB_URL
git branch -M main

# --- PUSH TO GITHUB ---
echo "Pushing to GitHub..."
git push -u origin main

# --- CREATE DEV & TEST BRANCHES ---
echo "Creating dev and test branches..."
git checkout -b dev
git checkout -b test
git checkout main

# --- OPTIONAL: Setup GitHub Actions CI ---
echo "Setting up Python CI workflow..."
mkdir -p .github/workflows
cat <<EOL > .github/workflows/python.yml
name: Python CI

on: [push, pull_request]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v3
    - name: Set up Python
      uses: actions/setup-python@v4
      with:
        python-version: $PYTHON_VERSION
    - name: Install dependencies
      run: pip install openpyxl pandas
    - name: Test scripts
      run: |
        python ai/engine.py
        python teleport/teleport_sim.py
EOL

git add .github/workflows/python.yml
git commit -m "Add GitHub Actions CI workflow"
git push origin main

echo "✅ SERAI GitHub setup complete!"
""")

# Re-zip the fully complete SERAI monorepo including setup script
serai_complete_zip = "/mnt/data/SERAI_full_ready.zip"
with zipfile.ZipFile(serai_complete_zip, "w") as zipf:
    for root, dirs, files in os.walk(serai_base):
        for file in files:
            file_path = os.path.join(root, file)
            arcname = os.path.relpath(file_path, serai_base)
            zipf.write(file_path, arcname)

serai_complete_zip
