#!/bin/bash - 
#===============================================================================
#
#          FILE: select.sh
# 
#         USAGE: ./select.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 2020年08月23日 00时15分46秒
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

PS3="Run command: "

select choice in date free hostname "uname -a" Exit
do
	case $choice in

		date)
			echo "=================================="
			echo "Current date and time:i"
			$choice
			echo "=================================="
			;;

		free)
			echo "=================================="
			echo "The ram state:"
			$choice
			echo "=================================="
			;;

		hostname)
			echo "=================================="
			echo "Hostname:"
			$choice
			echo "=================================="
			;;

		"uname -a")
			echo "=================================="
			echo "System information:"
			$choice
			echo "=================================="
			;;

		Exit)
			echo "Bye!"
			exit
			;;
	esac
done

