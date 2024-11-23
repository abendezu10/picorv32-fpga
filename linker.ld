/* Linker Script for PicoRV32 on Cyclone V */

MEMORY
{
    /* Define memory regions */
    FLASH (rx) : ORIGIN = 0x00010000, LENGTH = 64K   /* Code region */
    RAM   (rwx) : ORIGIN = 0x20000000, LENGTH = 8K   /* Data region */
}

SECTIONS
{
    /* Code Section */
    .text : {
        *(.text*)          /* All .text sections (code) */
        *(.rodata*)        /* Read-only data (strings, constants) */
    } > FLASH              /* Map to FLASH */

    /* Initialized Data Section */
    .data : {
        *(.data*)          /* All .data sections (initialized variables) */
    } > RAM AT > FLASH     /* Load in FLASH, copy to RAM at runtime */

    /* Uninitialized Data Section (Zero Initialized) */
    .bss : {
        *(.bss*)           /* All .bss sections (zero-initialized data) */
        *(COMMON)          /* Common variables (uninitialized globals) */
    } > RAM

    /* Stack Section */
    _stack_start = ORIGIN(RAM) + LENGTH(RAM);  /* Top of RAM for stack */
}

