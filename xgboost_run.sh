#!/bin/bash
if [ $# -ne 1 ]
then
  echo "Usage: <conf name>"
  exit -1
fi
rm ./model/train.$1.*
rm ./model/test.$1.*

echo make feature
./T.buf/mkbuf.sh $1 Makefile

echo make libsvm-xgboost format input files
java -cp codes/yep/bin/ libsvm_interface.MakeInput $1 ./model/

round=0150
echo begin to run xgboost
cd ./xgboost_run/$1/
xgboost $1.conf num_round=$round
xgboost $1.conf task=pred model_in=$round.model test:data="../../model/train.$1.svm_buffer"
cp pred.txt pred_train.txt
xgboost $1.conf task=pred model_in=$round.model
cp pred.txt pred_test.txt
echo auc evaluation and make submission
java -cp ../../codes/yep/bin evaluation.MakeSubmission pred.txt ../../test.txt submission.txt ../../data/projectIDMapping

xgboost $1.conf task=dump model_in=$round.model fmap=fmap.txt name_dump=dump.nice.txt
cd -



