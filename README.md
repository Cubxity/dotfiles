# dotfiles

> **Warning:** This dotfiles is still w.i.p as I've recently switched my distro.

## System Configuration

- **Distro**: Fedora Workstation
- **Terminal**: kitty
- **Shell**: zsh

## Applying

### Firefox

```bash
cd apps/firefox
./user.js/updater.sh -l -o "$(pwd)/user-overrides.js"
```

> **Warning** this will apply a hardened Firefox profile based on [arkenfox's user.js](https://github.com/arkenfox/user.js).
> Please read the documentation before applying.

### ~/.config

```bash
stow -t ~/.config .config/
```

**This includes the config(s) for...**

- kitty

## Apps

### Firefox

**Extensions:**

- uBlock Origin
    - AdGuard Annoyances
    - AdGuard Social Media
    - [AdGuard URL Tracking](https://raw.githubusercontent.com/AdguardTeam/FiltersRegistry/master/filters/filter_17_TrackParam/filter.txt)
    - Actually Legitimate URL Shortener Tool
- Bitwarden
- Skip Redirect
