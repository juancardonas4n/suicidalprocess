
BINDIR=bin
.phony: all clean ${BINDIR}

all:
SRCDIR=src
OBJECTS=${SRCDIR}/suicidalprocess.o
CXXFLAGS=-Wno-div-by-zero -Wall

all: ${BINDIR}/suicidalprocess

${BINDIR}/suicidalprocess: ${OBJECTS} ${BINDIR}
	g++ -o $@ ${OBJECTS}

${BINDIR}:
	mkdir bin

${SRCDIR}/suicidalprocess.o: ${SRCDIR}/suicidalprocess.cpp

clean:
	rm -R -f ${SRCDIR}/*.o ${SRCDIR}/*.h~ ${SRCDIR}/*.cpp~
	rm -R ${BINDIR}
