# dotfiles

## System Configuration

- **Distro**: Fedora Workstation
- **Terminal**: kitty
- **Shell**: zsh
- **Icon theme**: [Tela](https://github.com/vinceliuice/Tela-icon-theme)

### GNOME

Enable keybinding for inspector:

```bash
gsettings set org.gtk.Settings.Debug enable-inspector-keybinding true
```

## Applying

### Icon Theme

```bash
cd deps/tela-icon-theme
./install.sh
```

### Other

```bash
stow -t ~/ lib/
```

**This includes the config(s) for...**

- kitty
- zsh

## Additional Configurations

### Zsh

- Install [oh my zsh](https://ohmyz.sh/)
- Install `starship`, `grc`, and `fzf`
