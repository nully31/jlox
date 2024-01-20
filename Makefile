# Makefile for jlox

SRCDIR := src/com/craftinginterpreters/lox
BINDIR := bin

SOURCES := $(wildcard $(SRCDIR)/*.java)

TARGET := jlox
CLASSPATH := $(BINDIR)

all: $(TARGET)

$(TARGET): $(SOURCES)
	@ mkdir -p $(BINDIR)
	javac -d $(BINDIR) -cp $(CLASSPATH) $^

clean:
	@ rm -rf $(BINDIR)

.PHONY: all clean