#!/bin/bash

case "$(uname -s)" in

	Darwin)
		echo '--- [ Running OSX Setup ] ---'
		echo '-- Installing: Homebrew --'
		echo | /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

    echo '-- [ Installing ZSH ] ---'
    brew install zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

    echo '-- [ Installing TMUX ] ---'
    brew install tmux

    echo '-- [ Installing GIT ] --'
    brew install git

    echo '-- [ Installing Golang ] --'
    brew install go@1.13

    echo '-- [ Installing OpenJDK8 ] --'
    brew tap AdoptOpenJDK/openjdk
    brew install adoptopenjdk/openjdk/adoptopenjdk-openjdk8

    echo '-- [ Installing NodeJS ] --'
    brew install yarn

    echo '-- [ Installing SilverSearch ] --'
    brew install the_silver_searcher
    echo '--- [ Running GUI Installation ] ---'
    brew cask install firefox iterm2 visual-studio-code spotify

    ;;
	Linux)
		echo 'Linux'
		;;
esac

# cp ./dotfiles/* ~/.
