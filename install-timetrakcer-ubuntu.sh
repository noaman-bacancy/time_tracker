#!/bin/bash

if ls $HOME/.local/lib/time_tracker* 1> /dev/null 2>&1; then
    echo -e "Time Tracker Package exists"
else
    echo "If prompted for a password, enter Sudo Password.:"
    sudo apt-get install -y xprintidle
    echo -e "Time Tracker doesn't exist   >>>>> Downloading\n"
    mkdir -p ~/.local/lib/time_tracker && mkdir -p ~/.local/share/applications && { curl -L  https://github.com/noaman-bacancy/time_tracker/releases/download/v1/time_tracker -o ~/.local/lib/time_tracker/time_tracker; curl -L https://github.com/noaman-bacancy/time_tracker/releases/download/v1/icon.jpeg -o  ~/.local/lib/time_tracker/icon.jpeg; curl -L https://gist.githubusercontent.com/noaman-bacancy/9045b502c9f8ad72be92fa24b0ab64c6/raw/f8a295b593f167aa658ed04cefbd0849e354e2fe/gistfile1.txt -o ~/.local/share/applications/timetracker.desktop; }

fi
