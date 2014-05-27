include Makefile
model/train.yep.lr.buffer: train.txt train.txt.imfb features/train.txt.py_TeacherOwnProjectNum features/train.txt.py_Price features/train.txt.py_EssayLength features/train.txt.py_ResourceNum features/train.txt.py_ShortDescriptionLength features/train.txt.py_NeedStatementLength features/train.txt.py_TitleLength features/train.txt.yep_StudentReached features/train.txt.yep_Price features/train.txt.py_TeacherAccPosRatioCount features/train.txt.py_SchoolCityPosRatioCount features/train.txt.py_ResourceTypePosRatioCount features/train.txt.py_SchoolMagnetPosRatioCount features/train.txt.py_SchoolYearRoundPosRatioCount features/train.txt.py_SchoolKippPosRatioCount features/train.txt.py_TeacherTeachForAmericaPosRatioCount features/train.txt.py_GradeLevelPosRatioCount features/train.txt.py_EligibleDoubleYourImpactMatchPosRatioCount features/train.txt.py_EligibleAlmostHomeMatchPosRatioCount features/train.txt.yep_RecentProject    
	kddcup_combine_ugroup train.txt model/train.yep.lr.buffer   -gd  -g py_TeacherOwnProjectNum py_Price py_EssayLength py_ResourceNum py_ShortDescriptionLength py_NeedStatementLength py_TitleLength yep_StudentReached yep_Price py_TeacherAccPosRatioCount py_SchoolCityPosRatioCount py_ResourceTypePosRatioCount py_SchoolMagnetPosRatioCount py_SchoolYearRoundPosRatioCount py_SchoolKippPosRatioCount py_TeacherTeachForAmericaPosRatioCount py_GradeLevelPosRatioCount py_EligibleDoubleYourImpactMatchPosRatioCount py_EligibleAlmostHomeMatchPosRatioCount yep_RecentProject  -i   -efd   -u   -max_block 20000 -scale_score 1
model/test.yep.lr.buffer: test.txt test.txt.imfb features/test.txt.py_TeacherOwnProjectNum features/test.txt.py_Price features/test.txt.py_EssayLength features/test.txt.py_ResourceNum features/test.txt.py_ShortDescriptionLength features/test.txt.py_NeedStatementLength features/test.txt.py_TitleLength features/test.txt.yep_StudentReached features/test.txt.yep_Price features/test.txt.py_TeacherAccPosRatioCount features/test.txt.py_SchoolCityPosRatioCount features/test.txt.py_ResourceTypePosRatioCount features/test.txt.py_SchoolMagnetPosRatioCount features/test.txt.py_SchoolYearRoundPosRatioCount features/test.txt.py_SchoolKippPosRatioCount features/test.txt.py_TeacherTeachForAmericaPosRatioCount features/test.txt.py_GradeLevelPosRatioCount features/test.txt.py_EligibleDoubleYourImpactMatchPosRatioCount features/test.txt.py_EligibleAlmostHomeMatchPosRatioCount features/test.txt.yep_RecentProject    
	kddcup_combine_ugroup test.txt model/test.yep.lr.buffer   -gd  -g py_TeacherOwnProjectNum py_Price py_EssayLength py_ResourceNum py_ShortDescriptionLength py_NeedStatementLength py_TitleLength yep_StudentReached yep_Price py_TeacherAccPosRatioCount py_SchoolCityPosRatioCount py_ResourceTypePosRatioCount py_SchoolMagnetPosRatioCount py_SchoolYearRoundPosRatioCount py_SchoolKippPosRatioCount py_TeacherTeachForAmericaPosRatioCount py_GradeLevelPosRatioCount py_EligibleDoubleYourImpactMatchPosRatioCount py_EligibleAlmostHomeMatchPosRatioCount yep_RecentProject  -i   -efd   -u   -max_block 20000 -scale_score 1
