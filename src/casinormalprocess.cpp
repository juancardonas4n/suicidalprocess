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

    int input;

    std::cin >> input;
    if (!std::cin) break;
    std::cout << (input + 1) << std::endl;
  }
  return 0; /* Muerte despues de una vida productiva */
}
