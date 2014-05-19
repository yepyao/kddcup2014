include Makefile
model/train.lr.buffer: train.txt train.txt.imfb features/train.txt.py_EssayLength    
	kddcup_combine_ugroup train.txt model/train.lr.buffer   -gd  -g py_EssayLength  -i   -efd   -u   -max_block 20000 -scale_score 1
model/test.lr.buffer: test.txt test.txt.imfb features/test.txt.py_EssayLength    
	kddcup_combine_ugroup test.txt model/test.lr.buffer   -gd  -g py_EssayLength  -i   -efd   -u   -max_block 20000 -scale_score 1
