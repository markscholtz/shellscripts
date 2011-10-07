#!/bin/sh
# 1) Create a todo.txt file in the current directory.
# 2) Populate the todo.txt file using a template (stored in a directory
#    somewhere).
# 3) Fire up vim with the todo.txt file ready to be edited.

cat "`dirname $0`/todo.txt.template" > todo.txt
vim todo.txt +/item
cat todo.txt
