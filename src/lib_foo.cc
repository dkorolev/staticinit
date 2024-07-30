#include <iostream>

struct Foo {
  Foo() {
    std::cout << "Foo()" << std::endl;
  }
};

Foo foo;
