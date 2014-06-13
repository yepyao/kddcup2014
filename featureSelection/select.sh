round=0150
xgboost ../xgboost_run/$1/$1.2.conf num_round=$round data="buffer/train.$1.buffer_$2" test:data="buffer/test.$1.buffer_$2" eval[test]="buffer/test.$1.buffer_$2" eval[trainname]="buffer/train.$1.buffer_$2"
xgboost ../xgboost_run/$1/$1.2.conf task=pred model_in=$round.model data="buffer/train.$1.buffer_$2" test:data="buffer/test.$1.buffer_$2" eval[test]="buffer/test.$1.buffer_$2" eval[trainname]="buffer/train.$1.buffer_$2"
java -cp ../codes/yep/bin evaluation.MakeSubmission pred.txt ../test.txt submission.txt ../data/projectIDMapping > result/temp.$1.$2

line=$(head -1 result/temp.$1.$2)
read -a array <<<$line
echo ${array[1]} > result/result.$1.$2