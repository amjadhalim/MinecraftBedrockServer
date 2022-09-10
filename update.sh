#!/bin/bash

# Set path variable
USERPATH="pathvariable"
PathLength=${#USERPATH}
if [[ "$PathLength" -gt 12 ]]; then
   PATH="$USERPATH"
else
   echo "Unable to set path variable.  You likely need to download an updated version of SetupMinecraft.sh from GitHub!"
fi

# Check to make sure we aren't running as root
if [ $(id -u) = 0 ]; then
   echo "This script is not meant to be run as root. Please run ./update.sh as a non-root user, without sudo;  Exiting..."
   exit 1
fi

curl https://github.com/amjadhalim/MinecraftBedrockServer/blob/master/SetupMinecraft.sh | bash
