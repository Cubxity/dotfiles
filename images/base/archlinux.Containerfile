FROM docker.io/archlinux/archlinux:latest

ENV NAME=archlinux-toolbox VERSION=rolling
LABEL com.github.containers.toolbox="true" \
  name="$NAME" \
  version="$VERSION"

RUN pacman -Syu --noconfirm \
  && pacman -S --noconfirm sudo zsh starship grc fzf \
  && pacman -Scc --noconfirm \
  && echo "%wheel ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/toolbox

CMD ["zsh"]
