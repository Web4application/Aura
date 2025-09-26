from task_runner import run_command

def build(source_dir, lang, output):
    if lang == "c":
        return run_command(f"gcc {source_dir}/*.c -o {output}")
    elif lang == "rust":
        return run_command(f"cargo build --manifest-path {source_dir}/Cargo.toml --release")
    elif lang == "python":
        return run_command(f"pyinstaller --onefile {source_dir}/*.py -n {output}")
    else:
        return {"status": "error", "output": f"Unsupported lang {lang}"}
