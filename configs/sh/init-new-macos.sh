##
# Configuration to setup a new machine based on my preferences
##

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Update Homebrew
brew update

# Install Git from Homebrew
brew install git

# Install Warp terminal from Homebrew
brew install --cask warp

# Install Oh My Zsh
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Python 3 from Homebrew
brew install python@3.12

# Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash

# Install last stable Node.js version
nvm install node
nvm list

# Install Yarn from npm
npm install --global yarn

# Install VS Code from Homebrew
brew install --cask visual-studio-code

# Install Docker from Homebrew
brew install --cask docker

# Install Bunjs 
curl -fsSL https://bun.sh/install | bash


echo "Done! 🍻"