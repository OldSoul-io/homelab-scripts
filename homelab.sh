#!/bin/bash

if ! command -v sudo &> /dev/null; then
    apt-get update
    apt-get install -y sudo
fi

mkdir -p ~/Git
git clone https://github.com/oldsoul/homelab-scripts.git ~/Git/homelab-scripts
~/Git/homelab-scripts/dev_setup.sh

