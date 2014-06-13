round=0150
xgboost ../xgboost_run/$1/$1.conf num_round=$round data="buffer/train.$1.buffer_$2" test:data="buffer/test.$1.buffer_$2"
xgboost ../xgboost_run/$1/$1.conf task=pred model_in=$round.model data="buffer/train.$1.buffer_$2" test:data="buffer/test.$1.buffer_$2"
java -cp ../../codes/yep/bin evaluation.MakeSubmission pred.txt ../../test.txt submission.txt ../../data/projectIDMapping > result/result_$2.txt

line=$(head -1 result.txt)
read -a array <<<$line
echo ${array[1]}