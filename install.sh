#!/bin/bash

# Prompt the user to select an action
echo "Please select which dotfile to install:"
echo "1. vim"
echo "2. git"
echo "3. bash"
echo "@. all of above"
read -p "Enter the choice number: " action

# Execute commands based on the user's input
case "$action" in
    "1")
        echo "installing .vimrc in your home directory..."
        cp -f .vimrc ~
        ;;
    "2")
        echo "installing .gitconfig in your home directory..."
        cp -f .gitconfig ~
        ;;
    "3")
        echo "appending bashrc to '.bashrc' in your home directory..."
        cat bashrc >> ~/.bashrc
        ;;
    "@")
        echo "installing all config files"
        cp -f .vimrc ~
        cp -f .gitconfig ~
        cat bashrc >> ~/.bashrc
        ;;
    *)
        echo "Invalid action number"
        exit 1
        ;;
esac
