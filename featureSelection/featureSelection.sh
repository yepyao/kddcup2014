currentLine=$(wc -l < ../test.txt)
echo $currentLine
line=$(head -1 ../model/train.gbrt.svm_buffer)
read -a array <<<$line
sum=$((${#array[*]}-1))
echo $sum
performance=$(tail -2 ../log.txt)
