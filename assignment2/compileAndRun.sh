sourceFile=$1
language=$2

if test $language == "c++"
then 
g++ $sourceFile
./a.out
else if test $language == "java"
then 
java sourceFile
fi
fi