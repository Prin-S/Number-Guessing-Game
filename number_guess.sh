#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=users -t -c"

# Generate random number between 1 and 1,000 (inclusive)
RANDOM_NUM=$(($RANDOM % 1000 + 1))

# Ask user to enter username
echo -e "\nEnter your username:"
read USERNAME

# Check if username exists
EXISTS=$($PSQL "SELECT * FROM users WHERE username='$USERNAME'")
if [[ -z $EXISTS ]]
then
  NEW_USER=$($PSQL "INSERT INTO users(username, games_played, best_game) VALUES ('$USERNAME', 0, 0)")
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
else
  OLD_USER=$($PSQL "SELECT * FROM users WHERE username='$USERNAME'")
  echo $OLD_USER | while read ID PIPE USER PIPE GAMES PIPE BEST
  do
    echo -e "\nWelcome back, $USER! You have played $GAMES games, and your best game took $BEST guesses."
  done
fi

# Ask user to guess a number
echo -e "\nGuess the secret number between 1 and 1000:"
COUNT=0
PLAYED=$($PSQL "SELECT games_played FROM users WHERE username='$USERNAME'")
BEST_SCORE=$($PSQL "SELECT best_game FROM users WHERE username='$USERNAME'")

READ_GUESS() {
  # In case there is an argument
  if [[ $1 ]]
  then
    echo -e "\n$1"
  fi

  read GUESS

  GUESSING_PROCESS() {
    # If the guess is higher than the correct number
    if (( $GUESS > $RANDOM_NUM ))
    then
      COUNT=$(($COUNT + 1))
      READ_GUESS "It's lower than that, guess again:"
    # If the guess is lower than the correct number
    elif (( $GUESS < $RANDOM_NUM ))
    then
      COUNT=$(($COUNT + 1))
      READ_GUESS "It's higher than that, guess again:"
    # If the guess is correct
    else
      COUNT=$(($COUNT + 1))
      # Check if the number of guesses is lower than the user's best score / or if best score is 0 (first time playing)
      if (( $COUNT < $BEST_SCORE || $BEST_SCORE == 0 ))
      then
        # Make current number of tries the best score
        BEST_SCORE=$COUNT
      fi
      PLAYED=$(($PLAYED + 1))
      UPDATE_DATA=$($PSQL "UPDATE users SET games_played=$PLAYED, best_game=$BEST_SCORE WHERE username='$USERNAME'")
      echo -e "\nYou guessed it in $COUNT tries. The secret number was $RANDOM_NUM. Nice job!"
    fi
  }

  # Check if guess is an INT
  if [[ $GUESS =~ [0-9]+ && ! $GUESS =~ ^.*[.].*$ ]]
  then
    # Start the guessing process
    GUESSING_PROCESS
  else
    READ_GUESS "That is not an integer, guess again:"
  fi

}

READ_GUESS