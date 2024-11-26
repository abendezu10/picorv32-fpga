.section .text
.global _start

_start:
    # Initialize the stack pointer to the top of the memory
    li sp, 0x00000FFC       # Load immediate value 0x00000FFc into sp (stack pointer)
    
    li x3,0            # is the register storing the 
    li x4, 25000000
    li x5, 256
    li x6, 0

_loop:
  jal ra, _counter
   
  addi x6,x6,1

  bne x6,x5, _loop

_counter:
  addi x3,x3, 1
  bne x3,x4, _counter
  addi x3,x0,0 
  ret
  

_halt:
  j _halt
