filename=$1
language=$2

cd ../Executables

if test $language == "c++"
then 
g++ -o $filename"c" ../Source/$filename.cpp
else if test $language == "ada"
then
gnat make ../Source/$filename
#gnat compile ../Source/$filename.adb
#gnatbind $filename
#gnatlink $filename
rm $filename.ali
rm $filename.o
else 
echo "$language is not a supported language in this script"
fi 
fi 