#!/bin/bash
# 💫 https://github.com/Manasvin5 💫 #

if [[ $USE_PRESET = [Yy] ]]; then
  source ./preset.sh
fi

#!/bin/bash

# Clone the repository
git clone https://github.com/Manasvin5/hyprdote.git || exit 1

# Change to the cloned directory
cd hyprdote || exit 1

# Set execute permission for copy.sh and execute it
chmod +x copy.sh
./copy.sh

echo -e "${OK} Dotfiles cloned and processed successfully. Check hyprdote folder for more detailed install logs" 2>&1 | tee -a "../Install-Logs/install-$(date +'%d-%H%M%S')_dotfiles.log"
