#!/bin/bash
# This script demonstrates how the shift command works
# create an empty array to put the command line argumentss into
myargs=()
verbosevar=0
debugvar=0
# loop through the command line arguments
while [ $# -gt 0 ]; do
  # tell the user how many things are left on the command line
  echo "There are $# things left to process on the command line."
  # add whatever is in $1 to the myargs array
  echo "Myarg array contents ${myargs[@]}"
  myargs+=("$1")
  # tell the user what we did
  echo "Added \'$1\' to the arguments array"
  echo "Processing the value '$1'."
  case $1 in
  -h )
   echo 'You added "-h" for help.'
   echo 'Processing the "-h".'
   echo "Choose -v for Varbose mode, -d for Debug mode and choose within 1 to 5."
   ;;
  -v )
   echo 'You added "-v" for varbose.'
   echo 'Processing the "-v".'
   verbosevar=1
   ;;
  -d )
   echo 'You added "-d" for debug.'
   echo 'Processing the "-d".'
   case "$2" in
   [1-5] )
    echo "You added the -d for debug level $2."
    debugvar=$2
    shift
    ;;
   *)
    echo "Error: The debug mode should be between [1-5]. "
    shift
    esac
    ;;
  *)
  errors=$1
  echo "Error: unkown value found: $errors"
  shift
  ;;
  esac
  # each time through the loop, shift the arguments left
  # this decrements the argument count for us
  shift
  # tell the user we shifted things
  echo "Shifted command line, leaving $# things left to process."
  echo "--------------------------"
  # go back to the top of the loop to see if anything is left to work on
done
echo "Done"
if [ $verbosevar = 1 ]; then
  echo "Varbose mode is On."
else
  echo "Varbose mode is Off."
fi
if [ $debugvar -gt 0 ]; then
  echo "Debug Mode is On with level $d."
else
  echo "Debug Mode is Off."
fi
