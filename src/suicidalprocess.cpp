#include <cstdlib>
#include <time.h>
#include <cstdio>
#include <csignal>
#include <sys/types.h>
#include <unistd.h>
#include <string>
#include <iostream>

int
main(int argc, 
     char *argv[], 
     char *env[]) {

  for (;;) { 
    int value1;
    int value2;
  
    ::srandom(time(NULL));

    switch (random() % 21) {
    case 0: /* Voluntary suicidal */
      ::exit(random() % 10);
      break;

    case 1: /* Dying by accident */
      value1 = value1 / (value2 - value2);
      break;

    case 2: /* auto-self murdered */
      ::kill(::getpid(), SIGKILL);
      break;

    case 3: /* suicidal by waiting */
      ::alarm(::random() % 5); /* waiting for almost 5 seconds */
      break;

    case 4: /* This is not correct */
      __asm__("sti");
      break;

    case 5: /* Killed by bad behaviour */
      value1 = *((int*) NULL);
      break;

    default:
      /* It is alive! */
      break;
    }

    int input;

    std::cin >> input;
    if (!std::cin) break;
    std::cout << (input + 1) << std::endl;
  }
  return 0; /* Muerte despues de una vida productiva */
}
