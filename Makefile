# Makefile for general c++ programs
# Daniel Garcia; ddg160030

# Compiler name
# use gcc for c programs
CC=gcc
CXX=g++
LD=g++
RM=rm -f

# Flags for all compilation commands
CFLAGS=-std=c99 -Wsign-conversion -Wall -Wextra -Wpedantic -g
CXXFLAGS=-std=c++11 -Wsign-conversion -Wall -Wextra -Wpedantic -g 
CPPFLAGS=
LDFLAGS=-g $(LDLIBS)
LDLIBS=

# Set of dependencies: put .h files here
DEPS=

#
SRCS=main.cpp foo.cpp
OBJ=$(subst .cpp,.o,$(SRCS))

# Name of the executable
OUTPUT=a.out

all: $(OUTPUT)

depend:.depend

.depend: $(SRCS)
	$(RM) ./.depend
	$(CXX) $(CPPFLAGS) -MM $^>>./.depend;

$(OUTPUT): $(OBJ)
	$(CXX) -o $@ $(OBJ) $(LDFLAGS)

clean:
	$(RM) $(OBJ) $(OUTPUT) ./.depend

include .depend
