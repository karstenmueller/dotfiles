#!/usr/bin/env bash

set -o nounset -o errexit -o pipefail

# This script should be run via curl:
#   sh -c "$(curl -fsSL https://raw.githubusercontent.com/karstenmueller/dotfiles/main/script/install.sh)"

cd "$HOME"
git clone -c core.eol=lf -c core.autocrlf=false https://github.com/karstenmueller/dotfiles.git .dotfiles

bash .dotfiles/script/bootstrap
