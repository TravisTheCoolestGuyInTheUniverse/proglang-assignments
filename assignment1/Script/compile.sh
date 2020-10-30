#!/bin/bash
file=$1
language=$2 #assign the name of the file and the language to variables 
 
#if language is fortran, use fortran compiler
if test $language == "fortran"
then 
    #go up a directory to the main directory and then go to executable directory
    #this works because the file structure of this project should be consistent
    cd ../executable
    #compile code from Source directory in executable directory
    gfortran -o $file"f" ../Source/$file.f95
else
if test $language == "c++"
then 
    cd ../executable
    g++ -o $file"c" ../Source/$file.cpp
else
    echo "invalid language input! you fool!"
fi
fi

