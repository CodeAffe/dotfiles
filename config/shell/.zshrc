source $ZSH/oh-my-zsh.sh

NONE='\033[00m'
RED='\033[01;31m'
GREEN='\033[01;32m'
YELLOW='\033[01;33m'
WHITE='\033[01;37m'
BOLD='\033[1m'
UNDERLINE='\033[4m'

function prod_warn () {
	echo "${UNDERLINE}${BOLD}${YELLOW}WARNING:${WHITE} YOU ARE CONNECTING TO"\
		"A ${RED}PRODUCTION${WHITE} DATABASE. BE CAREFUL!${NONE}"
	echo "${WHITE}Press ${GREEN}[Enter]${WHITE} key to continue...${NONE}"
	read junk
}

eval "$(starship init zsh)"