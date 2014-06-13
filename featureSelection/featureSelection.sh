currentLine=$(wc -l < ../test.txt)
echo $currentLine
line=$(head -1 ../model/train.gbrt.svm_buffer)
read -a array <<<$line
sum=$((${#array[*]}-1))
echo $sum
tail -2 log.txt >> log2.txt
line=$(head -1 log2.txt)
echo $line
