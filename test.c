int _start() {
    volatile int *led = (int *)0x03000000; // LED memory-mapped register
    for (int i = 0; i < 10; i++) {
        *led = i; // Increment LED output
        for (volatile int j = 0; j < 100000; j++); // Delay
    }
    return 0;
}

