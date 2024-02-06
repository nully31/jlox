# Makefile for jlox

PACKAGESRCDIR := src/com/craftinginterpreters
LOXDIR := $(PACKAGESRCDIR)/lox
TOOLDIR := $(PACKAGESRCDIR)/tool
BINDIR := bin

LOXSOURCES := $(wildcard $(LOXDIR)/*.java)
TOOLSOURCES := $(wildcard $(TOOLDIR)/*.java)

CLASSPATH := $(BINDIR)

all: jlox

jlox: $(LOXSOURCES)
	@ mkdir -p $(BINDIR)
	javac -d $(BINDIR) -cp $(CLASSPATH) $^

tool: $(TOOLSOURCES)
	@ mkdir -p $(BINDIR)
	javac -d $(BINDIR) -cp $(CLASSPATH) $^

clean:
	@ rm -rf $(BINDIR)

.PHONY: clean