
#Generate the implicit feedback file
train.txt.imfb test.txt.imfb:train.txt test.txt
	python ./python/mkemptyimfb.py train.txt train.txt.imfb
	python ./python/mkemptyimfb.py test.txt test.txt.imfb


features/train.txt.py_TeacherOwnProjectNum  features/test.txt.py_TeacherOwnProjectNum:data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.TeacherOwnProjectNum data/projectIDMapping data/projects.csv train.txt features/train.txt.TeacherOwnProjectNum test.txt features/test.txt.TeacherOwnProjectNum

