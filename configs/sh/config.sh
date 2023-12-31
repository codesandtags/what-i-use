# This file should be included into .zshrc
# Utils
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias zprofile="code /Users/$USER/.zshrc"
alias hosts="sudo code /etc/hosts"
alias ll="ls -la"

## My Paths
alias mydev="cd /Users/$USER/Documents/codesandtags"

# Python
alias python="/usr/local/bin/python3"
alias pip="/usr/local/bin/pip3"
alias python="python3"

# NPM
alias npminit="npm init -y"
alias npmi="npm install --verbose"
alias npms="npm run start"
alias npmt="npm run test"

# Kubernates
alias k="kubectl"