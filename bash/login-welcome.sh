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

title="overload"
myname=$USER

weekday=$(date +%A)
currenttime=$(date +%I:%M\ %p)
###############
# Main        #
###############

title1="monday is sunny day"
title2="tuesday is rainy day"
title3="wednesday is cold day"
title4="thursday is fair day"
title5="friday is hot day"
title6="saturday is bright day"
title7="sunday is fun day"


if [ "$weekday" = "Monday" ]
then
cat <<EOF
Welcome to planet $hostname, $title1 $USER
It is $currenttime on $weekday
EOF
elif [ "$weekday" = "Tuesday" ]
then 
cat <<EOF
Welcome to planet $hostname, $title2 $USER
It is $currenttime on $weekday
EOF
elif [ "$weekday" = "Wednesday" ]
then
cat <<EOF
Welcome to planet $hostname, $title3 $USER
It is $currenttime on $weekday
EOF
elif [ "$weekday" = "Thursday" ]
then 
cat <<EOF
Welcome to planet $hostname, $title4 $USER
It is $currenttime on $weekday
EOF

elif [ "$weekday" = "Friday" ]
then 
cat <<EOF
Welcome to planet $hostname, $title5 $USER
It is $currentimee on $weekday
EOF

elif [ "$weekday" = "Saturday" ]
then 
cat <<EOF
Welcome to planet $hostname, $title6 $USER
It is $currenttime on $weekday
EOF

elif [ "$weekday" = "Sunday" ]
then
cat <<EOF
Welcome to planet $hostname, $title7 $USER
It is $currenttime on $weekday
EOF

fi
