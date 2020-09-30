
BINDIR=bin
.phony: all clean ${BINDIR}

all: ${BINDIR}/suicidalprocess ${BINDIR}/casinormalprocess ${BINDIR}/normalprocess

SRCDIR=src
OBJECTS=${SRCDIR}/suicidalprocess.o ${SRCDIR}/casinormalprocess.o \
${SRCDIR}/normalprocess.o
CXXFLAGS=-Wno-div-by-zero -Wall

${BINDIR}/suicidalprocess: ${SRCDIR}/suicidalprocess.o ${BINDIR}
	g++ -o $@ ${SRCDIR}/suicidalprocess.o

${BINDIR}/casinormalprocess: ${SRCDIR}/casinormalprocess.o ${BINDIR}
	g++ -o $@ ${SRCDIR}/casinormalprocess.o

${BINDIR}/normalprocess: ${SRCDIR}/normalprocess.o ${BINDIR}
	g++ -o $@ ${SRCDIR}/normalprocess.o

${BINDIR}:
	mkdir bin

${SRCDIR}/suicidalprocess.o: ${SRCDIR}/suicidalprocess.cpp

${SRCDIR}/casinormalprocess.o: ${SRCDIR}/casinormalprocess.cpp

${SRCDIR}/normalprocess.o: ${SRCDIR}/normalprocess.cpp

clean:
	rm -R -f ${SRCDIR}/*.o ${SRCDIR}/*.h~ ${SRCDIR}/*.cpp~
	rm -R ${BINDIR}
