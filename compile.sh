CC="${CC:=clang}"
CFLAGS="${CFLAGS:=-Wall -Wpedantic -ggdb -std=c11}"
CDEFINES="${CDEFINES:=}"
CINCLUDES="${CINCLUDES:=}"
CFILES="${CFILES:=main.c}"
CLIBS="${CLIBS:=}"

EXEC="${EXEC:=main}"

if [ "`uname -s`" = "Linux" ]
then
    ECHO="/bin/echo -e"
else
    ECHO="echo -e"
fi

${ECHO} "--------COMPILING--------"
${ECHO} "${CC} ${CFLAGS} ${CDEFINES:-\b} ${CINCLUDES:-\b} ${CFILES} -o ${EXEC} ${CLIBS}"
${CC} ${CFLAGS} ${CDEFINES} ${CINCLUDES} ${CFILES} -o ${EXEC} ${CLIBS}
