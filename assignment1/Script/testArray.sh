testfilePathArray=(../testFiles/test*)

for file in "${testfilePathArray[@]}" 
do
echo $file
done

len=${#testfilePathArray[@]}
echo $len