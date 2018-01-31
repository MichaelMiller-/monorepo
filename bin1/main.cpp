
#include <iostream>

#include "version.config.h"

int main()
{
   std::cout << "major: " << MONOREPO_BIN1_VERSION_MAJOR << std::endl;
   std::cout << "hello world from bin1\n";
   return 0;
}
