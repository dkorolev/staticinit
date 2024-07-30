#pragma once

struct Bar final {
  int i = 0;
  Bar();
  int Value() {
    return ++i;
  }
};

extern Bar bar;
