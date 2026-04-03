#!/bin/bash
echo "🚀 Starting Fedora Hyprland Hyprdots Installation"
echo "Target: Fedora $(rpm -E %fedora) (F43+ Supported)"
echo "-----------------------------------------------"

# Run all individual installation scripts
./install_dependencies.sh
./install_hyprland.sh
./install_swaylock-effects.sh
./install_nwg-look.sh
./install_pokemon-colorscripts.sh
./install_apps.sh
./install_themes.sh
./cleanup.sh
