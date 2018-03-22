
#include <iostream>

#include "lib2.h"
#include "version.config.h"

int main()
{
   std::cout << "major: " << MONOREPO_BIN1_VERSION_MAJOR << std::endl;
   std::cout << "hello world from bin1\n";
   std::cout << call_lib2(2) << std::endl;
   return 0;
}
