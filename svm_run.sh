java -cp codes/yep/bin/ libsvm_interface.MakeInput $1 ./model/
./codes/libsvm/svm-scale -l -1 -u 1 -s $1.svm_range ./model/train.$1.svm_buffer > train.$1.svm_buffer.scale
./codes/libsvm/svm-scale -r $1.svm_range test.$1.svm_buffer > test.$1.svm_buffer.scale