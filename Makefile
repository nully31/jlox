# Makefile for jlox

PACKAGESRCDIR := src/com/craftinginterpreters
LOXDIR := $(PACKAGESRCDIR)/lox
TOOLDIR := $(PACKAGESRCDIR)/tool
BINDIR := bin

LOXSOURCES := $(wildcard $(LOXDIR)/*.java)
TOOLSOURCES := $(wildcard $(TOOLDIR)/*.java)

# This should be temporary
EXCLUDE := $(LOXDIR)/AstPrinter.java
LOXSOURCES := $(filter-out $(EXCLUDE), $(LOXSOURCES))

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