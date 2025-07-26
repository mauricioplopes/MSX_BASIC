# War Game Simulation

[WAR1.BAS](WAR1.BAS)

A turn-based strategy game written in BASIC where you command troops to battle against computer-controlled enemies.

## Game Overview

This program simulates a simple war game on an 8x8 grid where:
- You control friendly troops (T) and a base (O)
- The computer controls enemy troops (Y) and a base (X)
- The objective is to eliminate the opposing base while protecting your own

## Features

- **Randomized Setup**: Bases and troops are placed randomly at game start
- **Turn-Based Gameplay**: Alternate moves between player and computer
- **Combat System**: Strength-based battles with calculated victory chances
- **Barriers**: Obstacles (B) that block movement
- **Force Calculation**: Units gain strength from adjacent friendly units

## How to Play

### Game Elements
- `O`: Your base (higher strength)
- `T`: Your troops
- `X`: Enemy base
- `Y`: Enemy troops
- `B`: Barriers (cannot be moved through)
- `.`: Empty space

### Controls
1. On your turn:
   - Enter coordinates of your troop/base to move
   - Enter destination coordinates (adjacent squares only)
2. The computer will then make its move automatically

### Combat Rules
- When attacking, the stronger force has better chances to win
- Unit strength is calculated as:
  - Base (O/X): 2 + adjacent friendly troops
  - Troops (T/Y): 1 + adjacent friendly troops (including self)
- Victory chance is 60% ± (strength difference × 10%)

## Technical Details

- Written in BASIC
- Originally designed to run on 8-bit systems
- Uses simple RNG for game setup and combat resolution
- Implements a force matrix system for combat calculations

## Requirements

To run this program, you'll need:
- A BASIC interpreter (such as QB64, FreeBASIC, or an emulator like PC-BASIC)
- Or an 8-bit system emulator (for authentic experience)

## How to Run

1. Copy the program code
2. Paste into your BASIC interpreter
3. Run the program
4. Follow on-screen instructions

## Game Outcome

The game ends when either:
- Your troops capture the enemy base (X)
- Enemy troops capture your base (O)

## Notes

This program was originally written for vintage computer systems and maintains that classic style. The simple AI makes strategic moves but can be predictable.