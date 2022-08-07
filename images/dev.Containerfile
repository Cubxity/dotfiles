FROM cubxity/toolbox:archlinux

ENV NAME=archlinux-toolbox VERSION=rolling
LABEL com.github.containers.toolbox="true" \
  name="$NAME" \
  version="$VERSION"

RUN pacman -S --noconfirm \
    nodejs-lts-gallium \
    go \
    rustup \
    jdk17-openjdk java17-openjfx openjdk17-doc openjdk17-src
