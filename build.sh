#!/bin/bash

CC="gcc"
CFLAGS="-Wall -Wpedantic -ggdb -std=c99"
CDEFINES=""
CINCLUDES=""
CFILES="main.c"
CLIBS=""

EXEC="main"

$CC $CFLAGS $CDEFINES $CINCLUDES $CFILES -o $EXEC $CLIBS
./$EXEC
