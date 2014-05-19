java -cp codes/yep/bin/ libsvm_interface.MakeInput $1 ./model/
svm-scale -l -1 -u 1 -s $1.svm_range ./model/train.$1.svm_buffer > train.$1.svm_buffer