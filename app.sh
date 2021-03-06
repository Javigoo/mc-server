#!/bin/bash

clear
cd src/
chmod +x *

confirmation () {
    read -p "Confirm [y/n]: " option
    echo
    case $option in
        [Yy]*) 
            $1
        ;;
        *) 
            clear
            continue
        ;;
    esac
}

while [ True ]
do 
    echo "|#| MINECRAFT SERVER |#|"
    echo "  [1] Start server"
    echo "  [2] Stop server"
    echo "  [3] Make server"
    echo "  [4] Delete server"
    echo "  [i] Server status"
    echo "  [x] Exit"
    read -p "-> " option 
    echo

    case $option in
        1)
            ./start-server.sh
        ;;
        2)
            ./stop-server.sh
        ;;
        3)
            confirmation "./setup.sh"
        ;;
        4)
            confirmation "./delete-server.sh"
        ;;
        i)
            ./server-status.sh
        ;;
        x)  
            clear
            exit 1
        ;;
        *)
            clear
            continue
        ;;
    esac
    echo
    read -p "Press enter to continue: "
    clear

done