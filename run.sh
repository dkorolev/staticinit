#!/bin/bash

set -e

make

S=""
for i in $(./.current_debug/main | sort) ; do S="$S $i" ; done

echo "Result: ${S:1}"
[ "${S:1}" == 'Bar() bar1=1 bar2=2 Foo() main()' ]
