#!/bin/bash


#check for ID

echo -e "\n>> Checking ID\n"
. /etc/os-release
echo -e "Distrubution Name = $NAME \n"

#Preparing Dialog

if [ $ID = "mac" ]
    then
        
        fi

elif [ $ID = "ubuntu" ]
then
    if [ $(dpkg-query -W -f='${Status}' dialog 2>/dev/null | grep -c "ok installed") -eq 0 ] 
    then
        sudo apt-get -y install -qq dialog
    fi

    fi
fi

# Define Dialog Listing Here

cmd=(dialog --separate-output --checklist "Select Packages to Install:" 22 76 16)
    options=(1 "TimeTracker" on )
    choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)
clear
# Define Installation Script URL Here
timetracker="https://raw.githubusercontent.com/noaman-bacancy/time_tracker/main/install-timetrakcer-$ID.sh"


#Define Script Execution Here



#Define Script Execution Here

for choice in $choices
do
    case $choice in
        1)
            /bin/bash -c "$(curl -sL $timetracker)"
            echo -e "---------------------------------------------------- \n"
            ;;
    esac
done
