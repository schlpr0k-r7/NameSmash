#!/bin/bash
#######################################
## Creator: Andrew & Carlota Bindner ##
## Date: 16-August-2018				 ##
##									 ##
## Version: 1.0						 ##
## License: Sharing is caring		 ##
##			Open Source is Magic	 ##
#######################################

#Title
echo -e "  ______                          "'\033[0;31m'" _______                      __    "'\033[0m'
echo -e " |   _  \.---.-.--------.-----.   "'\033[0;31m'"|   _   .--------.---.-.-----|  |--."'\033[0m'
echo -e " |.  |   |  _  |        |  -__|   "'\033[0;31m'"|   1___|        |  _  |__ --|     |"'\033[0m'
echo -e " |.  |   |___._|__|__|__|_____|   "'\033[0;31m'"|____   |__|__|__|___._|_____|__|__|"'\033[0m'
echo -e " |:  |   |                        "'\033[0;31m'"|:  1   |                           "'\033[0m'
echo -e " |::.|   |                        "'\033[0;31m'"|::.. . |                           "'\033[0m'
echo -e " \--- ---/                        "'\033[0;31m'"\-------/                           "'\033[0m'
echo ""
echo ""
echo "Syntax: ./name_smash.sh [First Name] [Last Name] [Number of Digits to Use: 0-9]"
echo "Exampe: ./name_smash.sh Tony Stark 2"

#COMMENT ABOUT USAGE: Generates a username combinations from one (1) person's first \
#     and last name to test for domain naming schema in password spraying attack. I \
#     suggest you use a small name. Potential outcome is 21,931 entries at most.\

#Sanity Check
re='^-?[0-9]+([.][0-9]+)?$'

if ! [ $# -eq '3' ]; then 
	exit 0
elif [ -z $1 ] || [ -z $2 ] || [ -z $3 ]; then 
	exit 0
elif ! [[ $3 =~ $re ]]; then 
	exit 0 
elif [ $3 -gt '9' ]; then 
	echo -e "Number of digits not to exceed: "'\033[0;31m'"9"'\033[0m'
	exit 0
fi

#Begin
#=================
#Call line variables
fname=$(echo $1 | tr [[:upper:]] [[:lower:]])
lname=$(echo $2 | tr [[:upper:]] [[:lower:]])

#script necessary variables
fi=${fname:0:1}
li=${lname:0:1}
fn2=${fname:0:2}
fn3=${fname:0:3}
fn4=${fname:0:4}
fn5=${fname:0:5}
ln2=${lname:0:2}
ln3=${lname:0:3}
ln4=${lname:0:4}
ln5=${lname:0:5}

#numbers to use 
number=$3

#Start Smash
echo -e '==========================================='\\n'--> 'Smashing Name: $1 $2\\n'==========================================='

#firstname variants
#=================================
echo $fname >>smash.log
for a in {a..z}; do echo $fname$a >>smash.log; done
for n in $(seq 1 $number); do echo $fname$n >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $fname$a$n >>smash.log; done; done

echo $fname$lname >>smash.log
for n in $(seq 1 $number); do echo $fname$lname$n >>smash.log; done
for a in {a..z}; do echo $fname$a$lname >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $fname$a$lname$n >>smash.log; done; done

echo $fname$li >>smash.log
for n in $(seq 1 $number); do echo $fname$li$n >>smash.log; done
for a in {a..z}; do echo $fname$a$li >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $fname$a$li$n >>smash.log; done; done

echo $fname$ln2 >>smash.log
for n in $(seq 1 $number); do echo $fname$ln2$n >>smash.log; done
for a in {a..z}; do echo $fname$a$ln2 >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $fname$a$ln2$n >>smash.log; done; done

echo $fname$ln3 >>smash.log
for n in $(seq 1 $number); do echo $fname$ln3$n >>smash.log; done
for a in {a..z}; do echo $fname$a$ln3 >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $fname$a$ln3$n >>smash.log; done; done

echo $fname$ln4 >>smash.log
for n in $(seq 1 $number); do echo $fname$ln4$n >>smash.log; done
for a in {a..z}; do echo $fname$a$ln4 >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $fname$a$ln4$n >>smash.log; done; done

echo $fname$ln5 >>smash.log
for n in $(seq 1 $number); do echo $fname$ln5$n >>smash.log; done
for a in {a..z}; do echo $fname$a$ln5 >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $fname$a$ln5$n >>smash.log; done; done

#fi variants
echo $fi >>smash.log
for n in $(seq 1 $number); do echo $fi$n >>smash.log; done
for a in {a..z}; do echo $fi$a >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $fi$a$n >>smash.log; done; done

echo $fi$lname >>smash.log
for n in $(seq 1 $number); do echo $fi$lname$n >>smash.log; done
for a in {a..z}; do echo $fi$a$lname >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $fi$a$lname$n >>smash.log; done; done

echo $fi$li >>smash.log
for n in $(seq 1 $number); do echo $fi$li$n >>smash.log; done
for a in {a..z}; do echo $fi$a$li >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $fi$a$li$n >>smash.log; done; done

echo $fi$ln2 >>smash.log
for n in $(seq 1 $number); do echo $fi$ln2$n >>smash.log; done
for a in {a..z}; do echo $fi$a$ln2 >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $fi$a$ln2$n >>smash.log; done; done

echo $fi$ln3 >>smash.log
for n in $(seq 1 $number); do echo $fi$ln3$n >>smash.log; done
for a in {a..z}; do echo $fi$a$ln3 >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $fi$a$ln3$n >>smash.log; done; done

echo $fi$ln4 >>smash.log
for n in $(seq 1 $number); do echo $fi$ln4$n >>smash.log; done
for a in {a..z}; do echo $fi$a$ln4 >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $fi$a$ln4$n >>smash.log; done; done

echo $fi$ln5 >>smash.log
for n in $(seq 1 $number); do echo $fi$ln5$n >>smash.log; done
for a in {a..z}; do echo $fi$a$ln5 >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $fi$a$ln5$n >>smash.log; done; done

#fn2 variants
echo $fn2 >>smash.log
for n in $(seq 1 $number); do echo $fn2$n >>smash.log; done
for a in {a..z}; do echo $fn2$a >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $fn2$a$n >>smash.log; done; done

echo $fn2$lname >>smash.log
for n in $(seq 1 $number); do echo $fn2$lname$n >>smash.log; done
for a in {a..z}; do echo $fn2$a$lname >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $fn2$a$lname$n >>smash.log; done; done

echo $fn2$li >>smash.log
for n in $(seq 1 $number); do echo $fn2$li$n >>smash.log; done
for a in {a..z}; do echo $fn2$a$li >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $fn2$a$li$n >>smash.log; done; done

echo $fn2$ln2 >>smash.log
for n in $(seq 1 $number); do echo $fn2$ln2$n >>smash.log; done
for a in {a..z}; do echo $fn2$a$ln2 >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $fn2$a$ln2$n >>smash.log; done; done

echo $fn2$ln3 >>smash.log
for n in $(seq 1 $number); do echo $fn2$ln3$n >>smash.log; done
for a in {a..z}; do echo $fn2$a$ln3 >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $fn2$a$ln3$n >>smash.log; done; done

echo $fn2$ln4 >>smash.log
for n in $(seq 1 $number); do echo $fn2$ln4$n >>smash.log; done
for a in {a..z}; do echo $fn2$a$ln4 >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $fn2$a$ln4$n >>smash.log; done; done

echo $fn2$ln5 >>smash.log
for n in $(seq 1 $number); do echo $fn2$ln5$n >>smash.log; done
for a in {a..z}; do echo $fn2$a$ln5 >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $fn2$a$ln5$n >>smash.log; done; done

#fn3 variants
echo $fn3 >>smash.log
for n in $(seq 1 $number); do echo $fn3$n >>smash.log; done
for a in {a..z}; do echo $fn3$a >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $fn3$a$n >>smash.log; done; done

echo $fn3$lname >>smash.log
for n in $(seq 1 $number); do echo $fn3$lname$n >>smash.log; done
for a in {a..z}; do echo $fn3$a$lname >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $fn3$a$lname$n >>smash.log; done; done

echo $fn3$li >>smash.log
for n in $(seq 1 $number); do echo $fn3$li$n >>smash.log; done
for a in {a..z}; do echo $fn3$a$li >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $fn3$a$li$n >>smash.log; done; done

echo $fn3$ln2 >>smash.log
for n in $(seq 1 $number); do echo $fn3$ln2$n >>smash.log; done
for a in {a..z}; do echo $fn3$a$ln2 >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $fn3$a$ln2$n >>smash.log; done; done

echo $fn3$ln3 >>smash.log
for n in $(seq 1 $number); do echo $fn3$ln3$n >>smash.log; done
for a in {a..z}; do echo $fn3$a$ln3 >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $fn3$a$ln3$n >>smash.log; done; done

echo $fn3$ln4 >>smash.log
for n in $(seq 1 $number); do echo $fn3$ln4$n >>smash.log; done
for a in {a..z}; do echo $fn3$a$ln4 >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $fn3$a$ln4$n >>smash.log; done; done

echo $fn3$ln5 >>smash.log
for n in $(seq 1 $number); do echo $fn3$ln5$n >>smash.log; done
for a in {a..z}; do echo $fn3$a$ln5 >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $fn3$a$ln5$n >>smash.log; done; done

#fn4 variants
echo $fn4 >>smash.log
for n in $(seq 1 $number); do echo $fn4$n >>smash.log; done
for a in {a..z}; do echo $fn4$a >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $fn4$a$n >>smash.log; done; done

echo $fn4$lname >>smash.log
for n in $(seq 1 $number); do echo $fn4$lname$n >>smash.log; done
for a in {a..z}; do echo $fn4$a$lname >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $fn4$a$lname$n >>smash.log; done; done

echo $fn4$li >>smash.log
for n in $(seq 1 $number); do echo $fn4$li$n >>smash.log; done
for a in {a..z}; do echo $fn4$a$li >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $fn4$a$li$n >>smash.log; done; done

echo $fn4$ln2 >>smash.log
for n in $(seq 1 $number); do echo $fn4$ln2$n >>smash.log; done
for a in {a..z}; do echo $fn4$a$ln2 >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $fn4$a$ln2$n >>smash.log; done; done

echo $fn4$ln3 >>smash.log
for n in $(seq 1 $number); do echo $fn4$ln3$n >>smash.log; done
for a in {a..z}; do echo $fn4$a$ln3 >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $fn4$a$ln3$n >>smash.log; done; done

echo $fn4$ln4 >>smash.log
for n in $(seq 1 $number); do echo $fn4$ln4$n >>smash.log; done
for a in {a..z}; do echo $fn4$a$ln4 >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $fn4$a$ln4$n >>smash.log; done; done

echo $fn4$ln5 >>smash.log
for n in $(seq 1 $number); do echo $fn4$ln5$n >>smash.log; done
for a in {a..z}; do echo $fn4$a$ln5 >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $fn4$a$ln5$n >>smash.log; done; done

#fn5 variants
echo $fn5 >>smash.log
for n in $(seq 1 $number); do echo $fn5$n >>smash.log; done
for a in {a..z}; do echo $fn5$a >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $fn5$a$n >>smash.log; done; done

echo $fn5$lname >>smash.log
for n in $(seq 1 $number); do echo $fn5$lname$n >>smash.log; done
for a in {a..z}; do echo $fn5$a$lname >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $fn5$a$lname$n >>smash.log; done; done

echo $fn5$li >>smash.log
for n in $(seq 1 $number); do echo $fn5$li$n >>smash.log; done
for a in {a..z}; do echo $fn5$a$li >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $fn5$a$li$n >>smash.log; done; done

echo $fn5$ln2 >>smash.log
for n in $(seq 1 $number); do echo $fn5$ln2$n >>smash.log; done
for a in {a..z}; do echo $fn5$a$ln2 >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $fn5$a$ln2$n >>smash.log; done; done

echo $fn5$ln3 >>smash.log
for n in $(seq 1 $number); do echo $fn5$ln3$n >>smash.log; done
for a in {a..z}; do echo $fn5$a$ln3 >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $fn5$a$ln3$n >>smash.log; done; done

echo $fn5$ln4 >>smash.log
for n in $(seq 1 $number); do echo $fn5$ln4$n >>smash.log; done
for a in {a..z}; do echo $fn5$a$ln4 >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $fn5$a$ln4$n >>smash.log; done; done

echo $fn5$ln5 >>smash.log
for n in $(seq 1 $number); do echo $fn5$ln5$n >>smash.log; done
for a in {a..z}; do echo $fn5$a$ln5 >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $fn5$a$ln5$n; done >>smash.log; done

#lastname variants
#===================================
echo $lname >>smash.log
for n in $(seq 1 $number); do echo $lname$n >>smash.log; done
for a in {a..z}; do echo $lname$a >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $lname$a$n >>smash.log; done; done

echo $lname$fname >>smash.log
for n in $(seq 1 $number); do echo $lname$fname$n >>smash.log; done
for a in {a..z}; do echo $lname$a$fname >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $lname$a$fname$n >>smash.log; done; done

echo $lname$fi >>smash.log
for n in $(seq 1 $number); do echo $lname$fi$n >>smash.log; done
for a in {a..z}; do echo $lname$a$fi >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $lname$a$fi$n >>smash.log; done; done

echo $lname$fn2 >>smash.log
for n in $(seq 1 $number); do echo $lname$fn2$n >>smash.log; done
for a in {a..z}; do echo $lname$a$fn2 >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $lname$a$fn2$n >>smash.log; done; done

echo $lname$fn3 >>smash.log
for n in $(seq 1 $number); do echo $lname$fn3$n >>smash.log; done
for a in {a..z}; do echo $lname$a$fn3 >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $lname$a$fn3$n >>smash.log; done; done

echo $lname$fn4 >>smash.log
for n in $(seq 1 $number); do echo $lname$fn4$n >>smash.log; done
for a in {a..z}; do echo $lname$a$fn4 >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $lname$a$fn4$n >>smash.log; done; done

echo $lname$fn5 >>smash.log
for n in $(seq 1 $number); do echo $lname$fn5$n >>smash.log; done
for a in {a..z}; do echo $lname$a$fn5 >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $lname$a$fn5$n >>smash.log; done; done

#li variants
echo $li >>smash.log
for n in $(seq 1 $number); do echo $li$n >>smash.log; done
for a in {a..z}; do echo $li$a >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $li$a$n >>smash.log; done; done

echo $li$fname >>smash.log
for n in $(seq 1 $number); do echo $li$fname$n >>smash.log; done
for a in {a..z}; do echo $li$a$fname >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $li$a$fname$n >>smash.log; done; done

echo $li$fi >>smash.log
for n in $(seq 1 $number); do echo $li$fi$n >>smash.log; done
for a in {a..z}; do echo $li$a$fi >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $li$a$fi$n >>smash.log; done; done

echo $li$fn2 >>smash.log
for n in $(seq 1 $number); do echo $li$fn2$n >>smash.log; done
for a in {a..z}; do echo $li$a$fn2 >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $li$a$fn2$n >>smash.log; done; done

echo $li$fn3 >>smash.log
for n in $(seq 1 $number); do echo $li$fn3$n >>smash.log; done
for a in {a..z}; do echo $li$a$fn3 >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $li$a$fn3$n >>smash.log; done; done

echo $li$fn4 >>smash.log
for n in $(seq 1 $number); do echo $li$fn4$n >>smash.log; done
for a in {a..z}; do echo $li$a$fn4 >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $li$a$fn4$n >>smash.log; done; done

echo $li$fn5 >>smash.log
for n in $(seq 1 $number); do echo $li$fn5$n >>smash.log; done
for a in {a..z}; do echo $li$a$fn5 >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $li$a$fn5$n >>smash.log; done; done

#ln2 variants
echo $ln2 >>smash.log
for n in $(seq 1 $number); do echo $ln2$n >>smash.log; done
for a in {a..z}; do echo $ln2$a >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $ln2$a$n >>smash.log; done; done

echo $ln2$fname >>smash.log
for n in $(seq 1 $number); do echo $ln2$fname$n >>smash.log; done
for a in {a..z}; do echo $ln2$a$fname >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $ln2$a$fname$n >>smash.log; done; done

echo $ln2$fi >>smash.log
for n in $(seq 1 $number); do echo $ln2$fi$n >>smash.log; done
for a in {a..z}; do echo $ln2$a$fi >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $ln2$a$fi$n >>smash.log; done; done

echo $ln2$fn2 >>smash.log
for n in $(seq 1 $number); do echo $ln2$fn2$n >>smash.log; done
for a in {a..z}; do echo $ln2$a$fn2 >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $ln2$a$fn2$n >>smash.log; done; done

echo $ln2$fn3 >>smash.log
for n in $(seq 1 $number); do echo $ln2$fn3$n >>smash.log; done
for a in {a..z}; do echo $ln2$a$fn3 >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $ln2$a$fn3$n >>smash.log; done; done

echo $ln2$fn4 >>smash.log
for n in $(seq 1 $number); do echo $ln2$fn4$n >>smash.log; done
for a in {a..z}; do echo $ln2$a$fn4 >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $ln2$a$fn4$n >>smash.log; done; done

echo $ln2$fn5 >>smash.log
for n in $(seq 1 $number); do echo $ln2$fn5$n >>smash.log; done
for a in {a..z}; do echo $ln2$a$fn5 >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $ln2$a$fn5$n >>smash.log; done; done

#ln3 variants
echo $ln3 >>smash.log
for n in $(seq 1 $number); do echo $ln3$n >>smash.log; done
for a in {a..z}; do echo $ln3$a >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $ln3$a$n >>smash.log; done; done

echo $ln3$fname >>smash.log
for n in $(seq 1 $number); do echo $ln3$fname$n >>smash.log; done
for a in {a..z}; do echo $ln3$a$fname >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $ln3$a$fname$n >>smash.log; done; done

echo $ln3$fi >>smash.log
for n in $(seq 1 $number); do echo $ln3$fi$n >>smash.log; done
for a in {a..z}; do echo $ln3$a$fi >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $ln3$a$fi$n >>smash.log; done; done

echo $ln3$fn2 >>smash.log
for n in $(seq 1 $number); do echo $ln3$fn2$n >>smash.log; done
for a in {a..z}; do echo $ln3$a$fn2 >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $ln3$a$fn2$n >>smash.log; done; done

echo $ln3$fn3 >>smash.log
for n in $(seq 1 $number); do echo $ln3$fn3$n >>smash.log; done
for a in {a..z}; do echo $ln3$a$fn3 >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $ln3$a$fn3$n >>smash.log; done; done

echo $ln3$fn4 >>smash.log
for n in $(seq 1 $number); do echo $ln3$fn4$n >>smash.log; done
for a in {a..z}; do echo $ln3$a$fn4 >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $ln3$a$fn4$n >>smash.log; done; done

echo $ln3$fn5 >>smash.log
for n in $(seq 1 $number); do echo $ln3$fn5$n >>smash.log; done
for a in {a..z}; do echo $ln3$a$fn5 >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $ln3$a$fn5$n >>smash.log; done; done

#ln4 variants
echo $ln4 >>smash.log
for n in $(seq 1 $number); do echo $ln4$n >>smash.log; done
for a in {a..z}; do echo $ln4$a >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $ln4$a$n >>smash.log; done; done

echo $ln4$fname >>smash.log
for n in $(seq 1 $number); do echo $ln4$fname$n >>smash.log; done
for a in {a..z}; do echo $ln4$a$fname >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $ln4$a$fname$n >>smash.log; done; done

echo $ln4$fi >>smash.log
for n in $(seq 1 $number); do echo $ln4$fi$n >>smash.log; done
for a in {a..z}; do echo $ln4$a$fi >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $ln4$a$fi$n >>smash.log; done; done

echo $ln4$fn2 >>smash.log
for n in $(seq 1 $number); do echo $ln4$fn2$n >>smash.log; done
for a in {a..z}; do echo $ln4$a$fn2 >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $ln4$a$fn2$n >>smash.log; done; done

echo $ln4$fn3 >>smash.log
for n in $(seq 1 $number); do echo $ln4$fn3$n >>smash.log; done
for a in {a..z}; do echo $ln4$a$fn3 >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $ln4$a$fn3$n >>smash.log; done; done

echo $ln4$fn4 >>smash.log
for n in $(seq 1 $number); do echo $ln4$fn4$n >>smash.log; done
for a in {a..z}; do echo $ln4$a$fn4 >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $ln4$a$fn4$n >>smash.log; done; done

echo $ln4$fn5 >>smash.log
for n in $(seq 1 $number); do echo $ln4$fn5$n >>smash.log; done
for a in {a..z}; do echo $ln4$a$fn5 >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $ln4$a$fn5$n >>smash.log; done; done

#ln5 variants
echo $ln5 >>smash.log
for n in $(seq 1 $number); do echo $ln5$n >>smash.log; done
for a in {a..z}; do echo $ln5$a >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $ln5$a$n >>smash.log; done; done

echo $ln5$fname >>smash.log
for n in $(seq 1 $number); do echo $ln5$fname$n >>smash.log; done
for a in {a..z}; do echo $ln5$a$fname >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $ln5$a$fname$n >>smash.log; done; done

echo $ln5$fi >>smash.log
for n in $(seq 1 $number); do echo $ln5$fi$n >>smash.log; done
for a in {a..z}; do echo $ln5$a$fi >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $ln5$a$fi$n >>smash.log; done; done

echo $ln5$fn2 >>smash.log
for n in $(seq 1 $number); do echo $ln5$fn2$n >>smash.log; done
for a in {a..z}; do echo $ln5$a$fn2 >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $ln5$a$fn2$n >>smash.log; done; done

echo $ln5$fn3 >>smash.log
for n in $(seq 1 $number); do echo $ln5$fn3$n >>smash.log; done
for a in {a..z}; do echo $ln5$a$fn3 >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $ln5$a$fn3$n >>smash.log; done; done

echo $ln5$fn4 >>smash.log
for n in $(seq 1 $number); do echo $ln5$fn4$n >>smash.log; done
for a in {a..z}; do echo $ln5$a$fn4 >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $ln5$a$fn4$n >>smash.log; done; done

echo $ln5$fn5 >>smash.log
for n in {1..$number}; do echo $ln5$fn5$n >>smash.log; done
for a in {a..z}; do echo $ln5$a$fn5 >>smash.log; done
for a in {a..z}; do for n in $(seq 1 $number); do echo $ln5$a$fn5$n; done >>smash.log; done

#clean up
#==================================
echo -e "First Name: "'\033[0;33m'$fname'\033[0m'
echo "Fi  : "${fname:0:1}
echo "Fn-2: "${fname:0:2}
echo "Fn-3: "${fname:0:3}
echo "Fn-4: "${fname:0:4}
echo "Fn-5: "${fname:0:5}
echo ""
echo -e "Middle Initial:"'\033[0;33m' Calculated A-Z'\033[0m'
echo ""
echo -e "Last Name: "'\033[0;33m'$lname'\033[0m'
echo "Li  : "${lname:0:1}
echo "Ln-2: "${lname:0:2}
echo "Ln-3: "${lname:0:3}
echo "Ln-4: "${lname:0:4}
echo "Ln-5: "${lname:0:5}
echo ""
echo "Numbers Used: "$number
echo ""
if [ $3 -ge '1' ]; then
	echo -e "--> Smashed Combinations: "'\033[0;31m'$(wc -l smash.log |cut -d ' ' -f1)'\033[0m'
	sort -u smash.log >smash.out
else
        echo -e "--> Smashed Combinations: "'\033[0;31m'$(cat smash.log |grep -v [[:digit:]] |wc -l )'\033[0m'
        cat smash.log |grep -v [[:digit:]] |sort -u >smash.out
fi
echo -e "--> Unique Combinations: "'\033[0;32m'$(wc -l smash.out |cut -d ' ' -f1)'\033[0m'
echo ""
echo "--> Filename: smash.out"
rm smash.log
