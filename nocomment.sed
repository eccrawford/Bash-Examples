#!/bin/bash

#nocomment.sed - this program removes one line C comments from a file

/^[[:blank:]]*\/\/.*/d # // comments that start a line
/^[[:blank:]]*\/\*.*\*\//d # /* */ comments that start a line

s/(^.*)\/\/.*/\1/ # // comments with non white spaces before them
s/(^.*)\/\*.*\*\//\1/ # /* */  comments with non white spaces before them
