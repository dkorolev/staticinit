#include <iostream>

#include "lib_bar.h"

int main() {
  std::cout << "main" << std::endl;
  std::cout << "bar1=" << bar.Value() << std::endl;
  std::cout << "bar2=" << bar.Value() << std::endl;
}
