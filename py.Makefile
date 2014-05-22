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
features/train.txt.py_ResourceTypePosRatio2  features/test.txt.py_ResourceTypePosRatio2:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.TeacherAccPosRatio4 data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_ResourceTypePosRatio2 test.txt features/test.txt.py_ResourceTypePosRatio2 25

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
features/train.txt.py_TeacherAccPosRatio3  features/test.txt.py_TeacherAccPosRatio3:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.TeacherAccPosRatio3 data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_TeacherAccPosRatio3 test.txt features/test.txt.py_TeacherAccPosRatio3
features/train.txt.py_TeacherAccPosRatio4  features/test.txt.py_TeacherAccPosRatio4:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.TeacherAccPosRatio4 data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_TeacherAccPosRatio4 test.txt features/test.txt.py_TeacherAccPosRatio4 1
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
features/train.txt.py_SchoolStatePosRatio  features/test.txt.py_SchoolStatePosRatio:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.SchoolStatePosRatio data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SchoolStatePosRatio test.txt features/test.txt.py_SchoolStatePosRatio
features/train.txt.py_SchoolZipPosRatio  features/test.txt.py_SchoolZipPosRatio:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.SchoolZipPosRatio data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SchoolZipPosRatio test.txt features/test.txt.py_SchoolZipPosRatio
features/train.txt.py_SchoolCharter  features/test.txt.py_SchoolCharter:data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.SchoolCharter data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SchoolCharter test.txt features/test.txt.py_SchoolCharter
features/train.txt.py_SchoolMagnet  features/test.txt.py_SchoolMagnet:data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.SchoolMagnet data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SchoolMagnet test.txt features/test.txt.py_SchoolMagnet
features/train.txt.py_SchoolYearRound  features/test.txt.py_SchoolYearRound:data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.SchoolYearRound data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SchoolYearRound test.txt features/test.txt.py_SchoolYearRound
features/train.txt.py_SchoolNlns  features/test.txt.py_SchoolNlns:data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.SchoolNlns data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SchoolNlns test.txt features/test.txt.py_SchoolNlns
features/train.txt.py_SchoolKipp  features/test.txt.py_SchoolKipp:data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.SchoolKipp data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SchoolKipp test.txt features/test.txt.py_SchoolKipp
features/train.txt.py_SchoolCharterReadyPromise  features/test.txt.py_SchoolCharterReadyPromise:data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.SchoolCharterReadyPromise data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SchoolCharterReadyPromise test.txt features/test.txt.py_SchoolCharterReadyPromise
features/train.txt.py_TeacherPrefix  features/test.txt.py_TeacherPrefix:data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.TeacherPrefix data/projectIDMapping data/projects.csv train.txt features/train.txt.py_TeacherPrefix test.txt features/test.txt.py_TeacherPrefix
features/train.txt.py_TeacherTeachForAmerica  features/test.txt.py_TeacherTeachForAmerica:data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.TeacherTeachForAmerica data/projectIDMapping data/projects.csv train.txt features/train.txt.py_TeacherTeachForAmerica test.txt features/test.txt.py_TeacherTeachForAmerica
features/train.txt.py_TeacherNyTeachingFellow  features/test.txt.py_TeacherNyTeachingFellow:data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.TeacherNyTeachingFellow data/projectIDMapping data/projects.csv train.txt features/train.txt.py_TeacherNyTeachingFellow test.txt features/test.txt.py_TeacherNyTeachingFellow
features/train.txt.py_PrimaryFocusSubject  features/test.txt.py_PrimaryFocusSubject:data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.PrimaryFocusSubject data/projectIDMapping data/projects.csv train.txt features/train.txt.py_PrimaryFocusSubject test.txt features/test.txt.py_PrimaryFocusSubject
features/train.txt.py_PrimaryFocusSubjectPosRatio  features/test.txt.py_PrimaryFocusSubjectPosRatio:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.PrimaryFocusSubjectPosRatio data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_PrimaryFocusSubjectPosRatio test.txt features/test.txt.py_PrimaryFocusSubjectPosRatio
features/train.txt.py_TeacherAccPosRatioCount  features/test.txt.py_TeacherAccPosRatioCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.TeacherAccPosRatioCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_TeacherAccPosRatioCount test.txt features/test.txt.py_TeacherAccPosRatioCount 1
features/train.txt.py_SchoolCityPosRatioCount  features/test.txt.py_SchoolCityPosRatioCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.TeacherAccPosRatioCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SchoolCityPosRatioCount test.txt features/test.txt.py_SchoolCityPosRatioCount 6
features/train.txt.py_ResourceTypePosRatioCount  features/test.txt.py_ResourceTypePosRatioCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.TeacherAccPosRatioCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_ResourceTypePosRatioCount test.txt features/test.txt.py_ResourceTypePosRatioCount 25
features/train.txt.py_SchoolIDPosRatioCount  features/test.txt.py_SchoolIDPosRatioCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.TeacherAccPosRatioCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SchoolIDPosRatioCount test.txt features/test.txt.py_SchoolIDPosRatioCount 2
features/train.txt.py_SchoolNcesidPosRatioCount  features/test.txt.py_SchoolNcesidPosRatioCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.TeacherAccPosRatioCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SchoolNcesidPosRatioCount test.txt features/test.txt.py_SchoolNcesidPosRatioCount 3
features/train.txt.py_SchoolStatePosRatioCount  features/test.txt.py_SchoolStatePosRatioCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.TeacherAccPosRatioCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SchoolStatePosRatioCount test.txt features/test.txt.py_SchoolStatePosRatioCount 7
features/train.txt.py_SchoolZipPosRatioCount  features/test.txt.py_SchoolZipPosRatioCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.TeacherAccPosRatioCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SchoolZipPosRatioCount test.txt features/test.txt.py_SchoolZipPosRatioCount 8
features/train.txt.py_SchoolMetroPosRatioCount  features/test.txt.py_SchoolMetroPosRatioCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.TeacherAccPosRatioCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SchoolMetroPosRatioCount test.txt features/test.txt.py_SchoolMetroPosRatioCount 9
features/train.txt.py_SchoolDistrictPosRatioCount  features/test.txt.py_SchoolDistrictPosRatioCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.TeacherAccPosRatioCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SchoolDistrictPosRatioCount test.txt features/test.txt.py_SchoolDistrictPosRatioCount 10

























