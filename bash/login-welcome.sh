#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############
username="$USER"
hostname="$(hostname)"
day=$(date +%A)
currenttime=$(date +%I:%M\ %p)
###############
# Main        #
###############
if [ "$day" = Monday ];
then
cows="Welcome to planet $hostname, pleasant $username!"
elif [ "$day" = Tuesday ];
then
cows="Welcome to planet $hostname, sanguine $username!"
elif [ "$day" = Wednesday ];
then
cows="Welcome to planet $hostname, sunny $username!"
elif [ "$day" = Thursday ];
then
cows="Welcome to planet $hostname, hilarious $username!"
elif [ "$day" = Friday ];
then
cows="Welcome to planet $hostname, good-natured $username!"
elif [ "$day" = Saturday ];
then
cows="Welcome to planet $hostname, lighthearted $username!"
else
cows="Welcome to planet $hostname, optimistic $username!"
fi
cowsay "$cows It is $currenttime on $day ."
