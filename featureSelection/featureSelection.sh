line=$(head -1 ../model/train.$1.svm_buffer)
read -a array <<<$line
sum=$((${#array[*]}-1))
echo $sum
cp ../model/train.$1.svm_buffer buffer/train.$1.buffer
cp ../model/test.$1.svm_buffer buffer/test.$1.buffer
java -cp ../codes/py/bin preprocessing.SplitBuffer buffer/train.$1.buffer $sum 
java -cp ../codes/py/bin preprocessing.SplitBuffer buffer/test.$1.buffer $sum 

