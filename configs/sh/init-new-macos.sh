##
# Configuration to setup a new machine based on my preferences
# First open your terminal and run the following command:
##

# Creating folder structure
cd ~/Documents
mkdir -p codesandtags/code
mkdir -p codesandtags/design
mkdir -p codesandtags/tutorials
mkdir -p codesandtags/projects
mkdir -p codesandtags/labs
mkdir -p codesandtags/videos

echo "Folder structure created! 📂"

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Update Homebrew
brew update

# Install Git from Homebrew
brew install git

# Install GitHub CLI from Homebrew
brew install gh

# Install Warp terminal from Homebrew
brew install --cask warp

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Python 3 from Homebrew
brew install python@3.12

# Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash

# Uses nvm right away
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Install last stable Node.js version
nvm install node
nvm install v20.9.0
nvm list

# Install Yarn from npm
npm install --global yarn

# Install VS Code from Homebrew
brew install --cask visual-studio-code

# Install Docker from Homebrew
brew install --cask docker

# Install Bunjs 
curl -fsSL https://bun.sh/install | bash

# Welcome message for codesandtags.
echo "  _    _                            _____          _       " >> ~/.zshrc
echo " | |  | |                          / ____|        | |      " >> ~/.zshrc
echo " | |__| | __ _ _ __  _ __  _   _  | |     ___   __| | ___  " >> ~/.zshrc
echo " |  __  |/ _' | '_ \| '_ \| | | | | |    / _ \ / _' |/ _ \ " >> ~/.zshrc
echo " | |  | | (_| | |_) | |_) | |_| | | |___| (_) | (_| |  __/ " >> ~/.zshrc
echo " |_|  |_|\__,_| .__/| .__/ \__, |  \_____\___/ \__,_|\___| " >> ~/.zshrc
echo "              | |   | |     __/ |                          " >> ~/.zshrc
echo "              |_|   |_|    |___/       <3 codesandtags 🔥  " >> ~/.zshrc

# Adding global git setup for codesandtags
git config --global user.name "codesandtags"
git config --global user.email "codesandtags@gmail.com"

echo "Done! 🍻 Please enjoy your new configuration"