#!/bin/bash

case "$(uname -s)" in

	Darwin)
		echo '--- [ Running OSX Setup ] ---'
		echo '-- Installing: Homebrew --'
		/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

		;;

	Linux)
		echo 'Linux'
		;;
esac
