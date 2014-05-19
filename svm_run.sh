echo make svm format input files
java -cp codes/yep/bin/ libsvm_interface.MakeInput $1 ./model/
echo scale features
./codes/libsvm/svm-scale -l -1 -u 1 -s ./model/$1.svm_range ./model/train.$1.svm_buffer > ./model/train.$1.svm_buffer.scale
./codes/libsvm/svm-scale -r ./model/$1.svm_range ./model/test.$1.svm_buffer > ./model/test.$1.svm_buffer.scale

echo begin to train svm
./codes/libsvm/svm-train -c 1 -g 1 -e 1 ./model/train.$1.svm_buffer.scale ./T.buf/$1/svm.model
echo begin to predict by svm model
./codes/libsvm/svm-predict -b 1 ./model/test.$1.svm_buffer.scale ./T.buf/$1/svm.model ./T.buf/$1/svm_pred.txt

echo make submission
java -cp ./codes/yep/bin evaluation.MakeSubmission ./T.buf/$1/svm_pred.txt test.txt ./T.buf/$1/submission.txt ./data/projectIDMapping