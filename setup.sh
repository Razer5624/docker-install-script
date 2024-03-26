#!/bin/bash

options=("Docker" "PeerTube" "Misskey" "Quit")

echo "Select the application you wish to install:"
select opt in "${options[@]}"; do
    case $opt in
        "Misskey")
            cd "$(dirname "$0")/misskey" || exit
            bash build.sh
            break
            ;;
        "Docker")
            cd "$(dirname "$0")/docker" || exit
            bash install.sh
            break
            ;;
        "PeerTube")
            cd "$(dirname "$0")/peertube" || exit
            bash build.sh
            break
            ;;
        "Quit")
            echo "Exiting..."
            exit 0
            ;;
        *) echo "Invalid option $REPLY";;
    esac
done