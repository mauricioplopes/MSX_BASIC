# 📈 Sine Wave Plotter in BASIC  

![BASIC Programming](https://img.shields.io/badge/language-BASIC-blue)  
![Platform: MSX](https://img.shields.io/badge/platform-MSX-green)  
![Category: Graphics](https://img.shields.io/badge/category-graphics-ff69b4)  

[SENO1.BAS](SENO1.BAS)

A classic **BASIC program** that dynamically plots a sine wave graph based on user-defined frequency. Originally written for **MSX computers** with **SCREEN 2** graphics mode (256×192 resolution), this program demonstrates simple mathematical visualization in vintage computing environments.  

## 📖 Overview  

The program:  
1. **Prompts the user** to input a frequency value (`F`).  
2. **Draws X and Y axes** with proper labels (`X`, `Y`, and origin `0`).  
3. **Plots a smooth sine wave** (`Y = sin(F·X)`) across the screen.  
4. **Displays the frequency** in cycles and waits for the user to press **`Q`** to exit.  

### Key Features  
✔ **Interactive input** – Adjust the wave frequency dynamically.  
✔ **Clean graphical output** – Properly scaled axes and smooth curve plotting.  
✔ **User-friendly** – Clear on-screen instructions (in Portuguese).  
✔ **Efficient rendering** – Uses `LINE` commands for fast drawing.  

## 🚀 How to Run  
### Supported Environments  
- **MSX computers** (or emulators like [OpenMSX](https://openmsx.org/))  
- **BASIC interpreter** with **SCREEN 2** graphics support.  

### Steps  
1. Enter the provided BASIC code into the interpreter.  
2. Run the program (`RUN`).  
3. When prompted (`FREQUENCIA?`), enter a numeric frequency value.  
4. Observe the sine wave plotted in real-time.  
5. Press **`Q`** to quit.  

## 📝 Notes  
- The program uses **Portuguese prompts** (`FREQUENCIA`, `ciclos`, `Tecle Q para sair`).  
- For best results, run on original hardware or an accurate emulator.  
- The graph is centered at `Y=84` (midpoint of 192px height).  