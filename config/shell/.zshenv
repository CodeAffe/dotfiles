# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export ZSH_THEME="lambda-gitster"

# Setup NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Setup Node
export NODE_ENV="development"

# GOLANG
export GOPATH=~/gopath
export PATH=$PATH:$(go env GOPATH)/bin

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

# Code
export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"