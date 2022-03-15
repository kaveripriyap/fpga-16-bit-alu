# fpga-16-bit-alu

Programmed a 16 bit ALU on Alchitry IDE in Lucid HDL and tested the code on the Alchitry AU FPGA Development Board that contains the Xilinx Artix 7 XC7A35T-1C FPGA with over 33,000 logic cells and 256MB of DDR3 RAM. 

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
| AND     | 011000     |
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

## ALU Testing
### Manual Testing

### Automatic Testing

