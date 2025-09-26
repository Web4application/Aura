import subprocess
import os

# ----------------------------
# CONFIGURATION
# ----------------------------
XLSL_PATH = "extensions/Aura.xlsx"  # Path to Aura.xlsx
REPO_PATH = os.path.join(os.getcwd(), "Aura_XLSL_repo")  # Local folder for new repo
GITHUB_URL = "https://github.com/YourUsername/Aura_XLSL.git"
COMMIT_MESSAGE = "Initial commit / update Aura.xlsx"

# Create repo folder if it doesn't exist
os.makedirs(REPO_PATH, exist_ok=True)

# Copy Aura.xlsx into new repo folder
import shutil
shutil.copy(XLSL_PATH, REPO_PATH)

# Initialize git
subprocess.run(["git", "init"], cwd=REPO_PATH)
subprocess.run(["git", "add", "Aura.xlsx"], cwd=REPO_PATH)
subprocess.run(["git", "commit", "-m", COMMIT_MESSAGE], cwd=REPO_PATH)
subprocess.run(["git", "branch", "-M", "main"], cwd=REPO_PATH)
subprocess.run(["git", "remote", "add", "origin", GITHUB_URL], cwd=REPO_PATH)
subprocess.run(["git", "push", "-u", "origin", "main"], cwd=REPO_PATH)

print(f"✅ Aura.xlsx is pushed to a separate repo: {GITHUB_URL}")