#!/bin/bash

target=$(( RANDOM % 100) +1)
attempts=0
max-attempts=10
guess=0

echo "welcome to the guessing game!"
echo "i have a number between 1 and 100"

while [ "$guess" -ne "$target" ] && [ "$attempts" -lt "$max_attempts" ]; do
        read -p "enter your guess: " guess

((attempts++))

        if [[ ! "$guess" =~ ^[0-9]+$ ]]; then
                echo "please enter a valid number"
        elif [ "$guess" -lt "$target" ]; then
                echo "Too low! (Attempt: $attempts)"
        elif [ "$guess" -gt "$target" ]; then
                echo "Too high! (Attempt: $attempts)"
        else
                echo "Congratulations! You guessed it in $attempts attempts."
        fi
done
elif [ "$guess" -lt "$target" ]; then
        echo "Too low! (Attempt: $attempts)"
elif [ "$guess" -gt "$target" ]; then
echo "Too high! (Attempt: $attempts)"
else
echo "Congratulations! You guessed it in $attempts attempts."
fi
done