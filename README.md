# PicoRV32-FPGA
Implementing a PicoRV32 core on a DE0-Nano SoC FPGA

## What I Did?

As of November 26th, I was able to implement the core onto the FPGA but struggled with loading the instructions onto the memory devices. I tried using the DDR3 controller on the FPGA, but it was too complex, and the Quartus tool template seemed incorrect for the type of DDR3 controller I had on the FPGA. I will have to code my own controller for this device. 

For now, I settled on creating a BRAM block inside the FPGA and just hardcoded the instructions.

I used the `riscv-unknown-elf` toolchain to convert my RV32I assembly code into machine code, then wrote down the instructions in each word block. The instructions incremented the `x6` register of the CPU up to 256, which was then displayed in binary form using 8 LEDs on the FPGA.

## Simulation
![image](https://github.com/user-attachments/assets/0d903929-7daa-44f5-a460-0e85329f0a3b)

To test and debug the implementation, I use the Vivado simulator, running these commands in the terminal will allow you to run the simulator without have to choose a FPGA part.
```bash
xvlog picorv32.v top.v top_tb.v
xelab top_tb -debug typical
xsim top_tb -gui
```

## Execution
The execution of the instructions in video form:

https://github.com/user-attachments/assets/6cccdb8c-2ccf-4036-9cd3-80e247ef4a5e

Not sure if it is slow due to amount of instructions that are running or miscalculated the amount of time it would take for the counter to reach 50,000,000.

## Challenges
I initially tried to implement the other elements of the SoC but ran into challenges with their implementation. Understanding their functions and how to implement them would take more time. Additionally, reading the documentation for the PicoRV32 was extremely difficult, as the code was hard to read and understand.

## Future Work
I plan to implement a UART protocol to use the GPIO pins. However, I need to learn how to utilize the DDR3 controller and work with Makefiles, so I can operate directly from the HPS that the FPGA provides.
