features/train.txt.py_TeacherOwnProjectNum  features/test.txt.py_TeacherOwnProjectNum:data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.TeacherOwnProjectNum data/projectIDMapping data/projects.csv train.txt features/train.txt.py_TeacherOwnProjectNum test.txt features/test.txt.py_TeacherOwnProjectNum
features/train.txt.py_Price features/test.txt.py_Price:data/projectIDMapping data/projects.csv train.txt test.txt
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
features/train.txt.py_SchoolCountyPosRatioCount  features/test.txt.py_SchoolCountyPosRatioCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.TeacherAccPosRatioCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SchoolCountyPosRatioCount test.txt features/test.txt.py_SchoolCountyPosRatioCount 11
features/train.txt.py_SchoolCharterPosRatioCount  features/test.txt.py_SchoolCharterPosRatioCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.TeacherAccPosRatioCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SchoolCharterPosRatioCount test.txt features/test.txt.py_SchoolCharterPosRatioCount 12
features/train.txt.py_SchoolMagnetPosRatioCount  features/test.txt.py_SchoolMagnetPosRatioCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.TeacherAccPosRatioCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SchoolMagnetPosRatioCount test.txt features/test.txt.py_SchoolMagnetPosRatioCount 13
features/train.txt.py_SchoolYearRoundPosRatioCount  features/test.txt.py_SchoolYearRoundPosRatioCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.TeacherAccPosRatioCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SchoolYearRoundPosRatioCount test.txt features/test.txt.py_SchoolYearRoundPosRatioCount 14
features/train.txt.py_SchoolNlnsPosRatioCount  features/test.txt.py_SchoolNlnsPosRatioCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.TeacherAccPosRatioCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SchoolNlnsPosRatioCount test.txt features/test.txt.py_SchoolNlnsPosRatioCount 15
features/train.txt.py_SchoolKippPosRatioCount  features/test.txt.py_SchoolKippPosRatioCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.TeacherAccPosRatioCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SchoolKippPosRatioCount test.txt features/test.txt.py_SchoolKippPosRatioCount 16
features/train.txt.py_SchoolCharterReadyPromisePosRatioCount  features/test.txt.py_SchoolCharterReadyPromisePosRatioCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.TeacherAccPosRatioCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SchoolCharterReadyPromisePosRatioCount test.txt features/test.txt.py_SchoolCharterReadyPromisePosRatioCount 17
features/train.txt.py_TeacherPrefixPosRatioCount  features/test.txt.py_TeacherPrefixPosRatioCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.TeacherAccPosRatioCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_TeacherPrefixPosRatioCount test.txt features/test.txt.py_TeacherPrefixPosRatioCount 18
features/train.txt.py_TeacherTeachForAmericaPosRatioCount  features/test.txt.py_TeacherTeachForAmericaPosRatioCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.TeacherAccPosRatioCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_TeacherTeachForAmericaPosRatioCount test.txt features/test.txt.py_TeacherTeachForAmericaPosRatioCount 19
features/train.txt.py_TeacherNyTeachingFellowPosRatioCount  features/test.txt.py_TeacherNyTeachingFellowPosRatioCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.TeacherAccPosRatioCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_TeacherNyTeachingFellowPosRatioCount test.txt features/test.txt.py_TeacherNyTeachingFellowPosRatioCount 20
features/train.txt.py_PrimaryFocusSubjectPosRatioCount  features/test.txt.py_PrimaryFocusSubjectPosRatioCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.TeacherAccPosRatioCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_PrimaryFocusSubjectPosRatioCount test.txt features/test.txt.py_PrimaryFocusSubjectPosRatioCount 21
features/train.txt.py_PrimaryFocusAreaPosRatioCount  features/test.txt.py_PrimaryFocusAreaPosRatioCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.TeacherAccPosRatioCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_PrimaryFocusAreaPosRatioCount test.txt features/test.txt.py_PrimaryFocusAreaPosRatioCount 22
features/train.txt.py_SecondFocusSubjectPosRatioCount  features/test.txt.py_SecondFocusSubjectPosRatioCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.TeacherAccPosRatioCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SecondFocusSubjectPosRatioCount test.txt features/test.txt.py_SecondFocusSubjectPosRatioCount 23
features/train.txt.py_SecondFocusAreaPosRatioCount  features/test.txt.py_SecondFocusAreaPosRatioCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.TeacherAccPosRatioCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SecondFocusAreaPosRatioCount test.txt features/test.txt.py_SecondFocusAreaPosRatioCount 24
features/train.txt.py_PovertyLevelPosRatioCount  features/test.txt.py_PovertyLevelPosRatioCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.TeacherAccPosRatioCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_PovertyLevelPosRatioCount test.txt features/test.txt.py_PovertyLevelPosRatioCount 26
features/train.txt.py_GradeLevelPosRatioCount  features/test.txt.py_GradeLevelPosRatioCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.TeacherAccPosRatioCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_GradeLevelPosRatioCount test.txt features/test.txt.py_GradeLevelPosRatioCount 27
features/train.txt.py_EligibleDoubleYourImpactMatchPosRatioCount  features/test.txt.py_EligibleDoubleYourImpactMatchPosRatioCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.TeacherAccPosRatioCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_EligibleDoubleYourImpactMatchPosRatioCount test.txt features/test.txt.py_EligibleDoubleYourImpactMatchPosRatioCount 32
features/train.txt.py_EligibleAlmostHomeMatchPosRatioCount  features/test.txt.py_EligibleAlmostHomeMatchPosRatioCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.TeacherAccPosRatioCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_EligibleAlmostHomeMatchPosRatioCount test.txt features/test.txt.py_EligibleAlmostHomeMatchPosRatioCount 33
features/train.txt.py_Latitude features/test.txt.py_Latitude:data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.Latitude data/projectIDMapping data/projects.csv train.txt features/train.txt.py_Latitude test.txt features/test.txt.py_Latitude 15
features/train.txt.py_Longitude features/test.txt.py_Longitude:data/projectIDMapping data/projects.csv train.txt test.txt 
	java -cp codes/py/bin features.Longitude data/projectIDMapping data/projects.csv train.txt features/train.txt.py_Longitude test.txt features/test.txt.py_Longitude 20
features/train.txt.py_Month1 features/test.txt.py_Month1:data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.Month1 data/projectIDMapping data/projects.csv train.txt features/train.txt.py_Month1 test.txt features/test.txt.py_Month1
features/train.txt.py_EssayWordNum  features/test.txt.py_EssayWordNum:data/projectIDMapping data/essays.csv train.txt test.txt
	java -cp codes/py/bin features.EssayWordNum data/projectIDMapping data/essays.csv train.txt features/train.txt.py_EssayWordNum test.txt features/test.txt.py_EssayWordNum
features/train.txt.py_MonthCountPosRatioCount  features/test.txt.py_MonthCountPosRatioCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.MonthCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_MonthCountPosRatioCount test.txt features/test.txt.py_MonthCountPosRatioCount 34
features/train.txt.py_TeacherAccTeacherReferedDonorCount  features/test.txt.py_TeacherAccTeacherReferedDonorCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.LearningForCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_TeacherAccTeacherReferedDonorCount test.txt features/test.txt.py_TeacherAccTeacherReferedDonorCount 1 2
features/train.txt.py_TitleWordNum  features/test.txt.py_TitleWordNum:data/projectIDMapping data/essays.csv train.txt test.txt
	java -cp codes/py/bin features.TitleWordNum data/projectIDMapping data/essays.csv train.txt features/train.txt.py_TitleWordNum test.txt features/test.txt.py_TitleWordNum
features/train.txt.py_EssayTopicModel features/test.txt.py_EssayTopicModel:data/projectIDMapping data/topic/essay-topic-distributions.csv train.txt test.txt
	java -cp codes/py/bin features.EssayTopicModel data/projectIDMapping data/topic/essay-topic-distributions.csv train.txt features/train.txt.py_EssayTopicModel test.txt features/test.txt.py_EssayTopicModel 30
features/train.txt.py_EssayWordPosCount  features/test.txt.py_EssayWordPosCount:data/outcomes.csv data/projectIDMapping data/essays.csv train.txt test.txt
	java -cp codes/py/bin features.EssayWordPosCount data/outcomes.csv data/projectIDMapping data/essays.csv train.txt features/train.txt.py_EssayWordPosCount test.txt features/test.txt.py_EssayWordPosCount 5 0.05 Word.txt
features/train.txt.py_SchoolCharterHD  features/test.txt.py_SchoolCharterHD:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.HighDimFeature data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SchoolCharterHD test.txt features/test.txt.py_SchoolCharterHD 12
features/train.txt.py_SchoolMagnetHD  features/test.txt.py_SchoolMagnetHD:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.HighDimFeature data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SchoolMagnetHD test.txt features/test.txt.py_SchoolMagnetHD 13
features/train.txt.py_YearRoundHD  features/test.txt.py_YearRoundHD:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.HighDimFeature data/projectIDMapping data/projects.csv train.txt features/train.txt.py_YearRoundHD test.txt features/test.txt.py_YearRoundHD 14
features/train.txt.py_TeacherPrefixHD  features/test.txt.py_TeacherPrefixHD:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.HighDimFeature data/projectIDMapping data/projects.csv train.txt features/train.txt.py_TeacherPrefixHD test.txt features/test.txt.py_TeacherPrefixHD 18
features/train.txt.py_PrimaryFocusSubjectHD  features/test.txt.py_PrimaryFocusSubjectHD:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.HighDimFeature data/projectIDMapping data/projects.csv train.txt features/train.txt.py_PrimaryFocusSubjectHD test.txt features/test.txt.py_PrimaryFocusSubjectHD 21
features/train.txt.py_PrimaryFocusAreaHD  features/test.txt.py_PrimaryFocusAreaHD:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.HighDimFeature data/projectIDMapping data/projects.csv train.txt features/train.txt.py_PrimaryFocusAreaHD test.txt features/test.txt.py_PrimaryFocusAreaHD 22
features/train.txt.py_ResourceItemNum  features/test.txt.py_ResourceItemNum:data/projectIDMapping data/resources.csv train.txt test.txt
	java -cp codes/py/bin features.ResourceItemNum data/projectIDMapping data/resources.csv train.txt features/train.txt.py_ResourceItemNum test.txt features/test.txt.py_ResourceItemNum
features/train.txt.py_SecondFocusSubjectHD  features/test.txt.py_SecondFocusSubjectHD:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.HighDimFeature data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SecondFocusSubjectHD test.txt features/test.txt.py_SecondFocusSubjectHD 23
features/train.txt.py_SecondFocusAreaHD  features/test.txt.py_SecondFocusAreaHD:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.HighDimFeature data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SecondFocusAreaHD test.txt features/test.txt.py_SecondFocusAreaHD 24
features/train.txt.py_ResourceTypeHD  features/test.txt.py_ResourceTypeHD:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.HighDimFeature data/projectIDMapping data/projects.csv train.txt features/train.txt.py_ResourceTypeHD test.txt features/test.txt.py_ResourceTypeHD 25
features/train.txt.py_PovertyLevelHD  features/test.txt.py_PovertyLevelHD:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.HighDimFeature data/projectIDMapping data/projects.csv train.txt features/train.txt.py_PovertyLevelHD test.txt features/test.txt.py_PovertyLevelHD 26
features/train.txt.py_TeacherAccFullyFundedCount  features/test.txt.py_TeacherAccFullyFundedCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.LearningForCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_TeacherAccFullyFundedCount test.txt features/test.txt.py_TeacherAccFullyFundedCount 1 3
features/train.txt.py_TeacherAccGreenDonationCount  features/test.txt.py_TeacherAccGreenDonationCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.LearningForCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_TeacherAccGreenDonationCount test.txt features/test.txt.py_TeacherAccGreenDonationCount 1 4
features/train.txt.py_TeacherAccGreatChatCount  features/test.txt.py_TeacherAccGreatChatCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.LearningForCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_TeacherAccGreatChatCount test.txt features/test.txt.py_TeacherAccGreatChatCount 1 5
features/train.txt.py_TeacherAccThreeOrMoreCount  features/test.txt.py_TeacherAccThreeOrMoreCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.LearningForCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_TeacherAccThreeOrMoreCount test.txt features/test.txt.py_TeacherAccThreeOrMoreCount 1 6
features/train.txt.py_TeacherAccOneNonTeacherCount  features/test.txt.py_TeacherAccOneNonTeacherCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.LearningForCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_TeacherAccOneNonTeacherCount test.txt features/test.txt.py_TeacherAccOneNonTeacherCount 1 7
features/train.txt.py_TeacherAccDonationFromCount  features/test.txt.py_TeacherAccDonationFromCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.LearningForCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_TeacherAccDonationFromCount test.txt features/test.txt.py_TeacherAccDonationFromCount 1 8
features/train.txt.py_SchoolCityTotalCount  features/test.txt.py_SchoolCityTotalCount:data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.SchoolCityTotalCount data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SchoolCityTotalCount test.txt features/test.txt.py_SchoolCityTotalCount 6
features/train.txt.py_SchoolCityTeacherReferedDonorCount  features/test.txt.py_SchoolCityTeacherReferedDonorCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.LearningForCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SchoolCityTeacherReferedDonorCount test.txt features/test.txt.py_SchoolCityTeacherReferedDonorCount 6 2
features/train.txt.py_SchoolCityFullyFundedCount  features/test.txt.py_SchoolCityFullyFundedCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.LearningForCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SchoolCityFullyFundedCount test.txt features/test.txt.py_SchoolCityFullyFundedCount 6 3
features/train.txt.py_SchoolCityGreenDonationCount  features/test.txt.py_SchoolCityGreenDonationCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.LearningForCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SchoolCityGreenDonationCount test.txt features/test.txt.py_SchoolCityGreenDonationCount 6 4
features/train.txt.py_ResourceVendorNum  features/test.txt.py_ResourceVendorNum:data/projectIDMapping data/resources.csv train.txt test.txt
	java -cp codes/py/bin features.ResourceVendorNum data/projectIDMapping data/resources.csv train.txt features/train.txt.py_ResourceVendorNum test.txt features/test.txt.py_ResourceVendorNum
features/train.txt.py_ResourceVendorPosCount  features/test.txt.py_ResourceVendorPosCount:data/outcomes.csv data/projectIDMapping data/resources.csv train.txt test.txt
	java -cp codes/py/bin features.ResourceVendorPosCount data/outcomes.csv data/projectIDMapping data/resources.csv train.txt features/train.txt.py_ResourceVendorPosCount test.txt features/test.txt.py_ResourceVendorPosCount 2
features/train.txt.py_TeacherRecentProject  features/test.txt.py_TeacherRecentProject:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.TeacherRecentProject data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_TeacherRecentProject test.txt features/test.txt.py_TeacherRecentProject 1
features/train.txt.py_StudentReachedPosRatioCount  features/test.txt.py_StudentReachedPosRatioCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.TeacherAccPosRatioCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_StudentReachedPosRatioCount test.txt features/test.txt.py_StudentReachedPosRatioCount 31
features/train.txt.py_FulfillmentPosRatioCount  features/test.txt.py_FulfillmentPosRatioCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.TeacherAccPosRatioCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_FulfillmentPosRatioCount test.txt features/test.txt.py_FulfillmentPosRatioCount 28
features/train.txt.py_PriceStudent features/test.txt.py_PriceStudent:data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.PriceStudent data/projectIDMapping data/projects.csv train.txt features/train.txt.py_PriceStudent test.txt features/test.txt.py_PriceStudent
features/train.txt.py_PriceGap features/test.txt.py_PriceGap:data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.PriceGap data/projectIDMapping data/projects.csv train.txt features/train.txt.py_PriceGap test.txt features/test.txt.py_PriceGap
features/train.txt.py_TeacherAccHD  features/test.txt.py_TeacherAccHD:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.HighDimFeature data/projectIDMapping data/projects.csv train.txt features/train.txt.py_TeacherAccHD test.txt features/test.txt.py_TeacherAccHD 1
features/train.txt.py_TeacherDonationNumber  features/test.txt.py_TeacherDonationNumber:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.TeacherDonationNumber data/projectIDMapping data/projects.csv data/donations.csv train.txt features/train.txt.py_TeacherDonationNumber test.txt features/test.txt.py_TeacherDonationNumber
features/train.txt.py_SchoolIDTeacherReferedDonorCount  features/test.txt.py_SchoolIDTeacherReferedDonorCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.LearningForCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SchoolIDTeacherReferedDonorCount test.txt features/test.txt.py_SchoolIDTeacherReferedDonorCount 2 2
features/train.txt.py_TeacherDonor  features/test.txt.py_TeacherDonor:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.TeacherDonor data/projectIDMapping data/projects.csv data/donations.csv train.txt features/train.txt.py_TeacherDonor test.txt features/test.txt.py_TeacherDonor
features/train.txt.py_TeacherAccCountByTime  features/test.txt.py_TeacherAccCountByTime:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.CountByTime data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_TeacherAccCountByTime test.txt features/test.txt.py_TeacherAccCountByTime 1 2
features/train.txt.py_LongitudeCount  features/test.txt.py_LongitudeCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.LongitudeCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_LongitudeCount test.txt features/test.txt.py_LongitudeCount 5 2
features/train.txt.py_ResourcePrice  features/test.txt.py_ResourcePrice:data/projectIDMapping data/resources.csv train.txt test.txt
	java -cp codes/py/bin features.ResourcePrice data/projectIDMapping data/resources.csv train.txt features/train.txt.py_ResourcePrice test.txt features/test.txt.py_ResourcePrice
features/train.txt.py_ResourcePriceEmpty  features/test.txt.py_ResourcePriceEmpty:data/projectIDMapping data/resources.csv train.txt test.txt
	java -cp codes/py/bin features.ResourcePriceEmpty data/projectIDMapping data/resources.csv train.txt features/train.txt.py_ResourcePriceEmpty test.txt features/test.txt.py_ResourcePriceEmpty
features/train.txt.py_TeacherAccExcitingCount  features/test.txt.py_TeacherAccExcitingCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.LearningForCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_TeacherAccExcitingCount test.txt features/test.txt.py_TeacherAccExcitingCount 1 1 2
features/train.txt.py_SchoolCityExcitingCount  features/test.txt.py_SchoolCityExcitingCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.LearningForCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SchoolCityExcitingCount test.txt features/test.txt.py_SchoolCityExcitingCount 6 1 2
features/train.txt.py_ResourceTypeExcitingCount  features/test.txt.py_ResourceTypeExcitingCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.LearningForCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_ResourceTypeExcitingCount test.txt features/test.txt.py_ResourceTypeExcitingCount 25 1 2
features/train.txt.py_SchoolIDExcitingCount  features/test.txt.py_SchoolIDExcitingCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.LearningForCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SchoolIDExcitingCount test.txt features/test.txt.py_SchoolIDExcitingCount 2 1 2
features/train.txt.py_SchoolNcesIDExcitingCount  features/test.txt.py_SchoolNcesIDExcitingCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.LearningForCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SchoolNcesIDExcitingCount test.txt features/test.txt.py_SchoolNcesIDExcitingCount 3 1 2
features/train.txt.py_SchoolStateExcitingCount  features/test.txt.py_SchoolStateExcitingCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.LearningForCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SchoolStateExcitingCount test.txt features/test.txt.py_SchoolStateExcitingCount 7 1 2
features/train.txt.py_SchoolZipExcitingCount  features/test.txt.py_SchoolZipExcitingCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.LearningForCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SchoolZipExcitingCount test.txt features/test.txt.py_SchoolZipExcitingCount 8 1 2
features/train.txt.py_SchoolMetroExcitingCount  features/test.txt.py_SchoolMetroExcitingCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.LearningForCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SchoolMetroExcitingCount test.txt features/test.txt.py_SchoolMetroExcitingCount 9 1 2
features/train.txt.py_SchoolDistrictExcitingCount  features/test.txt.py_SchoolDistrictExcitingCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.LearningForCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SchoolDistrictExcitingCount test.txt features/test.txt.py_SchoolDistrictExcitingCount 10 1 2
features/train.txt.py_SchoolCountyExcitingCount  features/test.txt.py_SchoolCountyExcitingCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.LearningForCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SchoolCountyExcitingCount test.txt features/test.txt.py_SchoolCountyExcitingCount 11 1 2
features/train.txt.py_SchoolCharterExcitingCount  features/test.txt.py_SchoolCharterExcitingCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.LearningForCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SchoolCharterExcitingCount test.txt features/test.txt.py_SchoolCharterExcitingCount 12 1 2
features/train.txt.py_SchoolMagnetExcitingCount  features/test.txt.py_SchoolMagnetExcitingCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.LearningForCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SchoolMagnetExcitingCount test.txt features/test.txt.py_SchoolMagnetExcitingCount 13 1 2
features/train.txt.py_SchoolYearRoundExcitingCount  features/test.txt.py_SchoolYearRoundExcitingCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.LearningForCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SchoolYearRoundExcitingCount test.txt features/test.txt.py_SchoolYearRoundExcitingCount 14 1 2
features/train.txt.py_SchoolNlnsExcitingCount  features/test.txt.py_SchoolNlnsExcitingCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.LearningForCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SchoolNlnsExcitingCount test.txt features/test.txt.py_SchoolNlnsExcitingCount 15 1 2
features/train.txt.py_SchoolKippExcitingCount  features/test.txt.py_SchoolKippExcitingCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.LearningForCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SchoolKippExcitingCount test.txt features/test.txt.py_SchoolKippExcitingCount 16 1 2
features/train.txt.py_SchoolCharterPromiseExcitingCount  features/test.txt.py_SchoolCharterPromiseExcitingCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.LearningForCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SchoolCharterPromiseExcitingCount test.txt features/test.txt.py_SchoolCharterPromiseExcitingCount 17 1 2
features/train.txt.py_TeacherPrefixExcitingCount  features/test.txt.py_TeacherPrefixExcitingCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.LearningForCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_TeacherPrefixExcitingCount test.txt features/test.txt.py_TeacherPrefixExcitingCount 18 1 2
features/train.txt.py_TeacherTeachForAmericaExcitingCount  features/test.txt.py_TeacherTeachForAmericaExcitingCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.LearningForCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_TeacherTeachForAmericaExcitingCount test.txt features/test.txt.py_TeacherTeachForAmericaExcitingCount 19 1 2
features/train.txt.py_TeacherNyTeachingFellowExcitingCount  features/test.txt.py_TeacherNyTeachingFellowExcitingCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.LearningForCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_TeacherNyTeachingFellowExcitingCount test.txt features/test.txt.py_TeacherNyTeachingFellowExcitingCount 20 1 2
features/train.txt.py_PrimaryFocusSubjectExcitingCount  features/test.txt.py_PrimaryFocusSubjectExcitingCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.LearningForCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_PrimaryFocusSubjectExcitingCount test.txt features/test.txt.py_PrimaryFocusSubjectExcitingCount 21 1 2
features/train.txt.py_PrimaryFocusAreaExcitingCount  features/test.txt.py_PrimaryFocusAreaExcitingCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.LearningForCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_PrimaryFocusAreaExcitingCount test.txt features/test.txt.py_PrimaryFocusAreaExcitingCount 22 1 2
features/train.txt.py_SecondaryFocusSubjectExcitingCount  features/test.txt.py_SecondaryFocusSubjectExcitingCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.LearningForCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SecondaryFocusSubjectExcitingCount test.txt features/test.txt.py_SecondaryFocusSubjectExcitingCount 23 1 2
features/train.txt.py_SecondaryFocusAreaExcitingCount  features/test.txt.py_SecondaryFocusAreaExcitingCount:data/outcomes.csv data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.LearningForCount data/outcomes.csv data/projectIDMapping data/projects.csv train.txt features/train.txt.py_SecondaryFocusAreaExcitingCount test.txt features/test.txt.py_SecondaryFocusAreaExcitingCount 24 1 2










































