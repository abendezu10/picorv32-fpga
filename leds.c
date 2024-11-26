#include <stdio.h>

int main(void) {

  int counter = 0;

  // 2^8 = 256; therefore the leds will be able to show 256 differne numbers
  int num = 0;

  while(num != 256){
    num = num + 1;
    while(counter != 50000000){
      counter = counter + 1;
    }

  }


  return 0;
}
