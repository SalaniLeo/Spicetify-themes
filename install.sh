#!/bin/bash

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 [--adwaita|--nord]"
  exit 1
fi

if [ "$1" = "--adwaita" ]; then

 if [[ $(ls "${HOME}/.spicetify/Themes/Adwaita Theme") ]]; then
    echo "Theme already installed"
 else
  echo "Copying files"
  cp -r "${PWD}/Adwaita Theme" ${HOME}/.spicetify/Themes > /dev/null
 fi

 echo "Applying Adwaita theme"
 spicetify config current_theme "Adwaita Theme" > /dev/null
 spicetify apply > /dev/null

elif [ "$1" = "--nord" ]; then
 if [[ $(ls "${HOME}/.spicetify/Themes/Nord Theme") ]]; then
    echo "Theme already installed"
 else
    cp -r "${PWD}/Nord Theme" ${HOME}/.spicetify/Themes > /dev/null
 fi
  echo "Applying Nord theme"
  spicetify config current_theme "Nord Theme" > /dev/null
  spicetify apply > /dev/null

else
  echo "Invalid argument: $1"
  echo "Usage: $0 [--adwaita|--nord]"
  exit 1
fi
