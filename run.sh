#!/bin/bash

set -e

if ! make ; then
  echo
  echo "MAKE FAILED 2"
  echo
  cat CMakeLists.txt
  exit 1
fi

S=""
for i in $(./.current_debug/main | sort) ; do S="$S $i" ; done

echo "Result: ${S:1}"

GOLDEN='bar0 bar1=1 bar2=2 foo0 main'

if [ "${S:1}" == "$GOLDEN" ] ; then
  echo "Test: PASSED"
else
  echo "Test: FAILED"
  echo "ACTUAL: '${S:1}'"
  echo "GOLDEN: '$GOLDEN'"
  exit 1
fi
