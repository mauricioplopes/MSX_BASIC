# 🎰 Mega-Sena Number Generators in BASIC

![BASIC Programming](https://img.shields.io/badge/language-BASIC-blue)  
![Platform: MSX](https://img.shields.io/badge/platform-MSX-green)  
![Category: Utilities](https://img.shields.io/badge/category-utilities-orange)

[MEGASENA.BAS](MEGASENA.BAS)
[MEGA2.BAS](MEGA2.BAS)

Two distinct BASIC programs that generate random numbers for Mega-Sena (Brazilian lottery), each using different strategies to avoid duplicate numbers. Developed for MSX computers.

## 📖 Program Comparison

### `MEGASENA.BAS` (Array Validation Method)
- **Strategy**: Uses array iteration to check for duplicates
- **Process**:
  1. Generates random numbers (1-60)
  2. Verifies against previously generated numbers using nested loops
  3. Sorts results with bubble sort
- **Features**:
  - Simple array-based logic
  - Automatic retry on duplicate detection
  - Execution time measurement

### `MEGA2.BAS` (Memory-Mapped Method)
- **Strategy**: Uses memory addresses (&H9000+) as flags
- **Process**:
  1. Initializes all 60 numbers as available (POKE 255)
  2. Marks used numbers by setting memory to 0 (POKE 0)
  3. Sorts results with optimized bubble sort
- **Features**:
  - Faster duplicate prevention via direct memory access
  - More efficient number generation
  - Same sorting and timing functions

## 🚀 How to Run
### Supported Environments
- **MSX computers** or emulators (e.g., [OpenMSX](https://openmsx.org/))
- **BASIC environment** with PEEK/POKE support

### Execution Steps
1. Run either program (`RUN`)
2. Enter desired number count (6-20) when prompted
3. Program will display:
   - Sorted unique numbers
   - Execution time in seconds

## 📝 Key Differences
| Feature               | MEGASENA.BAS         | MEGA2.BAS            |
|-----------------------|----------------------|----------------------|
| **Duplicate Check**   | Array iteration      | Memory flags         |
| **Speed**             | Slower (nested loops)| Faster (direct memory)|
| **Memory Usage**      | Lower                | Higher (reserves 60 bytes) |
| **Code Complexity**   | Simpler              | More advanced        |

## 🔧 Technical Notes
- Both programs:
  - Use `RND(-TIME)` for better randomness
  - Measure execution time (`TIME/60` displays seconds)
  - Sort numbers in ascending order
  - Validate input (6-20 numbers)
- Portuguese interface (`BOA SORTE`, `DIGITE UM NUMERO`)

## 💡 Optimization Tips
- For `MEGASENA.BAS`: Reduce loop iterations by tracking used numbers
- For `MEGA2.BAS`: Change memory range if &H9000 conflicts with system
- To port to other systems: Replace `PEEK`/`POKE` with equivalent functions