#!/usr/bin/env bash

function guess_game {
    local correct=$(ls -1 | wc -l)
    local guess=-1
    
    echo "Guess how many files are in the current directory:"
    
    while [[ $guess -ne $correct ]]
    do
        read -p "Enter your guess: " guess
        if [[ $guess -lt $correct ]]
        then
            echo "Your guess is too low. Try again."
        elif [[ $guess -gt $correct ]]
        then
            echo "Your guess is too high. Try again."
        else
            echo "Congratulations! You guessed correctly."
        fi
    done
}

guess_game