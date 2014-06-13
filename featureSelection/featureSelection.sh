cd ../xgboost_run/$1/
round=0150
xgboost $1.conf num_round=$round &> ../../featureSelection/temp
xgboost $1.conf task=pred model_in=$round.model &> ../../featureSelection/temp
cd ../../featureSelection
java -cp ../codes/yep/bin evaluation.MakeSubmission pred.txt ../test.txt submission.txt ../data/projectIDMapping > result/temp
line=$(head -1 result/temp)
read -a array <<<$line
best=${array[1]}
echo "best score:"$best
cp ../model/train.$1.svm_buffer buffer/train.$1.buffer
cp ../model/test.$1.svm_buffer buffer/test.$1.buffer
line=$(head -1 ../model/train.$1.svm_buffer)
read -a array <<<$line
sum=$((${#array[*]}-1))
java -cp ../codes/py/bin preprocessing.SplitBuffer buffer/train.$1.buffer $sum
java -cp ../codes/py/bin preprocessing.SplitBuffer buffer/test.$1.buffer $sum
for((i=0;i<sum;i++))
do
    bash select.sh $1 $i &> temps/temp$i
done
wait

java -cp ../codes/py/bin preprocessing.GenNewBuffer result/result.$1 $sum $best buffer/train.$1.buffer buffer/temp.$1.buffer 
mv buffer/train.$1.buffer buffer/train.$1.buffer.old
mv buffer/temp.$1.buffer buffer/train.$1.buffer
java -cp ../codes/py/bin preprocessing.GenNewBuffer buffer/test.$1.buffer $sum $best buffer/test.$1.buffer buffer/temp.$1.buffer > delete
mv buffer/test.$1.buffer buffer/test.$1.buffer.old
mv buffer/temp.$1.buffer buffer/test.$1.buffer
delete=$(head -1 delete)
echo $delete
sum=$(($sum-$delete))
echo $sum