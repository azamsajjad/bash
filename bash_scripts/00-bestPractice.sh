# Use Comments
# Proper Naming Convention for Variables
# Local or Readonly Variables
# Use quotes for Strings
# Exit script with return code
# Consider Options for logging
# Use Conditions to check requirements (check if file exists before using it)
# Use Functions to reuse the code
# Use Indentation
# Perform Dry Run for shell script - bash -n script.sh
# enable debugging - set -x
# exit when script tries to use undeclared variables -  set -u  -OR-  set -o nounset 
# use to make your script exit when a command fails  -  set -e  -OR-  set -o errexit


VIM
gg - jump to top of file
G - jump to bottom of file
* - search this word in forward
# - search this word backword
:%s/Haider/Hyder/g  
r - replace a character where cursor is
x - delete a character where cursor is
15dd - delete 15 lines below the cursor
dd - delete/cut a line
p - paste a line below
P - paste above
:e! undo all changes
u - undo
R - redo
o - insert below
O - insert above
I - insert mode at start of line
A - insert mode at end of line

v - select a portion of text - y - copy it - p - paste exactly where cursor is

:set nu - set line number
:set nonu - unset line number
:syntax off/on
:12 cursor on line 12


# edit 2 files together
vim -o file1 file2
ctrl + ww - switch between files

# compare 2 files

vim -d file1 file2
ctrl + ww - switch between files