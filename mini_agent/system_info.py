import psutil, platform, json

def get_system_info():
    return {
        "os": platform.system(),
        "cpu": platform.processor(),
        "cores": psutil.cpu_count(logical=False),
        "threads": psutil.cpu_count(logical=True),
        "ram_gb": round(psutil.virtual_memory().total / 1e9, 2),
        "battery": psutil.sensors_battery().percent if psutil.sensors_battery() else None,
        "net": psutil.net_if_addrs()
    }

if __name__ == "__main__":
    print(json.dumps(get_system_info(), indent=2))
