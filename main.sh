#!/bin/bash


echo "mainscript for launch all script"

#get current directory
current_dir=$(pwd)

echo "create log directory"
mkdir $current_dir/logs


function launch_second_script(){
    source $current_dir/scripts/2-clone_git_repository.sh 2>&1 | tee $current_dir/logs
    ls -al | grep 4-SRC
}



case $1 in 
--2)
    launch_second_script
    ;;
esac
    