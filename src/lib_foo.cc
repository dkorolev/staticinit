#include <iostream>

struct Foo {
  Foo() {
    std::cout << "foo0" << std::endl;
  }
};

Foo foo;
