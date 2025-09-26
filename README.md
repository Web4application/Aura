```bash
https://repo.auraos.org/
│
├── index.json
├── hello-world-1.0.0.aura
├── browser-2.3.1.aura
└── editor-0.9.4.aura

```bash

mypackage.aura
├── aura.meta    # Name, version, deps
├── bin/         # Executables
├── share/       # Icons, configs
└── lib/         # Libraries
```bash
iso/usr/share/aura/desktop/
│
├── session.sh       # Main GUI session script
├── orb.sh           # Aura Orb menu launcher
├── dock.sh          # Bottom dock
├── widgets/         # Clock, system monitor, etc.
└── themes/          # Desktop themes + icons
```bash
aura-minios/
│
├── build.sh                  # Build script for ISO
├── iso/                      # ISO filesystem tree
│   ├── boot/
│   │   ├── grub/             # Bootloader configs
│   │   │   └── grub.cfg
│   │   └── vmlinuz           # Kernel (placeholder)
│   │
│   ├── initrd.img            # Init RAM disk
│   ├── etc/
│   │   ├── inittab
│   │   └── aura.conf         # Aura configs
│   │
│   ├── sbin/
│   │   └── init              # Init system (launches Aura)
│   │
│   ├── usr/
│   │   ├── bin/
│   │   │   ├── aura-gui      # GUI launcher
│   │   │   ├── aura-term     # Terminal launcher
│   │   │   ├── apm           # Aura package manager
│   │   │   └── welcome       # First boot welcome script
│   │   └── share/
│   │       └── aura/
│   │           ├── desktop/  # UI assets
│   │           └── icons/
│   │
│   └── home/
│       └── aura-user/
│           └── Desktop/
│               └── readme.txt
│
└── scripts/
    ├── mkinit.sh             # Create initrd
    ├── mkgrub.sh             # Setup GRUB
    └── mkiso.sh              # Build ISO with xorriso


```
———
    <img width="1024" height="1536" alt="image" src="https://github.com/user-attachments/assets/44d26d3a-cb08-402a-863f-dcb2249d6f12" />

  <img width="1536" height="1024" alt="image" src="https://github.com/user-attachments/assets/9bd602cb-01f8-44dc-abd4-a2bdeed0159b" />

   <img width="1536" height="1024" alt="image" src="https://github.com/user-attachments/assets/1915b004-7ebe-4e43-a2aa-d7a637189763" />
