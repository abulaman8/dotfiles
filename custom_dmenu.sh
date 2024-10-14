#!/bin/bash

# Define a function to execute the command entered in dmenu
execute_command() {
    # Use eval to run the entered command
    eval "$1"
}

# Use dmenu to prompt the user for a command and run it
selected_command=$(dmenu -p "Enter a command:")

# Check if the user entered a command and execute it
if [ -n "$selected_command" ]; then
    execute_command "$selected_command"
fi

