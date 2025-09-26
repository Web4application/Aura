import subprocess

def run_command(cmd: str):
    try:
        output = subprocess.check_output(cmd, shell=True, stderr=subprocess.STDOUT)
        return {"status": "success", "output": output.decode()}
    except subprocess.CalledProcessError as e:
        return {"status": "error", "output": e.output.decode()}
