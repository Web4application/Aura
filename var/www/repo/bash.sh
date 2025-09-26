```bash
   /var/www/repo/
   ├── stable/
   │     ├── hello-world-1.0.0.aura
   │     ├── editor-0.9.4.aura
   │     └── index.json
   ├── testing/
   ├── nightly/
   └── keys/
         └── aura-public.gpg

# Add new package
scp myapp-2.0.0.aura repo@auraos.org:/var/www/repo/stable/

# Update repo index
ssh repo@auraos.org "apm-repo"
