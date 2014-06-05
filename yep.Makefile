features/train.txt.yep_EssayLength features/test.txt.yep_EssayLength features/train.txt.yep_StudentReached features/test.txt.yep_StudentReached features/train.txt.yep_Price features/test.txt.yep_Price features/train.txt.yep_PriceSquare features/test.txt.yep_PriceSquare features/train.txt.yep_PovertyLevel features/test.txt.yep_PovertyLevel features/train.txt.yep_GradeLevel features/test.txt.yep_GradeLevel features/train.txt.yep_Fulfillment features/test.txt.yep_Fulfillment features/train.txt.yep_MaxUnitPrize features/test.txt.yep_MaxUnitPrize: data/projectIDMapping data/essays.csv train.txt test.txt
	java -cp ./codes/yep/bin/ feature.MakeFeature yep_EssayLength,yep_StudentReached,yep_Price,yep_PriceSquare,yep_PovertyLevel,yep_GradeLevel,yep_Fulfillment,yep_MaxUnitPrize
features/train.txt.yep_RecentProject features/test.txt.yep_RecentProject features/train.txt.yep_RecentProjectA20 features/test.txt.yep_RecentProjectA20 features/train.txt.yep_RecentProjectPrizeA20 features/test.txt.yep_RecentProjectPrizeA20 features/train.txt.yep_RecentProjectA15 features/test.txt.yep_RecentProjectA15 features/train.txt.yep_RecentProjectA30 features/test.txt.yep_RecentProjectA30 features/train.txt.yep_TeacherRecentProject features/test.txt.yep_TeacherRecentProject features/train.txt.yep_TeacherPastProject features/test.txt.yep_TeacherPastProject features/train.txt.yep_Vendor features/test.txt.yep_Vendor: data/projectIDMapping data/essays.csv train.txt test.txt
	java -cp ./codes/yep/bin/ feature.MakeFeature yep_RecentProject,yep_RecentProjectA20,yep_RecentProjectA15,yep_RecentProjectA30,yep_TeacherRecentProject,yep_TeacherPastProject,yep_Vendor,yep_RecentProjectPrizeA20
features/train.txt.yep_HighestPoverty features/test.txt.yep_HighestPoverty features/train.txt.yep_RecentProjectPovertyA20 features/test.txt.yep_RecentProjectPovertyA20 features/train.txt.yep_RecentProjectEssayA20 features/test.txt.yep_RecentProjectEssayA20: data/projectIDMapping data/essays.csv train.txt test.txt
	java -cp ./codes/yep/bin/ feature.MakeFeature yep_HighestPoverty,yep_RecentProjectPovertyA20,yep_RecentProjectEssayA20
features/train.txt.yep_RecentProjectStateA20 features/test.txt.yep_RecentProjectStateA20: data/projectIDMapping data/essays.csv train.txt test.txt
	java -cp ./codes/yep/bin/ feature.MakeFeature yep_RecentProjectStateA20
features/train.txt.yep_PostDate features/test.txt.yep_PostDate: data/projectIDMapping data/essays.csv train.txt test.txt
	java -cp ./codes/yep/bin/ feature.MakeFeature yep_PostDate
features/train.txt.yep_RecentLatitude features/test.txt.yep_RecentLatitude features/train.txt.yep_RecentLongitude features/test.txt.yep_RecentLongitude: data/projectIDMapping data/essays.csv train.txt test.txt
	java -cp ./codes/yep/bin/ feature.MakeFeature yep_RecentLatitude,yep_RecentLongitude
features/train.txt.yep_EssayParaNum features/test.txt.yep_EssayParaNum: data/projectIDMapping data/essays.csv train.txt test.txt
	java -cp ./codes/yep/bin/ feature.MakeFeature yep_EssayParaNum
features/train.txt.yep_EssayPosWord features/test.txt.yep_EssayPosWord: data/projectIDMapping data/essays.csv train.txt test.txt
	java -cp ./codes/yep/bin/ feature.MakeFeature yep_EssayPosWord
yep_clear:
	rm features/train.txt.yep_*
	rm features/test.txt.yep_*