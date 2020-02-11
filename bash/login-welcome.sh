#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your na$
# Task 2: Dynamically generate the value for your hostname variable using the $
# Task 3: Add the time and day of the week to the welcome message using the fo$
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday m$
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example
###############
# Variables   #
###############
hostname=$(hostname)
myname=$USER

weekday=$(date +%A)
currenttime=$(date +%I:%M\ %p)
###############
# Main        #
###############


if [ "$weekday" = "Monday" ]
then
  title="monday is sunny day"

elif [ "$weekday" = "Tuesday" ]
then
  title="tuesday is rainy day"

elif [ "$weekday" = "Wednesday" ]
then
  title="wednesday is cold day"

elif [ "$weekday" = "Thursday" ]
then
  title="thursday is fair day"


elif [ "$weekday" = "Friday" ]
then
  title="friday is hot day"


elif [ "$weekday" = "Saturday" ]
then
  title="saturday is bright day"


elif [ "$weekday" = "Sunday" ]
then
  title="sunday is fun day"

fi

variable=$(cat <<EOF
Welcome to planet $hostname,"$title $myname!"
IT is $weekday at $currenttime
EOF
)

cat <<EOF
$(cowsay $variable)
EOF
