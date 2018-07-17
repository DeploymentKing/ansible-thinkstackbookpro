#!/usr/bin/env bash

set -euo pipefail

red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
reset=`tput sgr0`

echo "${green}Performing brew update${reset}"
(set -x; brew update;)
(set -x; brew upgrade;)
(set -x; brew cleanup;)
(set -x; brew doctor;)

echo "${green}Performing brew cask update${reset}"
(set -x; brew cask outdated;)
(set -x; brew cask upgrade;)
(set -x; brew cask cleanup;)
(set -x; brew cask doctor;)
