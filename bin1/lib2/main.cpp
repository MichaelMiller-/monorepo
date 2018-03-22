#include "lib2.h"
#include "lib1.h"

std::string call_lib2(int value)
{
   return "value from lib2: " + std::to_string(call_lib1(value));
}