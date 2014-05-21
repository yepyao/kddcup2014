features/train.txt.yep_EssayLength features/test.txt.yep_EssayLength features/train.txt.yep_StudentReached features/test.txt.yep_StudentReached features/train.txt.yep_Price features/test.txt.yep_Price features/train.txt.yep_PriceSquare features/test.txt.yep_PriceSquare features/train.txt.yep_PovertyLevel features/test.txt.yep_PovertyLevel features/train.txt.yep_GradeLevel features/test.txt.yep_GradeLevel features/train.txt.yep_PostDate features/test.txt.yep_PostDate: data/projectIDMapping data/essays.csv train.txt test.txt
	java -cp ./codes/yep/bin/ feature.MakeFeature yep_EssayLength,yep_StudentReached,yep_Price,yep_PriceSquare,yep_PovertyLevel,yep_GradeLevel,yep_PostDate
yep_clear:
	rm features/train.txt.yep_*
	rm features/test.txt.yep_*