#!/bin/bash

# Better signal handling
trap 'exit_handler' SIGINT SIGTERM

exit_handler() {
    echo -e "\nDo you want to:"
    echo "1) Start a new download"
    echo "2) Exit container"
    read -p "Enter your choice (1/2): " choice
    
    case $choice in
        1)
            echo "Starting new download session..."
            return
            ;;
        2)
            echo "Exiting container..."
            exit 0
            ;;
        *)
            echo "Invalid choice. Starting new download session..."
            return
            ;;
    esac
}

while true; do
    echo "Starting YouTube Downloader..."
    python download.py
    echo -e "\nReady for next download. Press Ctrl+C to show menu.\n"
    sleep 1
done