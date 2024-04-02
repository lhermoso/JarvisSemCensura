#!/bin/bash

# Check if an argument was provided
if [ $# -eq 0 ]; then
    echo "No request provided. Usage: ./jarvis.sh 'your request here'"
    exit 1
fi

# The user request is the first argument to the script
user_request="$*"

# Categorize the request using ollama and jarvis
response=$(ollama run jarvis "Please categorize the following request as either a coding request or not. Respond with 'starcoder' if it is a coding request, and 'jarvis' if it is not. Do not include any additional text or explanation in your response. Request: ${user_request}")
response=$(echo "$response" | xargs)
# Based on the response, execute the appropriate ollama run command
if [ "$response" == "starcoder" ]; then
    ollama run starcoder "${user_request}"
elif [ "$response" == "jarvis" ]; then
    ollama run jarvis "${user_request}"
else
    echo "Unexpected response received: $response"
fi

