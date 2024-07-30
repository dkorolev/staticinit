#!/bin/bash

set -e

make

S=""
for i in $(./.current_debug/main | sort) ; do S="$S $i" ; done

echo "Result: ${S:1}"

GOLDEN='Bar() bar1=1 bar2=2 Foo() main()'

if [ "${S:1}" == 'Bar() bar1=1 bar2=2 Foo() main()' ] ; then
  echo "Test: PASSED"
else
  echo "Test: FAILED"
  echo "ACTUAL: '${S:1}'"
  echo "GOLDEN: '$GOLDEN'"
  exit 1
fi
