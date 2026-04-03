# 🚧 Fedora Hyprland Hyprdots (Unofficial Port) - Updated for Fedora 43

> ⚠️ **This project is no longer maintained**

## 🧩 About

This repository is a **Fedora adaptation** of the amazing
Hyprland dotfiles by **prasanthrangan**.

* 🎨 Original themes: from upstream project
* 🔧 Scripts: modified to work on Fedora
* 💻 Target: Fedora + Hyprland users

🔗 Original project:
[https://github.com/prasanthrangan/hyprdots](https://github.com/prasanthrangan/hyprdots)

---

## 📁 Dotfiles Location

👉 [https://github.com/Senshi111/hyprland-hyprdots-files](https://github.com/Senshi111/hyprland-hyprdots-files)

---

## 🖥️ Preview

> Example setup running on Fedora (Supports 39, 40, 41, 42, 43+)

![preview](https://user-images.githubusercontent.com/106020512/235429801-e8b8dae2-c1ad-4e23-9aa2-b1edb6cabe99.mp4)

---

## ⚙️ Installation

### 1. Install Git

```bash
sudo dnf install git
```

### 2. Clone Repository

```bash
git clone https://github.com/Senshi111/fedora-hyprland-hyprdots.git
cd ~/fedora-hyprland-hyprdots/build-hyprland-and-apps
```

### 3. Run Installer

```bash
./install_all.sh
```

---

## ⚠️ Important Notes

### 🐍 pyamdgpuinfo Issue

If not installed:

```bash
sudo dnf install python3-pip
pip install pyamdgpuinfo
```

If you see:

```
error: externally-managed-environment
```

Fix:

```bash
# General fix for Fedora 39+ (replace 3.xx with your python version)
sudo mv /usr/lib/python3.*/EXTERNALLY-MANAGED /usr/lib/python3.*/EXTERNALLY-MANAGED.old 2>/dev/null || true
```

---

## 🔄 After Installation

* Reboot your system
* You may see:

  * SDDM login screen ✅
  * Black screen (first launch) ⚠️

---

## 🎨 Themes

### Available

* Catppuccin (Mocha / Latte)
* Decay Green
* Rosé Pine
* Tokyo Night
* Material Sakura
* Graphite Mono
* Cyberpunk Edge

### Community

* Frosted Glass
* Gruvbox Retro

---

## 🧠 Theming Guide

👉 [https://github.com/prasanthrangan/hyprdots/blob/main/theming.md](https://github.com/prasanthrangan/hyprdots/blob/main/theming.md)

---

## 🧰 Included Components

### Core (Hyprland Stack)

* Hyprland (WM)
* Waybar (Status bar)
* Rofi (Launcher)
* Dunst (Notifications)
* Swww (Wallpaper)

### System

* PipeWire + WirePlumber
* NetworkManager
* BlueZ + Blueman

### Apps

* Firefox
* Kitty
* Dolphin
* VS Code
* Vim

### Shell

* Zsh + Oh My Zsh
* Exa
* Pokemon Colorscripts

---

## ⌨️ Keybindings (Highlights)

| Key                 | Action       |
| ------------------- | ------------ |
| `Super + T`         | Terminal     |
| `Super + E`         | File Manager |
| `Super + F`         | Browser      |
| `Super + A`         | App Launcher |
| `Super + L`         | Lock Screen  |
| `Super + Shift + T` | Theme Menu   |

---

## 🎛️ Features

* 🎨 Dynamic theme switching
* 🖼️ Wallpaper cycling
* 📊 Waybar configs generator
* 🎮 Game mode toggle
* 📋 Clipboard integration

---

## 🐞 Known Issues

* Random lockscreen crash
* Waybar + Rofi mouse bug
* Flatpak Qt apps ignore theme

---

## 📌 To-Do

* Wallpaper selector (Rofi)
* Dynamic scaling fixes
* RGB sync (OpenRGB)
* Battery/brightness notifications
* Possible Eww migration

---

## 🙏 Credits

Huge thanks to:

👉 [https://github.com/prasanthrangan/hyprdots](https://github.com/prasanthrangan/hyprdots)

---

## 📛 Disclaimer

This is an **unofficial and unmaintained port**.
Use at your own risk.
