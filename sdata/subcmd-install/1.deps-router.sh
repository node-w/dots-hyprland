# This script is meant to be sourced.
# It's not for directly running.
printf "${STY_CYAN}[$0]: 1. Install dependencies\n${STY_RST}"

if [[ "$OS_GROUP_ID" == "arch" ]]; then
  printf "./sdata/dist-arch/install-deps.sh will be used.\n"
  source ./sdata/dist-arch/install-deps.sh
else
  printf "${STY_RED}Unsupported distro (OS_GROUP_ID=${OS_GROUP_ID}). Only Arch Linux and Arch-based distros are supported, aborting...${STY_RST}\n"
  exit 1
fi
