# Euler's Number Visualizer

[EULER.BAS](EULER.BAS)

A MSX-BASIC program that graphically demonstrates the convergence of Euler's number (e ≈ 2.71828) through its limit definition.

## Program Description

This program plots the mathematical sequence (1 + 1/n)ⁿ as n approaches infinity, which converges to Euler's number (e). The visualization helps understand how the sequence approaches this fundamental mathematical constant.

## Mathematical Concept

The program illustrates:

$\lim_{n \to \infty} \left(1 + \frac{1}{n}\right)^n = e \approx 2.718281828459...$


## Features

- Customizable graph range (min/max values)
- Adjustable increment step
- Real-time plotting of the convergence
- SCREEN 2 graphics (256×192 resolution)
- X-axis reference line

## Usage Instructions

1. Run the program
2. Input parameters when prompted:
   - **MAXIMO**: Maximum Y-value (e.g., 3.0)
   - **MINIMO**: Minimum Y-value (e.g., 2.0)
   - **INCREMENTO**: Step size (e.g., 0.1)
3. View the graph plotting the sequence
4. Press **Q** to quit after completion

## Code Explanation

```basic
10-40: Program initialization
50-100: User input for graph parameters
110: Initialize SCREEN 2 graphics
120-140: Draw X-axis reference line
141-144: Calculate and plot initial point
150-200: Main graphing loop
210: Wait for Q key to exit