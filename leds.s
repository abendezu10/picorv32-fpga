.section .text
.global _start

.equ USER_IO_DIR, 0x01000000
.equ BIT_LED, 0x01000000
.equ BUTTON_MASK, 0x02000000

_start:
    # Set GPIO direction for LED (output)
    li t0, USER_IO_DIR       # Load address of USER_IO_DIR
    li t1, 1                # Set pin as output (adjust as needed)
    sw t1, 0(t0)            # Write to USER_IO_DIR

    # Turn on LED
    li t0, BIT_LED          # Load address of BIT_LED
    li t1, 1                # Set LED on (adjust as needed)
    sw t1, 0(t0)            # Write to BIT_LED

    # Infinite loop
loop:
    j loop                  # Keep program running

