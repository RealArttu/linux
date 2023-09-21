#!/bin/bash

green='\033[0;32m'
normal='\033[0m'

rm -r -f ./realarttu
mkdir ./realarttu
git clone https://github.com/RealArttu/RealArttu.git ./realarttu/./
mkdir ./realarttu/fcc/cloned
git clone https://github.com/RealArttu/freecodecamp.git ./realarttu/fcc/cloned/./
mkdir ./realarttu/projektit/cloned
git clone https://github.com/RealArttu/web-projects.git ./realarttu/projektit/cloned/./
echo -e "${green}Done!${normal}"
