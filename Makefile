
#Generate the implicit feedback file
train.txt.imfb test.txt.imfb:train.txt test.txt
	python ./python/mkemptyimfb.py train.txt train.txt.imfb
	python ./python/mkemptyimfb.py test.txt test.txt.imfb


features/train.txt.py_TeacherOwnProjectNum  features/test.txt.py_TeacherOwnProjectNum:data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.TeacherOwnProjectNum data/projectIDMapping data/projects.csv train.txt features/train.txt.py_TeacherOwnProjectNum test.txt features/test.txt.py_TeacherOwnProjectNum
features/train.txt.py_Price  features/test.txt.py_Price:data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.Price data/projectIDMapping data/projects.csv train.txt features/train.txt.py_Price test.txt features/test.txt.py_Price
features/train.txt.py_EssayLength  features/test.txt.py_EssayLength:data/projectIDMapping data/essays.csv train.txt test.txt
	java -cp codes/py/bin features.EssayLength data/projectIDMapping data/essays.csv train.txt features/train.txt.py_EssayLength test.txt features/test.txt.py_EssayLength
features/train.txt.py_ResourceNum  features/test.txt.py_ResourceNum:data/projectIDMapping data/resources.csv train.txt test.txt
	java -cp codes/py/bin features.ResourceNum data/projectIDMapping data/resources.csv train.txt features/train.txt.py_ResourceNum test.txt features/test.txt.py_ResourceNum
features/train.txt.py_ResourceTypePos  features/test.txt.py_ResourceTypePos:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.ResourceTypePos data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_ResourceTypePos test.txt features/test.txt.py_ResourceTypePos

#yep
features/train.txt.yep_EssayLength features/test.txt.yep_EssayLength features/train.txt.yep_StudentReached features/test.txt.yep_StudentReached features/train.txt.yep_Price features/test.txt.yep_Price features/train.txt.yep_PriceSquare features/test.txt.yep_PriceSquare: data/projectIDMapping data/essays.csv train.txt test.txt
	java -cp ./codes/yep/bin/ feature.MakeFeature yep_EssayLength,yep_StudentReached,yep_Price,yep_PriceSquare



