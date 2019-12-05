#! /bin/bash
# menu
# Steve Kim
# November 2, 2019

while true; do

	echo -n "type the number 1 to enter a new car"
	echo -n "type the number 2 to display the list of cars"
	echo -n "type the number 3 to quit and exit the program"
	read CHOICE
	case $CHOICE in
		"1")
			echo "What year?"
			read YEAR
			echo "What make?"
			read MAKE
			echo "What model?"
			read MODEL
			CAR="${YEAR}:${MAKE}:${MODEL}"
			echo $CAR >> My_old_cars
			;;
			
		"2")
			sort -V My_old_cars
			;;
		"3")
			echo "GoodBye"
			break
			;;
		esac		
done
