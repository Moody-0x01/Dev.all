#!/bin/python3

from sys import argv
from os import mkdir, path

MAKE_FILE="""
CXX=c++
NAME=name
SRCS=
OBJS=$(SRCS:%.cpp=%.o)
INCLUDE=.
CXXFLAGS=-Wall -Wextra -Werror -std=c++98 -I$(INCLUDE)
MAIN=main.cpp

all: $(NAME)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $^ -o $@
$(NAME): $(OBJS)
	$(CXX) $(CXXFLAGS) $(OBJS) $(MAIN) -o $@
clean:
	$(RM) $(OBJS)
fclean: clean
	$(RM) $(NAME)
re: fclean all
.PHONY: re fclean clean bonus
"""
def write_make_file(dir: str):
    print("+ write make file: ", dir)
    with open(f"{dir}/Makefile", "w+") as f:
        f.write(MAKE_FILE)

def main() -> int:
    if len(argv) < 2:
        print("U need to provide the count!")
        print(argv[0], " <count>")
        exit(1)
    count: int = int(argv[1])
    if not count:
        exit(1)
    for i in range(count):
        name = f"ex0{i}"
        if i > 9:
            name = f"ex{i}"
        print("+ Making dir: ", name)
        if not path.exists(name):
            mkdir(name)
        write_make_file(name)
    return 0
main()
