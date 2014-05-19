echo make svm format input files
java -cp codes/yep/bin/ libsvm_interface.MakeInput $1 ./model/
echo scale features
./codes/libsvm/svm-scale -l -1 -u 1 -s ./model/$1.svm_range ./model/train.$1.svm_buffer > ./model/train.$1.svm_buffer.scale
./codes/libsvm/svm-scale -r ./model/$1.svm_range ./model/test.$1.svm_buffer > ./model/test.$1.svm_buffer.scale