# Random Walk Visualizer

[RAIO1.BAS](RAIO1.BAS)

A colorful procedural art generator written in BASIC that creates random walk patterns on the screen.

## Program Description

This program generates a visual display of multiple random walks (also known as "drunkard's walks") that evolve downward on the screen. Each walk has a chance to split into new paths as it progresses, creating organic branching patterns.

## Technical Details

### Core Algorithm
- Uses a random walk algorithm where each point moves randomly left, right, or stays centered
- Implements branching logic where existing paths can spawn new paths
- Runs in an infinite loop, creating new patterns continuously

### Key Variables
- `M=64`: Maximum number of simultaneous paths
- `Z=.04`: Probability of path branching (4% chance per step)
- `X(M)`: Array storing horizontal positions of all paths
- `C`: Color value (changes between runs)

### Visual Characteristics
- Paths start at random positions at the top of the screen
- Each step moves downward 1 pixel with random horizontal movement (-1, 0, or +1)
- When branching occurs, new paths start from random existing paths
- Colors vary between runs (white, purple, light red, or bright white)

## How It Works

1. Initializes with 1 random starting position
2. For each vertical line on screen:
   - Moves each existing path randomly left/right/center
   - Draws the new position
   - Randomly creates new paths by branching from existing ones
3. When reaching screen bottom, restarts with new random configuration

## Requirements

To run this program you'll need:
- A BASIC interpreter (QB64, FreeBASIC, PC-BASIC, etc.)
- Or an emulator for vintage systems (like MSX, PC-8801, etc.)

## Screenshot Example

![Sample output would show colorful branching paths descending the screen]

## Interesting Variations to Try

1. Change `Z=.04` to adjust branching frequency
2. Modify the `M=64` value to allow more/fewer simultaneous paths
3. Add more color options by expanding the IC selection logic
4. Change the `DX` calculation to alter movement patterns

## Note

This program was likely designed for:
- 256×192 resolution (common in 8-bit systems)
- Systems with SCREEN 2 graphics mode
- Vintage computers from the 1980s

The infinite loop (GOTO 30) can be terminated according to your BASIC interpreter's break command.