round=0150
echo begin to run xgboost
cd ../xgboost_run/$1/
xgboost $1.conf num_round=$round
xgboost $1.conf task=pred model_in=$round.model test:data="../../model/train.$1.svm_buffer"
cp pred.txt pred_train.txt
xgboost $1.conf task=pred model_in=$round.model
cp pred.txt pred_test.txt
echo auc evaluation and make submission
java -cp ../../codes/yep/bin evaluation.MakeSubmission pred.txt ../../test.txt submission.txt ../../data/projectIDMapping >> log.txt
xgboost $1.conf task=dump model_in=$round.model fmap=fmap.txt name_dump=dump.nice.txt

tail -2 log.txt >> log2.txt
line=$(head -1 log2.txt)
read -a array <<<$line
echo ${array[1]}