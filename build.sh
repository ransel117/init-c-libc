#!/bin/sh

export CC="clang"
export CFLAGS="-Wall -Wpedantic -ggdb -std=c11"
export CDEFINES=""
export CINCLUDES=""
export CFILES="main.c"
export CLIBS=""

export EXEC="main"

./compile.sh
./run.sh
