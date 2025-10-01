import os
import argparse
import pandas as pd

# === Default knowledge base ===
knowledge_base = {
    "Repositories (by theme)": [
        "fadaka-blockhaain", "fadaka-dashboard", "fadaka-factory",
        "Fadakacoin", "assets", "btc-hack", "Btchack", "etck333"
    ],
    "Apps / Projects": [
        "Lola", "ChatGPT5 Mini", "ROO4AI", "Swiitbot",
        "Web4Asset", "Web4AI Project Assistant"
    ],
    "Domains": [
        "api.kubu-hai.com", "web4app.com", "Kong API Gateway",
        "Github Actions", "Alembic"
    ],
    "Tools / Infrastructure": [
        "Docker Compose", "Homebrew packaging", "ChatGPT5 Mini logo",
        "Fadaka Blockchain", "Web4AI identity"
    ],
    "Templates & Demos": [
        "BEEZ-Chat", "Bizz", "BLACKPINKchat", "DIscord", "blank-app",
        "demo-repository", "bnb-chain.github.io"
    ],
    "AI & Generative Systems": ["Failenbae"]
}

# === File paths ===
# Local storage: ~/Documents
# iCloud Drive (Mac/iOS): ~/Library/Mobile Documents/com~apple~CloudDocs
base_dir = os.path.expanduser("~/Documents")
md_file = os.path.join(base_dir, "Web4application_KnowledgeBase.md")
xlsx_file = os.path.join(base_dir, "Web4application_KnowledgeBase.xlsx")

# === Command-line argument setup ===
parser = argparse.ArgumentParser(description="Manage Web4application Knowledge Base")
parser.add_argument("--add", type=str, help='Add new item in format "Category: Item"')
args = parser.parse_args()

# === Merge existing Markdown if available ===
if os.path.exists(md_file):
    with open(md_file, "r", encoding="utf-8") as f:
        lines = f.readlines()
    for line in lines:
        if line.startswith("|") and not line.startswith("| Category"):
            parts = [p.strip() for p in line.split("|")[1:-1]]
            if len(parts) == 2:
                category, item = parts
                if category in knowledge_base:
                    if item not in knowledge_base[category]:
                        knowledge_base[category].append(item)
                else:
                    knowledge_base[category] = [item]

# === Add new item from CLI ===
if args.add:
    if ":" not in args.add:
        print("❌ Format must be: Category: Item")
        exit(1)
    category, item = [p.strip() for p in args.add.split(":", 1)]
    if category in knowledge_base:
        if item not in knowledge_base[category]:
            knowledge_base[category].append(item)
            print(f"✅ Added: {item} under {category}")
    else:
        knowledge_base[category] = [item]
        print(f"✅ Created new category {category} and added: {item}")

# === Flatten into rows ===
rows = []
for category, items in knowledge_base.items():
    for item in items:
        rows.append({"Category": category, "Item": item})
df = pd.DataFrame(rows)

# === Save Markdown ===
with open(md_file, "w", encoding="utf-8") as f:
    f.write("| Category | Item |\n")
    f.write("|-----------|------|\n")
    for _, row in df.iterrows():
        f.write(f"| {row['Category']} | {row['Item']} |\n")

# === Save Excel ===
df.to_excel(xlsx_file, index=False)

print(f"✅ Knowledge base synced and saved:\n- {md_file}\n- {xlsx_file}")
