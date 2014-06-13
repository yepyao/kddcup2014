cd ../xgboost_run/$1/
round=0150
xgboost $1.conf num_round=$round > ../../featureSelection/temp
xgboost $1.conf task=pred model_in=$round.model 
cd ../../featureSelection
java -cp ../codes/yep/bin evaluation.MakeSubmission pred.txt ../test.txt submission.txt ../data/projectIDMapping > result/temp
line=$(head -1 result/temp)
read -a array <<<$line
best=${array[1]}
echo $best
