include Makefile
model/train.py.all.buffer: train.txt train.txt.imfb  features/train.txt.py_TeacherOwnProjectNum   
	kddcup_combine_ugroup train.txt model/train.py.all.buffer   -gd  -g   -i   -efd   -u py_TeacherOwnProjectNum  -max_block 20000 -scale_score 1
model/test.py.all.buffer: test.txt test.txt.imfb  features/test.txt.py_TeacherOwnProjectNum   
	kddcup_combine_ugroup test.txt model/test.py.all.buffer   -gd  -g   -i   -efd   -u py_TeacherOwnProjectNum  -max_block 20000 -scale_score 1
