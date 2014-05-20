echo make libsvm-xgboost format input files
java -cp codes/yep/bin/ libsvm_interface.MakeInput $1 ./model/

$round = 200
echo begin to run xgboost
cd ./xgboost_run/$1/
xgboost $1.conf num_round=$round
xgboost $1.conf task=pred model_in=00$round.model
cd -

