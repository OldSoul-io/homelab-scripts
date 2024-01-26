#!/bin/bash

# Confirm with sudo
sudo bash -c '

# UPDATE SCRIPT SOURCE
source ./utils/error_handling.sh
source ./utils/checks.sh

# SET UP ERROR HANDLING
setUpErrorHandling


# ### 1. Update and upgrade packages ###
echo ">>> Updating and upgrading packages..."
apt update && apt full-upgrade -y
source ./modules/install_sudo.sh

# ### 2. Install 1Password CLI tool ###
source ./modules/install_1password.sh
source ./utils/secrets.sh


# ### 3. Install sudo, zsh, fail2ban, and ufw ###
echo ">>> Setting up security measures."
source ./modules/install_zsh.sh
source ./modules/install_fail2ban.sh
source ./modules/install_ufw.sh

# ### 4. Check if users already exists ###
source ./modules/adduser_oldsoul+io.sh


# ### 5. Install Tailscale ###
source ./modules/install_tailscale.sh


# ### 6. Install Yai ###
source ./modules/install_yai.sh
'

echo "Setup script completed successfully."