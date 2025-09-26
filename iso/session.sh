#!/bin/sh
# Aura Desktop Session

# Start background
xsetroot -solid "#1e1e2e"

# Launch dock & orb
sh /usr/share/aura/desktop/dock.sh &
sh /usr/share/aura/desktop/orb.sh &

# Launch widgets
for w in /usr/share/aura/desktop/widgets/*.sh; do
    sh "$w" &
done

# Openbox for window management
exec openbox-session
