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

# Generate Aura signing key
gpg --quick-gen-key "AuraOS Repo <repo@auraos.org>" rsa4096 sign 1y

# Export public key for clients
gpg --armor --export "AuraOS Repo" > /var/www/repo/keys/aura-public.gpg

# Import repo public key (once)
gpg --import aura-public.gpg

# Install package
apm install hello-world

# apm verifies:
#   - SHA256 hash from index.json
#   - GPG signature on package + index
