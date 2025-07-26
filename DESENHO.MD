# Retro Drawing Tool

A simple MSX-BASIC drawing program that creates pixel art using joystick/gamepad controls.

[DESENHO.BAS](DESENHO.BAS)

## Program Description

This program turns your computer into a basic pixel drawing tool with:
- Movement controlled by directional inputs
- Toggleable drawing/erasing modes
- Thick brush strokes (3x3 pixel blocks)

## Features

### Drawing Controls
- **Arrow Keys/Joystick**: Move the cursor
- **Hold A**: Switch to eraser mode (color 4 - typically dark red/magenta)
- **Hold D**: Switch back to drawing mode (color 15 - bright white)
- **Space**: Exit the program

### Brush Characteristics
- Draws in 3x3 pixel blocks for thicker lines
- Immediate visual feedback
- Simple toggle between draw/erase modes

## Code Explanation

```basic
1 CLS
2-10: Display instructions screen
11: Initialize SCREEN 2 graphics mode (256x192)
20-30: Set starting position (X=128, Y=100)
40: Set default color (15 = white)
50-54: Initial cursor drawing
80: Read joystick direction (STICK(0))
90-120: Movement logic (up/down/left/right)
130-210: Draw 3x3 pixel block
220: Check for mode changes
300-330: Input handling subroutine