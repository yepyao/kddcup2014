line=$(head -1 ../model/train.$1.svm_buffer)
read -a array <<<$line
sum=$((${#array[*]}-1))
echo $sum
for ((i=0;i<sum;i++))
do
    echo $i
done
