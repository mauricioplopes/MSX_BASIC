# Number Guessing Game

[NUMEROS.BAS](NUMEROS.BAS)

A classic number guessing game written in BASIC where the player tries to guess a randomly selected number.

## Game Description

The computer selects a random number between 1 and 100, and the player must guess the number in as few attempts as possible. After each guess, the computer indicates whether the target number is higher or lower than the guess.

## Game Features

- Random number generation (1-100)
- Attempt counter
- High/low feedback after each guess
- Option to play again
- Simple text-based interface

## How to Play

1. The computer selects a random number (not shown)
2. Enter your guess when prompted
3. Receive feedback ("MAIOR" [Higher] or "MENOR" [Lower])
4. Continue guessing until correct
5. See your total number of attempts
6. Choose to play again (S) or quit (N)

## Code Explanation

```basic
10 CLS                     ' Clear screen
20 X=INT(RND(-TIME)*100)+1 ' Generate random number 1-100
30 T=0                     ' Initialize attempt counter
40-60: Print instructions and prompt for guess
70 INPUT N                 ' Get player's guess
80 T=T+1                   ' Increment attempt counter
90-100: Compare guess to target number
110: Correct guess handler (shows attempts)
140-160: Play again logic
180-210: Higher/lower feedback handlers