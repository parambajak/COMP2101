#!/bin/bash
# This script demonstrates testing if a variable named MYVAR exists and whether it is empty
# It is expected that you use this script to test if MYVAR is inherited from a parent process
#   since it is not created or modified in this script

[ -v P ] && echo "The variable P exists"
[ -v P ] || echo "The variable P does not exist"

[ -v P ] && [ -n "$P" ] && echo "The variable P has data in it"
[ -v P ] && [ -z "$P" ] && echo "The variable P is empty"
