# Paths
SRCDIR := src
OBJDIR := build
PROGRAM := opt65
SRC := $(wildcard $(SRCDIR)/*.c)
PRG := $(OBJDIR)/$(PROGRAM)

# Commands
CC := gcc
RM := rm -rf
MKDIR := mkdir -p

# Flags
CFLAGS := -Wall -Wpedantic
LDFLAGS := -O2

# Targets
.PHONY: all prg clean

all: prg
prg: $(PRG)

$(PRG): $(SRC)
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)

$(SRC): | $(OBJDIR) $(DSTDIR)

$(OBJDIR):
	$(MKDIR) $(OBJDIR)

clean:
	$(RM) $(OBJDIR) $(wildcard $(SRCDIR)/*.o)
