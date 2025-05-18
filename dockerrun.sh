#!/bin/bash

trap "exit" SIGINT SIGTERM

while true; do
    echo "Starting YouTube Downloader..."
    python download.py
    echo -e "\nReady for next download. Press Ctrl+C to exit.\n"
    sleep 1
done