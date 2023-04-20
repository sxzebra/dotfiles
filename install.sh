#!/bin/bash

# Prompt the user to select an action
echo "Please select which dotfile to install:"
echo "1. vim"
echo "2. git"
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
    *)
        echo "Invalid action number"
        exit 1
        ;;
esac
