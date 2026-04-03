# --// Hyprdots Installation //--

<p align="center">
  <img width="100" src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/hyprdots_logo.png">
</p>


## Process

The install script has been adapted for Fedora (Tested on 39, 40, 41, 42, 43+)
The installation is automated via several shell scripts in `build-hyprland-and-apps/`.

- [i]nstall dependencies
    - Installs core system libraries and development tools using `dnf`
    - Configures RPM Fusion repositories automatically for the current Fedora version
    - Handles Google Chrome and VS Code repository setup

- [i]nstall Hyprland stack
    - Enables the `solopasha/hyprland` COPR repository
    - Detects NVIDIA GPUs and installs necessary drivers (akmod-nvidia)
    - Installs Hyprland, Waybar, Rofi-wayland, Dunst, etc.

- [d]efault
    - exactly same as install, but with `--noconfirm` option
    - will skip user input and use default option(s) to install, but prompts sudo password when required

- [r]estore
    - uncompress `tar.gz` files from `Source/arcs/` to the target location specified in [restore_fnt.lst](#restoring-archives)
    - backup existing config files to `$HOME/.config/cfg_YYMMDD_HHhMMmSSs` directory.
    - copy dot files from `Configs` directory to corresponding target location specified in [restore_cfg.lst](#restoring-configs) for installed packages
    - fix/update all the symlinks used

- [s]ervice
    - enable and start system services like sddm and bluetooth


### Restoring Archives

Archive (tar.gz) files are restored/extracted based on `restore_fnt.lst`, a `|` delimited control file structured as,
```shell
<archive_name>|<target_path>
```
where column,
1. is a compressed tar.gz file named `<archive_name>.tar.gz`, should be located in `Source/arcs/<archive_name>.tar.gz`
2. is the target location to extract


### Restoring Configs

Config/dot files are restored based on `restore_cfg.lst`, a `|` delimited control file structured as,
```shell
<target_path>|<dir_or_file_name1> <dir_or_file_name2>|<package_name1> <package_name2>
```
where column,
1. is the target location to copy
2. is the file or directory list separated by space to copy from `Configs/` directory. Here all files in `Configs/` should follow the same structure as its target directory (col 1).
3. is the package(s) names separated by space to check dependency, so if the package(s) is not installed it will not copy its corresponding config file(s)


## Flow

![](https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/install_flow.png)


## Execution

The install script can be executed in different modes,

- for default full hyprland installation with all configs
```shell
./install_all.sh
```

- for individual components, run the respective `install_*.sh` scripts inside `build-hyprland-and-apps/`.

- Note for Fedora 43+:
  - Use `dnf` or `dnf5` as both are compatible.
  - Ensure you run the dependency script FIRST.
  - Python-based sub-tools may require the `EXTERNALLY-MANAGED` fix as mentioned in the README.
