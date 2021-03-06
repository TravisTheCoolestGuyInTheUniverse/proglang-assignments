executable=$1
#get directories of all test input and correct output files
testfilePathArray=(../Test/test*)
correctPathArray=(../Correct/test*)
len=${#testfilePathArray[@]}

#replace contents of results with current time  
echo $(date) > ../testResults/$executable

echo testing $executable":"
for ((i=0; i<len; i++)); do
#use input from testi and send output to currentTest
./../Executables/$executable < ${testfilePathArray[i]} > currentTest
t=$(($i+1))
#send the results to 
if $(cmp -s currentTest ${correctPathArray[i]})
then
echo test$t PASS 
echo test$t PASS >> ../testResults/$executable
else
echo test$t FAIL
echo test$t FAIL >> ../testResults/$executable
fi
done