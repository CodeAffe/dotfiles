#!/bin/bash

case "$(uname -s)" in

	Darwin)
		echo '--- Running OSX Setup ---'

    # 1. Installing required software
    #   - 1a. Install Homebrew
    #   - 1b. Install Homebrew brewfile

    echo '-- Installing: Homebrew --'
    # 1a. Installing Homebrew
    chmod +x ./submodules/homebrew-install/install.sh
    #CI=1 tricks homebrew into automated install
    CI=1 ./submodules/homebrew-install/install.sh 

    echo '-- Starting homebrew install --'
    brew bundle --file=./osx/Brewfile

    # 2. Copying terminal apps configuration
    #   - 2a. Shell configuration
    #   - 2b. TMUX configuration
    #   - 2c. VIM configuration
    #   - 2d. Oh-My-ZSH configuration

    echo '-- Copying dotfiles to home directory'
    # 2a. Shell configuration
    cp -r ./config/shell/* ~/

    # 2b. TMUX configuration
    cp -r ./config/tmux/* ~/
    # Tmux plugins
    cp -r ./submodules/tpm/* ~/.tmux/plugins/tpm
    cp -r ./submodules/tpm/* ~/.tmux/plugins/tpm/bin/install_plugins

    # 2c. VIM configuration
    cp -r ./config/vim/* ~/
    # Vim plugins
    cp -r ./submodules/vundle/* ~/.vim/bundle/Vundle.vim/
    vim +PluginInstall +qall

    # 2d. Oh-My-ZSH configuration
    chmod +x ./submodules/ohmyzsh/tools/install.sh
    ./submodules/ohmyzsh/tools/install.sh
    # - ohmyzsh theme
    cp ./submodules/lambda-gitster/.zsh-theme ~/.oh-my-zsh/custom/themes

    ;;
	Linux)
		echo 'Linux'
		;;
esac
