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
features/train.txt.py_ResourceTypePosRatio  features/test.txt.py_ResourceTypePosRatio:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.ResourceTypePosRatio data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_ResourceTypePosRatio test.txt features/test.txt.py_ResourceTypePosRatio
features/train.txt.py_ShortDescriptionLength  features/test.txt.py_ShortDescriptionLength:data/projectIDMapping data/essays.csv train.txt test.txt
	java -cp codes/py/bin features.ShortDescriptionLength data/projectIDMapping data/essays.csv train.txt features/train.txt.py_ShortDescriptionLength test.txt features/test.txt.py_ShortDescriptionLength
features/train.txt.py_NeedStatementLength  features/test.txt.py_NeedStatementLength:data/projectIDMapping data/essays.csv train.txt test.txt
	java -cp codes/py/bin features.NeedStatementLength data/projectIDMapping data/essays.csv train.txt features/train.txt.py_NeedStatementLength test.txt features/test.txt.py_NeedStatementLength
features/train.txt.py_TitleLength  features/test.txt.py_TitleLength:data/projectIDMapping data/essays.csv train.txt test.txt
	java -cp codes/py/bin features.TitleLength data/projectIDMapping data/essays.csv train.txt features/train.txt.py_TitleLength test.txt features/test.txt.py_TitleLength
features/train.txt.py_TeacherAccPosRatio  features/test.txt.py_TeacherAccPosRatio:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.TeacherAccPosRatio data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_TeacherAccPosRatio test.txt features/test.txt.py_TeacherAccPosRatio
features/train.txt.py_TeacherAccPosRatio2  features/test.txt.py_TeacherAccPosRatio2:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.TeacherAccPosRatio2 data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_TeacherAccPosRatio2 test.txt features/test.txt.py_TeacherAccPosRatio2
features/train.txt.py_SchoolIDPosRatio  features/test.txt.py_SchoolIDPosRatio:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.SchoolIDPosRatio data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SchoolIDPosRatio test.txt features/test.txt.py_SchoolIDPosRatio
features/train.txt.py_SchoolIDPosRatio2  features/test.txt.py_SchoolIDPosRatio2:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.SchoolIDPosRatio2 data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SchoolIDPosRatio2 test.txt features/test.txt.py_SchoolIDPosRatio2
features/train.txt.py_TeacherAcc  features/test.txt.py_TeacherAcc:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.TeacherAcc data/projectIDMapping data/projects.csv train.txt features/train.txt.py_TeacherAcc test.txt features/test.txt.py_TeacherAcc
features/train.txt.py_SchoolNcesid  features/test.txt.py_SchoolNcesid:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.SchoolNcesid data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SchoolNcesid test.txt features/test.txt.py_SchoolNcesid
features/train.txt.py_SchoolCity  features/test.txt.py_SchoolCity:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.SchoolCity data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SchoolCity test.txt features/test.txt.py_SchoolCity
features/train.txt.py_SchoolCityPosRatio  features/test.txt.py_SchoolCityPosRatio:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.SchoolCityPosRatio data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SchoolCityPosRatio test.txt features/test.txt.py_SchoolCityPosRatio





