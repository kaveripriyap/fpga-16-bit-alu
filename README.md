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

  * Display the current modes in text labels as follows

    | FSM State | FSM State                     | X                   | Y                   | Output              |
    | -------   | ----------------------------- | ------------------- | ------------------- | ------------------- |
    |-ZVN       | MANUAL                        | 16b0000000000000000 | 16b0000000000000000 | 16b0000000000000000 |
    | a         | MANUAL - select input for A   | 16b0000000000000000 | 16b0000000000000000 | 16b0000000000000000 |
    | b         | MANUAL - select input for B   | 16b0000000000000000 | 16b0000000000000000 | 16b0000000000000000 |
    | res       | MANUAL - show results         | 16b0000000000000000 | 16b0000000000000000 | 16b0000000000000000 |
    | INIT      |                               | 16b0000000000000000 | 16b0000000000000000 | 16b0000000000000000 |
    | MANUAL    |                               | 16b0000000000000000 | 16b0000000000000000 | 16b0000000000000000 |
    | ADD1      | 0 + 0 = 0                     | 16b0000000000000000 | 16b0000000000000000 | 16b0000000000000000 |
    | ADD2      | AUTO - ADD Test case 2        | 16b0000000000000000 | 16b0000000000000000 | 16b0000000000000000 |
    | ADD3      | AUTO - ADD Test case 3        | 16b0000000000000000 | 16b0000000000000000 | 16b0000000000000000 |
    | ADD4      | AUTO - ADD Test case 4        | 16b0000000000000000 | 16b0000000000000000 | 16b0000000000000000 |
    | ADD5      | AUTO - ADD Test case 5        | 16b0000000000000000 | 16b0000000000000000 | 16b0000000000000000 |
    | SUB1      | AUTO - ADD Test case overflow | 16b0000000000000000 | 16b0000000000000000 | 16b0000000000000000 |
    | SUB2      | AUTO - SUB Test case 1        | 16b0000000000000000 | 16b0000000000000000 | 16b0000000000000000 |
    | SUB3      | AUTO - SUB Test case overflow | 16b0000000000000000 | 16b0000000000000000 | 16b0000000000000000 |
    | SUB4      | AUTO - AND Test case 1        | 16b0000000000000000 | 16b0000000000000000 | 16b0000000000000000 |
    | SUB5      | AUTO - AND Test case 2        | 16b0000000000000000 | 16b0000000000000000 | 16b0000000000000000 |
    | SUB6      | AUTO - OR Test case           | 16b0000000000000000 | 16b0000000000000000 | 16b0000000000000000 |
    | MUL1      |                               | 16b0000000000000000 | 16b0000000000000000 | 16b0000000000000000 |
    | MUL2      |                               | 16b0000000000000000 | 16b0000000000000000 | 16b0000000000000000 |
    | MUL3      |                               | 16b0000000000000000 | 16b0000000000000000 | 16b0000000000000000 |
    | MUL4      |                               | 16b0000000000000000 | 16b0000000000000000 | 16b0000000000000000 |
    | xor       | AUTO - XOR Test case          | 16b0000000000000000 | 16b0000000000000000 | 16b0000000000000000 |
    | ldr       | AUTO - LDR Test case          | 16b0000000000000000 | 16b0000000000000000 | 16b0000000000000000 |
    | shl       | AUTO - SHL Test case          | 16b0000000000000000 | 16b0000000000000000 | 16b0000000000000000 |
    | shr       | AUTO - SHR Test case          | 16b0000000000000000 | 16b0000000000000000 | 16b0000000000000000 |
    | sra1      | AUTO - SRA Test case 1        | 16b0000000000000000 | 16b0000000000000000 | 16b0000000000000000 |
    | sra2      | AUTO - SRA Test case 2        | 16b0000000000000000 | 16b0000000000000000 | 16b0000000000000000 |
    | ceq       | AUTO - CMPEQ Test case        | 16b0000000000000000 | 16b0000000000000000 | 16b0000000000000000 |
    | clt       | AUTO - CMPLT Test case        | 16b0000000000000000 | 16b0000000000000000 | 16b0000000000000000 |
    | cle       | AUTO - CMPLE Test case        | 16b0000000000000000 | 16b0000000000000000 | 16b0000000000000000 |

## ALU Testing
### Manual Testing

### Automatic Testing

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
