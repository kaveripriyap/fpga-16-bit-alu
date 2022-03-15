# fpga-16-bit-alu

Programmed a 16 bit ALU on Alchitry IDE in Lucid HDL and tested the code on the Alchitry AU FPGA Development Board that contains the Xilinx Artix 7 XC7A35T-1C FPGA with over 33,000 logic cells and 256MB of DDR3 RAM. 

### I/O Configuration

* IO Buttons:

  * UP: select confirmation for ALUFN input opcode
  * CENTER: 
  * DOWN: press to exit **AUTO** mode and go back to **MANUAL**
  * LEFT: Press to reset the ALU.
  * RIGHT: Switch to **AUTO** mode.

* DIP Switches:
  
  * **io_dip[15:0]** for 16 bit inputs X and Y in the **MANUAL** mode.
  * **io_dip[21:16]** for 6 bit ALUFN input in **MANUAL** mode
  * Flip up **io_dip[23]** (leftmost dip switch) to switch to **MANUAL** mode. 

* IO LEDs:

  * Row 2: [7:5] are assigned for Z, V, N outputs respectively for **AUTO** & **MANUAL** modes
  * Row 1 & Row 0:
  *  The 16bits outputs from ALU in **MANUAL** mode.
  *  Start from Row[0] [0] to Row[2] [0] to show the output status for the 17 test cases in **AUTO** mode

* Seven Seg Display


## ALU Testing
### Manual Testing

### Automatic Testing

[![1D Checkoff FGPA 16-bit ALU Automated Testing](https://img.youtube.com/vi/OhLd1niKx9Q/0.jpg)](https://www.youtube.com/watch?v=OhLd1niKx9Q)

## Core Modules/Files

### Arithmetic Module (arith_16.luc)

### Boolean Module (bool_16.luc)

### Comparator Module (comp_16.luc)

### Shifter Module (shift_16.luc)

### ALU Module (alu_16.luc)

### Arithmetic Module (au_top.luc)

### ALUFN OPCODE:
 
|Operation|ALUFN[21:16]|
|---------|------------|      
| ADD     | 000000     |
| SUB     | 000001     |
| MUL     | 011000     |
| OR      | 011110     |
| XOR     | 010110     |
| “A”     | 011010     |
| SHL     | 100000     |
| SHR     | 100001     |
| SRA     | 100011     |
| CMPEQ   | 110011     |
| CMPLT   | 110101     |
| CMPLE   | 110111     |
| MUL     | 100010     |
