#!/usr/bin/env bash

(set -x; brew update;)
(set -x; brew upgrade;)

(set -x; brew cleanup;)

red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
reset=`tput sgr0`

casks=( $(brew cask list) )

# set up array of sensitive apps that should not be updated automatically (requires Bash 4)
declare -A exclusions
for constant in chefdk vagrant docker-toolbox
do
    exclusions[$constant]=1
done

for cask in ${casks[@]}
do
    version=$(brew cask info $cask | sed -n "s/$cask:\ \(.*\)/\1/p")
    installed=$(find "/usr/local/Caskroom/$cask" -type d -maxdepth 1 -maxdepth 1 -name "$version")

    if [[ ${exclusions[$cask]} ]]; then
        echo "${red}${cask}${reset} is ${yellow}excluded${reset} from updates."
    else
        if [[ -z $installed ]]; then
            echo "${red}${cask}${reset} requires ${red}update${reset}."
            (set -x; brew cask uninstall $cask --force;)
            (set -x; brew cask install $cask --force;)
        else
            echo "${red}${cask}${reset} is ${green}up-to-date${reset}."
        fi
    fi
done

(set -x; brew cask cleanup;)
