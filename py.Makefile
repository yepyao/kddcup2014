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
	java -cp codes/py/bin features.Latitude data/projectIDMapping data/projects.csv train.txt features/train.txt.py_Latitude test.txt features/test.txt.py_Latitude
features/train.txt.py_Longitude features/test.txt.py_Longitude:data/projectIDMapping data/projects.csv train.txt test.txt
	java -cp codes/py/bin features.Longitude data/projectIDMapping data/projects.csv train.txt features/train.txt.py_Longitude test.txt features/test.txt.py_Longitude
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















































