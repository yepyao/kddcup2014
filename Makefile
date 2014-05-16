
#Generate the implicit feedback file
train.txt train.txt.full: data/data_clean data/data_clean
	python ./codes/python/py/genTrain.py data/data_clean train.txt train.txt.full
candidate.txt: train.txt
	python ./codes/python/py/genCandidate.py train.txt candidate.txt
buyCandidate.txt: train.txt
	python ./codes/python/py/genBuyCandidate.py train.txt buyCandidate.txt
allBuyCandidate.txt: data/data_clean
	python ./codes/python/py/genAllBuyCandidate.py data/data_clean allBuyCandidate.txt
noClickCandidate.txt: data/data_clean
	python ./codes/python/py/genNoClickCandidate.py data/data_clean noClickCandidate.txt
test.txt: candidate.txt 
	python ./codes/python/py/genTest.py candidate.txt test.txt

train.txt.imfb test.txt.imfb:train.txt test.txt
	python ./python/mkemptyimfb.py train.txt train.txt.imfb
	python ./python/mkemptyimfb.py test.txt test.txt.imfb
timeDistribution:data/data_clean
	python ./codes/python/py/timeDistribution.py data/data_clean timeDistribution
data/data_clean_orderbyItem data/data_clean_orderbyTime:data/data_clean
	python ./codes/python/py/reorderData.py data/data_clean data/data_clean_orderbyItem data/data_clean_orderbyTime


features/train.txt.his_act_cnt features/test.txt.his_act_cnt:train.txt.full test.txt data/data_clean
	python codes/python/kalen/feature_train_his_act_cnt.py data/data_clean train.txt.full features/train.txt.his_act_cnt $(param1)
	python codes/python/kalen/feature_test_his_act_cnt.py data/data_clean test.txt features/test.txt.his_act_cnt $(param2)
features/train.txt.userBias features/test.txt.userBias:train.txt test.txt 
	python codes/python/py/userBias.py train.txt test.txt features/train.txt.userBias features/test.txt.userBias 
features/train.txt.itemBias features/test.txt.itemBias:train.txt test.txt 
	python codes/python/py/itemBias.py train.txt test.txt features/train.txt.itemBias features/test.txt.itemBias 
