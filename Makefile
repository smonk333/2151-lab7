# Compiler and flags
JCC = javac
JFLAGS = -g

# Source and output directories
SRCDIR = src/cpsc2150/listDec
BINDIR = bin

# Main class
MAIN = cpsc2150.listDec.ShuffleApp

# List of all Java source files
SOURCES = $(wildcard $(SRCDIR)/*.java)

# Targets
default: compile

compile: $(SOURCES)
	$(JCC) $(JFLAGS) -d $(BINDIR) $(SOURCES)

run:
	java -cp $(BINDIR) $(MAIN)

clean:
	rm -rf $(BINDIR)/*