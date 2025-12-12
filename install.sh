#!/bin/bash

# Check if esc is already installed
if ! command -v esc &> /dev/null
then
    # Check if espanso is installed
    if ! command -v espanso &> /dev/null
    then
        echo "Espanso is not installed."
        echo "Please install Espanso first by following the instructions at https://espanso.org/docs/install/linux/"
        exit 1
    else
        # Install esc
        echo "Installing Espanso Shortcode Manager..."
        curl -fsSl https://raw.githubusercontent.com/pptoolbox/esc/main/esc -o /usr/local/bin/esc
        chmod +x /usr/local/bin/esc
        echo "Espanso Shortcode Manager installed successfully."
        exit 0
    fi
else
    echo "Espanso Shortcode Manager is already installed."
    exit 0
fi