#!/bin/bash

# Checking if is running in Repo Folder
if [[ "$(basename "$(pwd)" | tr '[:upper:]' '[:lower:]')" =~ ^scripts$ ]]; then
    echo "You are running this in ArchFabian Folder."
    echo "Please use ./ArchFabian.sh instead"
    exit
fi

# Installing git

echo "Installing git."
pacman -Sy --noconfirm --needed git glibc

echo "Cloning the ArchFabian Project"
git clone https://github.com/christitustech/ArchFabian

echo "Executing ArchFabian Script"

cd $HOME/ArchFabian

exec ./ArchFabian.sh
