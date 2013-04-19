CLEAR="\033[0m"
ORANGE="\033[33m"

successfully() {
  $* || { echo "failed" >&2; exit 1 }
}

fancy_echo() {
  echo -e "${ORANGE}$*${CLEAR}\n"
}
