#!/bin/bash
echo '-- Copying dotfiles to home directory'
cp -r ./dotfiles/* ~/

# Move to tmp folder for files that need to be removed
# after setup
cd /tmp

# Homebrew install
echo | /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Oh my zsh install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Theme
git clone https://github.com/ergenekonyigit/lambda-gitster.git
cd lambda-gitster && cp lambda-gitster.zsh-theme ~/.oh-my-zsh/custom/themes
cd /tmp

# Vim configuration
vim +PluginInstall +qall