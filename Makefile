
#Generate the implicit feedback file
data/train data/test data/projectIDMapping:data/projects.csv 
	java -cp codes/py/bin preprocessing.genTrainAndTest data/projects.csv data/train data/test data/projectIDMapping

train.txt test.txt:data/outcomes.csv data/train data/projectIDMapping
	java -cp codes/py/bin preprocessing.SplitTrainByTime data/outcomes.csv data/train data/projectIDMapping train.txt test.txt

train.txt.imfb test.txt.imfb:train.txt test.txt
	python ./python/mkemptyimfb.py train.txt train.txt.imfb
	python ./python/mkemptyimfb.py test.txt test.txt.imfb


include py.Makefile
include yep.Makefile



