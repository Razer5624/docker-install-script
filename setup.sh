#!/bin/bash

options=("Docker" "Misskey" "Quit")

echo "Select the application you wish to install:"
select opt in "${options[@]}"; do
    case $opt in
        "Misskey")
            cd "$(dirname "$0")/misskey" || exit
            ./build.sh
            break
            ;;
        "Docker")
            cd "$(dirname "$0")/docker" || exit
            ./install.sh
            break
            ;;
        "Quit")
            echo "Exiting..."
            exit 0
            ;;
        *) echo "Invalid option $REPLY";;
    esac
done
