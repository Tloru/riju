#!/usr/bin/env bash

set -e
set -o pipefail

packages="

# Needed for project infrastructure
bash
git
make
nodejs
python3-pip
yarn

# Handy utilities
bsdmainutils
curl
emacs-nox
git
htop
jq
lsof
make
man-db
nano
sudo
tmux
vim
wget

"

export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get install -y $(grep -v "^#" <<< "$packages")
rm -rf /var/lib/apt/lists/*

rm "$0"