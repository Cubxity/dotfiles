# dotfiles

> **Warning:** This dotfiles is still w.i.p as I've recently switched my distro.

## System Configuration

- **Distro**: Fedora Workstation
- **Terminal**: kitty
- **Shell**: zsh
- **Icon theme**: [Tela](https://github.com/vinceliuice/Tela-icon-theme)

## Applying

### Firefox

```bash
cd apps/firefox
./user.js/updater.sh -l -o "$(pwd)/user-overrides.js"
```

> **Warning** this will apply a hardened Firefox profile based on [arkenfox's user.js](https://github.com/arkenfox/user.js).
> Please read the documentation before applying.

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

### Firefox

**Extensions:**

- uBlock Origin
  - AdGuard Annoyances
  - AdGuard Social Media
  - [AdGuard URL Tracking](https://raw.githubusercontent.com/AdguardTeam/FiltersRegistry/master/filters/filter_17_TrackParam/filter.txt)
  - Actually Legitimate URL Shortener Tool
- Bitwarden
- Skip Redirect

### Zsh

- Install [oh my zsh](https://ohmyz.sh/)
- Install `starship`, `grc`, and `fzf`

### VSCodium (Flatpak)

Add the following file bindings:

- `~/.cargo/bin/cargo:/home/user/.dotfiles/scripts/toolbox-dev.sh:ro`
- `/app/bin/rustc:/home/user/.dotfiles/scripts/toolbox-dev.sh:ro`
- `~/.rustup`
- `~/.cargo`

## Toolboxes

### Base Image

```bash
podman build -t cubxity/toolbox:archlinux -f images/base/archlinux.Containerfile
```

### Default Development Container

```bash
podman build -t cubxity/toolbox:dev -f images/dev.Containerfile
toolbox create --image cubxity/toolbox:dev dev
```
