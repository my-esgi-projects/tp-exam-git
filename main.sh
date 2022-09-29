#!/bin/bash


#get current directory
current_dir=$(pwd)

function launch_first_script(){
    python $current_dir/scripts/1-prime_number.py 2>&1 | tee $current_dir/logs/1-prime_number.log 
    ls -al | grep 4-SRC
}


function launch_second_script(){
    source $current_dir/scripts/2-clone_git_repository.sh 2>&1 | tee $current_dir/logs/2-clone_git_repository.log 
    ls -al | grep 4-SRC
}


function launch_third_script(){
    source $current_dir/scripts/3-list_python_process.sh  | tee $current_dir/logs/3-list_python_process.log 
}

function launch_all_scripts(){
    launch_first_script
    launch_second_script
    launch_third_script
}


function show_help(){
    echo -e "Usage: ./main.sh [option] \n"

    echo "[option]: "
    echo -e "\t--h for print this help"
    echo -e "\t--1 for run show the primes numbers between 1 and 100000"
    echo -e "\t--2 for run second script"
    echo -e "\t--3 for run  third script"
    echo -e "\t--a for launch all the scripts"
    
    
}



if [[ $1 = "" ]]
then 
    echo -e "Bad usage\n"
    show_help
else

        if [[ -d $current_dir/logs ]]
        then
            echo ""
        else 
            mkdir $current_dir/logs
            echo "create log directory"
        fi 

        case $1 in 
        --h)
            show_help
            ;;
        --1)
            launch_first_script
            ;;
        --2)
            launch_second_script
            ;;
        --3)
            launch_third_script 
            ;;
        --a)
            launch_first_script
            launch_second_script
            launch_third_script
            ;;
        esac
fi