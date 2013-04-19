update_system() {
  pacman -Syu
}

install_pkg() {
  successfully sudo pacman -S $1
}
