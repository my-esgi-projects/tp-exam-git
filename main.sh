#!/bin/bash


echo "mainscript for launch all script"

#get current directory
current_dir=$(pwd)

echo "create log directory"
mkdir $current_dir/logs

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

case $1 in 
--1)
    launch_first_script
    ;;
--2)
    launch_second_script
    ;;
--3)
    launch_third_script 
esac

