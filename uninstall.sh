#!/bin/bash

# Uninstall esc
echo "Uninstalling esc..."
sudo rm -f /usr/local/bin/esc
rm /home/$USER/.config/espanso/match/esc.yml
rm /home/$USER/.config/espanso/match/emoji.yml
echo "esc uninstalled successfully."