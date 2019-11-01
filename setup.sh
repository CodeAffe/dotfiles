#!/bin/bash

case "$(uname -s)" in

	Darwin)
		echo '--- Running OSX Setup ---'
    echo '-- Copying dotfiles to home directory'
    cp -r ./dotfiles/* ~/

    echo '-- Moving to /tmp directory --'
    cd /tmp

    echo '-- Installing: Homebrew --'
		echo | /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

    echo '-- Installing GIT --'
    brew install git

    echo '-- Installing ZSH ---'
    brew install zsh
    # oh my zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    # Theme
    git clone https://github.com/ergenekonyigit/lambda-gitster.git
    cd lambda-gitster && cp lambda-gitster.zsh-theme ~/.oh-my-zsh/custom/themes
    cd /tmp

    echo '-- Installing TMUX ---'
    brew install tmux
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm && ~/.tmux/plugins/tpm/bin/install_plugins

    echo '-- Installing Golang --'
    brew install go@1.13

    echo '-- Installing OpenJDK8 --'
    brew tap AdoptOpenJDK/openjdk
    brew cask install adoptopenjdk8

    echo '-- Installing NodeJS --'
    brew install yarn

    echo '-- Installing Kubectl --'
    brew install kubectl

    echo '-- Installing SilverSearch --'
    brew install the_silver_searcher
    echo '--- Running GUI Installation ---'
    brew cask install firefox iterm2 visual-studio-code spotify slack discord

    ;;
	Linux)
		echo 'Linux'
		;;
esac

# cp ./dotfiles/* ~/.
