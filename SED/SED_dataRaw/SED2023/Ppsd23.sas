PROC FORMAT;

/* DIFAGEGR */
   VALUE AGE_GROUP_CODES
      20 	= "20: Ages 24 or younger"
      25 	= "25: Ages 25-29"
      30 	= "30: Ages 30-34"
      35 	= "35: Ages 35-39"
      40 	= "40: Ages 40-44"
      45 	= "45: Ages 45-49"
      50 	= "50: Ages 50-54"
      55 	= "55: Ages 55-59"
      60 	= "60: Ages 60-64"
      65 	= "65: Ages 65-69"
      70 	= "70: Ages 70-75"
      98 	= "98: Logical Skip"
       . 	= "Missing"
   ;

/* AGEGRP */
   VALUE AGE_GROUP_CODES_PUB
      20 	= "20: Ages 29 or younger"
      30 	= "30: Ages 30-34"
      35 	= "35: Ages 35-39"
      40 	= "40: Ages 40-44"
      45 	= "45: Ages 45-49"
      50 	= "50: Ages 50-54"
      55 	= "55: Ages 55-59"
      60 	= "60: Ages 60-64"
      65 	= "65: Ages 65-69"
      70 	= "70: Ages 70-75"
       . 	= "Missing"
   ;

/* BAAYR5P */
   VALUE BAAYR5P_CODES_2023_
      1965 	= "1965: 1960 to 1969"
      1970 	= "1970: 1970 to 1974"
      1975 	= "1975: 1975 to 1979"
      1980 	= "1980: 1980 to 1984"
      1985 	= "1985: 1985 to 1989"
      1990 	= "1990: 1990 to 1994"
      1995 	= "1995: 1995 to 1999"
      2000 	= "2000: 2000 to 2004"
      2005 	= "2005: 2005 to 2009"
      2010 	= "2010: 2010 or later"
      9998 	= "9998: Logical Skip"
       . 	= "Missing"
   ;

/* CHTOTPB */
   VALUE $CHILD_TOT_PUB_CODES03_
      "1"	= "1: 1 child"
      "2"	= "2: 2 or more children"
      "98"	= "98: Logical skip"
      " " 	= "Missing"
   ;

/* CTZN CTZN_DRF */
   VALUE $CITIZENSHIP_CODES
      "1"	= "1: U.S. citizen, Native"
      "2"	= "2: U.S. citizen, Naturalized"
      "3"	= "3: Non-U.S. citizen, Permanent resident"
      "4"	= "4: Non-U.S. citizen, Temporary resident"
      "5"	= "5: Non-U.S. citizen, living outside the U.S."
      "M"	= "M: Missing"
      " " 	= "Missing"
   ;

/* CTZUSIN */
   VALUE $CTZUSIN
      "N"	= "N: Non-U.S. citizen"
      "Y"	= "Y: U.S. citizen"
      " " 	= "Missing"
   ;

/* D25YRP */
   VALUE D25YRP_CODES_2023_
      1965 	= "1965: 1960 to 1969"
      1970 	= "1970: 1970 to 1974"
      1975 	= "1975: 1975 to 1979"
      1980 	= "1980: 1980 to 1984"
      1985 	= "1985: 1985 to 1989"
      1990 	= "1990: 1990 to 1994"
      1995 	= "1995: 1995 to 1999"
      2000 	= "2000: 2000 to 2004"
      2005 	= "2005: 2005 to 2009"
      2010 	= "2010: 2010 to 2014"
      2015 	= "2015: 2015 or later"
      9998 	= "9998: Logical Skip"
       . 	= "Missing"
   ;

/* D35YRP */
   VALUE D35YRP_CODES_2023_
      1965 	= "1965: 1960 to 1969"
      1970 	= "1970: 1970 to 1974"
      1975 	= "1975: 1975 to 1979"
      1980 	= "1980: 1980 to 1984"
      1985 	= "1985: 1985 to 1989"
      1990 	= "1990: 1990 to 1994"
      1995 	= "1995: 1995 to 1999"
      2000 	= "2000: 2000 to 2004"
      2005 	= "2005: 2005 to 2009"
      2010 	= "2010: 2010 or later"
      9998 	= "9998: Logical Skip"
       . 	= "Missing"
   ;

/* ACDRG D2DG D3DG MRDG */
   VALUE $DEGREE_CODES
      "0"	= "0: No specific degree"
      "1"	= "1: Bachelor's"
      "2"	= "2: Master's"
      "3"	= "3: Doctorate"
      "4"	= "4: Professional"
      "5"	= "5: Other"
      "L"	= "L: Logical Skip"
      "M"	= "M: Missing"
      " " 	= "Missing"
   ;

/* EDTP */
   VALUE $EDUCATION_INSTITUTION_CODES_R2_
      "1"	= "1: Preschool, elementary, middle, or secondary school or system"
      "2"	= "2: 2-year college, community college or technical institute"
      "3"	= "3: 4-year college or university, other than a medical school"
      "4"	= "4: Medical school"
      "5"	= "5: University-affiliated research institute"
      "6"	= "6: Other"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* EDDAD EDMOM */
   VALUE $EDUCATION_LEVEL_2019_
      "1"	= "1: Less than high school completed"
      "2"	= "2: High/secondary school
graduate"
      "3"	= "3: Some college"
      "4"	= "4: Associate's degree
(added in FY2016)"
      "5"	= "5: Bachelor's degree"
      "6"	= "6: Master's degree (e.g.,
MA, MS, MBA, MSW, etc.)"
      "7"	= "7: Professional degree (e.g.,
MD, DDS, DVM, JD, PsyD,
etc.)"
      "8"	= "8: Research doctoral degree
(e.g., PhD)"
      "9"	= "9: Not applicable/unknown"
      "M"	= "M: Missing"
      " " 	= "Missing"
   ;

/* EMSIZE */
   VALUE $EMPLOYER_SIZE_R1_
      "1"	= "1: 10 or fewer employees"
      "2"	= "2: 11-24 employees"
      "3"	= "3: 25-99 employees"
      "4"	= "4: 100-499 employees"
      "5"	= "5: 500-999 employees"
      "6"	= "6: 1000-4999 employees"
      "7"	= "7: 5000-24999 employees"
      "8"	= "8: 25000+ employees"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* NEDTPP */
   VALUE $EMPLOYER_TYPE_CODES_R1_
      "01"	= "01: Self-employed, not incorp. bus., profess. practice, or farm"
      "02"	= "02: Self-employed, incorp. business, profess. practice, or farm"
      "03"	= "03: Priv.-for-profit co./bus./indv., wrkg for wages/sal./commis."
      "04"	= "04: Private not-for-profit, tax-exempt/charitable organ."
      "05"	= "05: Local government (city, county, etc.)"
      "06"	= "06: State government"
      "08"	= "08: U.S. government"
      "09"	= "09: Other employer type"
      "10"	= "10: Non-US government (any type)"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* EMSECDT */
   VALUE $EMP_SECTOR_DET_CODES
      "11"	= "11: 4-yr coll/univ; med schl; univ. res. inst."
      "12"	= "12: 2-yr coll/pre-college institutions"
      "21"	= "21: Bus/Ind, for-profit"
      "22"	= "22: Bus/Ind, self-employed, not-incorporated"
      "23"	= "23: Bus/Ind, non-profit"
      "31"	= "31: Federal government"
      "32"	= "32: State/Local government"
      "33"	= "33: Non-US government"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* EMSECSM */
   VALUE $EMP_SECTOR_SUM_CODES
      "1"	= "1: Educational Institution"
      "2"	= "2: Government"
      "3"	= "3: Business/Industry"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* EMTPP */
   VALUE $EMP_TYPE_CODE
      "01"	= "01: Elementary, middle, or secondary school"
      "02"	= "02: 2-year college, junior college, or technical institute"
      "03"	= "03: 4-year college or university"
      "04"	= "04: Medical school"
      "05"	= "05: University research institute"
      "06"	= "06: Other (Educational Institution)"
      "10"	= "10: Private for-profit (non-educational institution)"
      "11"	= "11: Private non-profit (non-educational institution)"
      "12"	= "12: Self-employed, not incorporated (non-educational institution)"
      "13"	= "13: Self-employed, incorporated (non-educational institution)"
      "14"	= "14: Local government (non-educational institution)"
      "15"	= "15: State government (non-educational institution)"
      "17"	= "17: U.S. government (non-educational institution)"
      "18"	= "18: Other (non-educational institution)"
      "19"	= "19: Non-US Government (non-educational institution)"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* RACETHMP */
   VALUE $ETHNICITY_CODES_PUB_V2_
      "1"	= "1: Asian ONLY, non-Hispanic"
      "3"	= "3: Black ONLY, non-Hispanic"
      "4"	= "4: Hispanic, any race"
      "5"	= "5: White ONLY, non-Hispanic"
      "7"	= "7: Other races including multiracial individuals, non-Hispanic"
      " " 	= "Missing"
   ;

/* FACRANK */
   VALUE $FACULTY_RANK_CODES_R1_
      "1"	= "1: Not applicable at this institution"
      "2"	= "2: Not applicable for my position"
      "3"	= "3: Professor"
      "4"	= "4: Associate professor"
      "5"	= "5: Assistant professor"
      "6"	= "6: Instructor"
      "7"	= "7: Lecturer"
      "8"	= "8: Other"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* FNINUS */
   VALUE $FNINUS_V1_
      "N"	= "N: Not living in U.S."
      "Y"	= "Y: Living in U.S."
      " " 	= "Missing"
   ;

/* WABLHRS */
   VALUE $FTPT
      "1"	= "1: Full-time"
      "2"	= "2: Part-time"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* ACFPT */
   VALUE $FULL_PART_TIME_STUDENT_NEW
      "1"	= "1: Full-time student in a degree program"
      "2"	= "2: Part-time student in a degree program"
      "3"	= "3: Not enrolled in a degree program, but taking courses"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* HDAY5P */
   VALUE HDAY5P_CODES_2023_
      1975 	= "1975: 1970 to 1979"
      1980 	= "1980: 1980 to 1984"
      1985 	= "1985: 1985 to 1989"
      1990 	= "1990: 1990 to 1994"
      1995 	= "1995: 1995 to 1999"
      2000 	= "2000: 2000 to 2004"
      2005 	= "2005: 2005 to 2009"
      2010 	= "2010: 2010 to 2014"
      2015 	= "2015: 2015 or later"
       . 	= "Missing"
   ;

/* HRSWKP LSTHRSWKP RTHRSWKP */
   VALUE HRSWKP
      1 	= "1: 20 or less"
      2 	= "2: 21 - 35"
      3 	= "3: 36 - 40"
      4 	= "4: Greater than 40"
      98 	= "98: Logical Skip"
       . 	= "Missing"
   ;

/* FACADV FACBEN FACCHAL FACIND FACLOC FACRESP FACSAL FACSEC FACSOC */
   VALUE $IMPORTANT_CODES
      "1"	= "1: Very important"
      "2"	= "2: Somewhat important"
      "3"	= "3: Somewhat unimportant"
      "4"	= "4: Not important at all"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* LFSTAT */
   VALUE $LABOR_FORCE_STATUS_CODES
      "1"	= "1: Employed"
      "2"	= "2: Unemployed"
      "3"	= "3: Not In Labor Force"
      " " 	= "Missing"
   ;

/* N2OCRTMG */
   VALUE $MAJOCCN
      "1"	= "1: Computer and mathematical scientists"
      "2"	= "2: Biological, agricultural and other life scientists"
      "3"	= "3: Physical and related scientists"
      "4"	= "4: Social and related scientists"
      "5"	= "5: Engineers"
      "6"	= "6: S and E related occupations"
      "7"	= "7: Non-S and E Occupations"
      "8"	= "8: Logical Skip"
      "9"	= "9: Missing"
      " " 	= "Missing"
   ;

/* NSDRMEMTOD */
   VALUE $MAJORTOD
      "1"	= "1: Biological, agricultural, and environmental life sciences"
      "2"	= "2: Computer and information sciences"
      "3"	= "3: Mathematics and statistics"
      "4"	= "4: Physical sciences, Geosciences, Atmospheric, and Ocean Sciences"
      "5"	= "5: Psychology"
      "6"	= "6: Social sciences"
      "7"	= "7: Engineering"
      "8"	= "8: Health"
      " " 	= "Missing"
   ;

/* NACEDMG NBAMEMG ND2MEMG ND3MEMG NDGMEMG NMRMEMG */
   VALUE $MAJOR_GROUP_CODES_NEW
      "1"	= "1: Computer and mathematical sciences"
      "2"	= "2: Biological, agricultural and environmental life sciences"
      "3"	= "3: Physical and related sciences"
      "4"	= "4: Social and related sciences"
      "5"	= "5: Engineering"
      "6"	= "6: S&E-Related Fields"
      "7"	= "7: Non-S&E Fields"
      "8"	= "8: Logical Skip"
      "9"	= "9: Other categories"
      " " 	= "Missing"
   ;

/* N2OCMLST N2OCPRMG */
   VALUE $MAJOR_OCC_GROUP_CODES_NEW
      "1"	= "1: Computer and mathematical scientists"
      "2"	= "2: Biological, agricultural and other life scientists"
      "3"	= "3: Physical and related scientists"
      "4"	= "4: Social and related scientists"
      "5"	= "5: Engineers"
      "6"	= "6: S&E related occupations"
      "7"	= "7: Non-S&E Occupations"
      "8"	= "8: Logical Skip"
      " " 	= "Missing"
   ;

/* MARIND */
   VALUE $MARIND
      "N"	= "N: Not married"
      "Y"	= "Y: Married"
      " " 	= "Missing"
   ;

/* MARSTA */
   VALUE $MARITAL_STATUS_CODES_R1_
      "1"	= "1: Married"
      "2"	= "2: Living in a marriage-like relationship"
      "3"	= "3: Widowed"
      "4"	= "4: Separated"
      "5"	= "5: Divorced"
      "6"	= "6: Never married"
      " " 	= "Missing"
   ;

/* ACADADMN */
   VALUE $MARK_ACADMN
      "L"	= "L: Logical Skip"
      "N"	= "N: No (Left box blank)"
      "Y"	= "Y: Yes (Marked 'Dean' or 'President' box)"
      " " 	= "Missing"
   ;

/* ACADOTHP */
   VALUE $MARK_ACADOTH
      "L"	= "L: Logical Skip"
      "N"	= "N: No (Left box blank)"
      "Y"	= "Y: Yes (Marked 'Research Asst','Teaching Asst' or 'Other' box)"
      " " 	= "Missing"
   ;

/* ACOTP */
   VALUE $MARK_ACOTP
      "L"	= "L: Logical Skip"
      "N"	= "N: No (Left box blank)"
      "Y"	= "Y: Yes (Marked 'Yes' to 'Graduate School', 'Employer-required' or 'Other')"
      " " 	= "Missing"
   ;

/* ACADADJF ACADNA ACADPDOC ACADRCHF ACADTCHF FSDED FSDK FSDOD FSDOE FSHHS
   FSNASA FSNIH FSNSF FSOT */
   VALUE $MARK_ALL_CODES
      "L"	= "L: Logical skip"
      "N"	= "N: No (Left box blank)"
      "Y"	= "Y: Yes (Marked box)"
      " " 	= "Missing"
   ;

/* MROTP */
   VALUE $MARK_MROTP
      "L"	= "L: Logical Skip"
      "N"	= "N: No (Left box blank)"
      "Y"	= "Y: Yes (Marked 'Yes' to 'Graduate School', 'Employer-required' or 'Other')"
      " " 	= "Missing"
   ;

/* NWOTP */
   VALUE $MARK_NWOTP
      "L"	= "L: Logical Skip"
      "N"	= "N: No (Left box blank)"
      "Y"	= "Y: Yes (Marked 'Yes' to 'Illness', 'Retired' or 'Other')"
      " " 	= "Missing"
   ;

/* PRMBRPB */
   VALUE MEMBERSHIP_CODES_PUB03_
      0 	= "0: No memberships"
      1 	= "1: 1 membership"
      2 	= "2: 2 memberships"
      3 	= "3: 3 memberships"
      4 	= "4: 4 memberships"
      5 	= "5: 5 memberships"
      6 	= "6: 6 or more memberships"
      98 	= "98: Logical Skip"
       . 	= "Missing"
   ;

/* NSDRMENTOD */
   VALUE $MINORTOD
      "11"	= "11: Agricultural and Food Sciences"
      "12"	= "12: Biochemistry and Biophysics"
      "13"	= "13: Cell, Cellular Biology, and Molecular Biology"
      "14"	= "14: Microbiological Sciences and Immunology"
      "15"	= "15: Natural Resources and Conservation"
      "16"	= "16: Zoology"
      "17"	= "17: Other Biological Sciences"
      "21"	= "21: Computer and Information Sciences"
      "31"	= "31: Mathematics and Statistics"
      "41"	= "41: Astronomy and Astrophysics"
      "42"	= "42: Chemistry, except Biochemistry"
      "43"	= "43: Geosciences, Atmospheric, and Ocean Sciences"
      "44"	= "44: Physics"
      "51"	= "51: Psychology"
      "61"	= "61: Economics"
      "62"	= "62: Political Science and Government"
      "63"	= "63: Sociology, Demography, and Population Studies"
      "64"	= "64: Other Social Sciences"
      "71"	= "71: Aerospace, Aeronautical, and Astronautical Engineering"
      "72"	= "72: Chemical Engineering"
      "73"	= "73: Civil Engineering"
      "74"	= "74: Electrical and Computer Engineering"
      "75"	= "75: Mechanical Engineering"
      "76"	= "76: Metallurgical and Materials Engineering"
      "77"	= "77: Other Engineering"
      "81"	= "81: Health"
      " " 	= "Missing"
   ;

/* NBAMENGP NDGMENGP NMRMENGP */
   VALUE $MINOR_ED_GROUP_CODES_NEW
      "11"	= "11: Computer and information sciences"
      "12"	= "12: Mathematics and statistics"
      "21"	= "21: Agricultural and food sciences"
      "22"	= "22: Biological sciences"
      "23"	= "23: Environmental life sciences"
      "31"	= "31: Chemistry, except biochemistry"
      "32"	= "32: Earth, atmospheric and ocean sciences"
      "33"	= "33: Physics and astronomy"
      "34"	= "34: Other physical sciences"
      "41"	= "41: Economics"
      "42"	= "42: Political and related sciences"
      "43"	= "43: Psychology"
      "44"	= "44: Sociology and anthropology"
      "45"	= "45: Other social sciences"
      "51"	= "51: Aerospace, aeronautical and astronautical engineering"
      "52"	= "52: Chemical engineering"
      "53"	= "53: Civil and architectural engineering"
      "54"	= "54: Electrical and computer engineering"
      "55"	= "55: Industrial engineering"
      "56"	= "56: Mechanical engineering"
      "57"	= "57: Other engineering"
      "60"	= "60: S&E related fields"
      "70"	= "70: Non-S&E fields"
      "98"	= "98: Logical Skip"
      " " 	= "Missing"
   ;

/* N2OCPRNG */
   VALUE $MINOR_GROUP_CODES_NEW
      "11"	= "11: Computer and information scientists"
      "12"	= "12: Mathematical scientists"
      "18"	= "18: Postsecondary teachers - computer and math sciences"
      "21"	= "21: Agricultural & food scientists"
      "22"	= "22: Biological and medical scientists"
      "23"	= "23: Environmental life scientists"
      "28"	= "28: Postsecondary teachers - life and related sciences"
      "31"	= "31: Chemists, except biochemists"
      "32"	= "32: Earth scientists, geologists and oceanographers"
      "33"	= "33: Physicists and astronomers"
      "34"	= "34: Other physical & related scientists"
      "38"	= "38: Postsecondary teachers - physical and related sciences"
      "41"	= "41: Economists"
      "42"	= "42: Political scientists"
      "43"	= "43: Psychologists"
      "44"	= "44: Sociologists and anthropologists"
      "45"	= "45: Other social and related scientists"
      "48"	= "48: Postsecondary teachers - social and related sciences"
      "51"	= "51: Aerospace, aeronautical or astronautical engineers"
      "52"	= "52: Chemical engineers"
      "53"	= "53: Civil, architectural or sanitary engineers"
      "54"	= "54: Electrical or computer hardware engineers"
      "55"	= "55: Industrial engineers"
      "56"	= "56: Mechanical engineers"
      "57"	= "57: Other engineers"
      "58"	= "58: Postsecondary teachers - engineering"
      "61"	= "61: Health-related occupations"
      "62"	= "62: S&E managers"
      "63"	= "63: S&E Pre-college Teachers"
      "64"	= "64: S&E technicians and technologists"
      "65"	= "65: Other S&E-related occupations"
      "71"	= "71: Non-S&E Managers"
      "72"	= "72: Management-related occupations"
      "73"	= "73: Non-S&E precollege teachers"
      "74"	= "74: Non-S&E postsecondary teachers"
      "75"	= "75: Social services and related occupations"
      "76"	= "76: Sales and marketing occupations"
      "77"	= "77: Art, humanities and related occupations"
      "78"	= "78: Other non-S&E occupations"
      "98"	= "98: Logical Skip"
      " " 	= "Missing"
   ;

/* MINRTY */
   VALUE $MINRTY
      "N"	= "N: Not URM"
      "Y"	= "Y: URM"
      " " 	= "Missing"
   ;

/* MR5YRP */
   VALUE MR5YRP_CODES_2023_
      1975 	= "1975: 1970 to 1979"
      1980 	= "1980: 1980 to 1984"
      1985 	= "1985: 1985 to 1989"
      1990 	= "1990: 1990 to 1994"
      1995 	= "1995: 1995 to 1999"
      2000 	= "2000: 2000 to 2004"
      2005 	= "2005: 2005 to 2009"
      2010 	= "2010: 2010 to 2014"
      2015 	= "2015: 2015 or later"
       . 	= "Missing"
   ;

/* CTZFOR */
   VALUE $NON_US_CITIZEN_CODES
      "1"	= "1: With a permanent resident Visa"
      "2"	= "2: With a temporary resident Visa"
      "3"	= "3: With No US Visa"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* DIFNO */
   VALUE $NO_HANDICAP_CODES
      "N"	= "N: Left box blank"
      "Y"	= "Y: No difficulties identified (Marked box)"
      " " 	= "Missing"
   ;

/* EARNP SALARYP */
   VALUE NUMERIC_DOLLAR_SEVEN
      9999998 	= "9999998: Logical Skip"
       . 	= "Missing"
   ;

/* WKSLYR WKSWK */
   VALUE NUMERIC_TWO
      98 	= "98: Logical Skip"
       . 	= "Missing"
   ;

/* NRREA NRSEC */
   VALUE $OUTSIDE_FIELD_REASONS
      "0"	= "0: No second most important reason"
      "1"	= "1: Pay, promotion opportunities"
      "2"	= "2: Working conditions (hours,equip.,working envir.)"
      "3"	= "3: Job location"
      "4"	= "4: Change in career or professional interests"
      "5"	= "5: Family-related reasons"
      "6"	= "6: Job in doctoral degree field not available"
      "7"	= "7: Other reason for working out of field"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* PDUSFOR */
   VALUE $PDUS
      "1"	= "1: U.S. location"
      "2"	= "2: Non-U.S. location"
      "M"	= "M: Missing/Unknown"
      " " 	= "Missing"
   ;

/* PHYHLTH */
   VALUE $PHYSH
      "1"	= "1: Excellent"
      "2"	= "2: Very good"
      "3"	= "3: Good"
      "4"	= "4: Fair"
      "5"	= "5: Poor"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* PDPRI PDSEC */
   VALUE $POSTDOC_REASON_CODES
      "0"	= "0: No Second Reason"
      "1"	= "1: Additional training in Phd field"
      "2"	= "2: Training in an area outside of PhD field"
      "3"	= "3: Work with a specific person or place"
      "4"	= "4: Other employment not available"
      "5"	= "5: Postdoc generally expected for career in this field"
      "6"	= "6: Other"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* BARGNP D2RGNP D3RGNP EMRGP HDRGNP MRRGNP SDRRGNP */
   VALUE $REGION_CODES_PUB
      "01"	= "01: West"
      "02"	= "02: Midwest"
      "03"	= "03: Northeast"
      "04"	= "04: South"
      "05"	= "05: Abroad, not specified"
      "L"	= "L: Logical Skip"
      "M"	= "M: Missing"
      " " 	= "Missing"
   ;

/* OCEDRLLST OCEDRLP OCEDRLRT */
   VALUE $RELATED_CODES
      "1"	= "1: Closely related"
      "2"	= "2: Somewhat related"
      "3"	= "3: Not related"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* RTREASN */
   VALUE $RTREASN
      "1"	= "1: Only employment situations encouraged retirement"
      "2"	= "2: Only personal factors encouraged retirement"
      "3"	= "3: Both employment situations and personal factors encouraged retirement"
      "4"	= "4: No employment situations or personal factors encouraged retirement"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* EMSMI */
   VALUE $SAME_DIFFERENT_CODES
      "1"	= "1: Same employer AND same job"
      "2"	= "2: Same employer BUT different job"
      "3"	= "3: Different employer BUT same job"
      "4"	= "4: Different employer AND different job"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* JOBSATIS RTSATIS SATADV SATBEN SATCHAL SATIND SATLOC SATRESP SATSAL SATSEC
   SATSOC */
   VALUE $SATISFIED_CODES
      "1"	= "1: Very satisfied"
      "2"	= "2: Somewhat satisfied"
      "3"	= "3: Somewhat dissatisfied"
      "4"	= "4: Very dissatisfied"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* SDR5YRP */
   VALUE SDR5YRP_CODES_2023_
      1975 	= "1975: 1970 to 1979"
      1980 	= "1980: 1980 to 1984"
      1985 	= "1985: 1985 to 1989"
      1990 	= "1990: 1990 to 1994"
      1995 	= "1995: 1995 to 1999"
      2000 	= "2000: 2000 to 2004"
      2005 	= "2005: 2005 to 2009"
      2010 	= "2010: 2010 to 2014"
      2015 	= "2015: 2015 or later"
       . 	= "Missing"
   ;

/* SEHTOD */
   VALUE $SEH
      "1"	= "1: Science"
      "7"	= "7: Engineering"
      "8"	= "8: Health"
      " " 	= "Missing"
   ;

/* SEX */
   VALUE $SEX_CODES
      "F"	= "F: Female"
      "M"	= "M: Male"
      " " 	= "Missing"
   ;

/* DIFBIR */
   VALUE $SINCE_BIRTH_CODES
      "L"	= "L: Logical skip"
      "N"	= "N: Left box blank"
      "Y"	= "Y: Experienced difficulties since birth (Marked box)"
      " " 	= "Missing"
   ;

/* SPOWK */
   VALUE $SPOUSE_WORKING_CODES
      "1"	= "1: Yes, full-time"
      "2"	= "2: Yes, part-time"
      "3"	= "3: No"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* COHORT */
   VALUE $SURVEY_COHORTS
      "2"	= "2: SDR"
      " " 	= "Missing"
   ;

/* SURID */
   VALUE SURVEY_IDENTIFIER_CODES
      2 	= "2: SDR"
       . 	= "Missing"
   ;

/* SRVMODE */
   VALUE $SURVEY_MODES
      "1"	= "1: Mail"
      "2"	= "2: CATI"
      "4"	= "4: World Wide Web"
      "5"	= "5: Telephone interview using web instrument"
      "6"	= "6: Telephone interview using paper questionnaire"
      " " 	= "Missing"
   ;

/* TELEC */
   VALUE $TELECF
      "1"	= "1: Telecommuting/working remotely did not make sense for my job"
      "2"	= "2: I was not allowed or required to telecommute/work remotely"
      "3"	= "3: I was required to telecommute/work remotely"
      "4"	= "4: I was allowed to telecommute/work remotely, and did"
      "5"	= "5: I was allowed to telecommute/work remotely, and did not"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* TELEFR */
   VALUE $TELEFF
      "1"	= "1: Occasionally, but not consistently"
      "2"	= "2: Consistently 1 to 2 days per week"
      "3"	= "3: Consistently 3 to 4 days per week"
      "4"	= "4: Consistently 5 or more days per week"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* TENSTA */
   VALUE $TENURE_STATUS_CODES
      "1"	= "1: Not applicable: no tenure system at this institution"
      "2"	= "2: Not applicable: no tenure system for my position"
      "3"	= "3: Tenured"
      "4"	= "4: On tenure-track but not tenured"
      "5"	= "5: Not on tenure track"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* TENI */
   VALUE $TENURE_STATUS_IND_CODES
      "1"	= "1: Not applicable"
      "2"	= "2: Not tenured"
      "3"	= "3: Tenured"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* WTREASN */
   VALUE $TRAINING_REASON_CODES_NEW
      "1"	= "1: To improve skills or knowledge in your current occupational field"
      "2"	= "2: To increase opportunities for promo/advance in current occupational field"
      "3"	= "3: For licensure/certification in your current occupational field"
      "4"	= "4: To facilitate a change to a different occupational field"
      "5"	= "5: Required or expected by employer"
      "6"	= "6: For leisure or personal interest"
      "7"	= "7: Other reason for training"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* CTZUS */
   VALUE $US_CITIZEN_CODES
      "1"	= "1: Born in US or US territories"
      "2"	= "2: Born abroad of American parents"
      "3"	= "3: By naturalization"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* BADGRUS BTHUS D2DGRUS D3DGRUS EMUS HDDGRUS MRDGRUS */
   VALUE $US_NONUS_CODES
      "L"	= "L: Logical Skip"
      "M"	= "M: Missing"
      "N"	= "N: Non-U.S."
      "Y"	= "Y: U.S."
      " " 	= "Missing"
   ;

/* FVOLHRS INFVOLHRS PROACTHRS */
   VALUE $VOLHRS
      "1"	= "1: 1-14 hours"
      "2"	= "2: 15-49 hours"
      "3"	= "3: 50-99 hours"
      "4"	= "4: 100-199 hours"
      "5"	= "5: 200 hours or more"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* WKSYR */
   VALUE $WEEKS_CODES_NEW
      "1"	= "1: Work 52 weeks per year"
      "2"	= "2: Less than 52 weeks per year"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* WAPRI WASEC */
   VALUE $WORK_ACTIVITY_CODES_R1_
      "00"	= "00: No Secondary Activity"
      "01"	= "01: Accounting, finance, contracts"
      "02"	= "02: Basic res.-study to gain sci. knwldg prima. for its own sake"
      "03"	= "03: Apld. res.-study to gain sci. knwldg to meet recognized need"
      "04"	= "04: Dev.-knowledge from res. for the prod. of materials, devices"
      "05"	= "05: Design of equipment, processes, structures, models"
      "06"	= "06: Computer applications, programming, systems development"
      "07"	= "07: Human Resources - inc. recruiting, personnel dev, training"
      "08"	= "08: Managing or supervising people or projects"
      "09"	= "09: Production, operations, maintenance (e.g., chip production)"
      "10"	= "10: Prof. services (healthcare, fin. serv., legal serv., etc.)"
      "11"	= "11: Sales, purchasing, marketing"
      "12"	= "12: Quality or productivity management"
      "13"	= "13: Teaching"
      "14"	= "14: Other work activity"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* WAPRSM3 WASCSM3 */
   VALUE $WORK_SUMMARY_CODES3_
      "1"	= "1: Research and Development"
      "2"	= "2: Teaching"
      "3"	= "3: Management and Administration"
      "4"	= "4: Computer Applications"
      "5"	= "5: Design"
      "6"	= "6: Other"
      "7"	= "7: No Secondary Activity"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* ACADV ACCAR ACCCEP ACCHG ACINT ACLIC ACSIN ACSKL ACTCAP ACTDED
   ACTMGT ACTRD2 ACTRDT ACTRES ACTTCH CH1218IN CH19IN CH25IN CH611IN CH6IN
   CHCHG CHCON CHFAM CHLAY CHLOC CHLVIN CHOT CHPAY CHRET CHSCH
   CHU2IN CHUN12 EMED EVRRET FTPRET FVOLNTR GOVSUP HCAPIN INFVOLNTR JOBINS
   JOBPENS JOBPROFT JOBVAC LOOKWK MGRNAT MGROTH MGRSOC MRADV MRCAR MRCHG
   MRINT MRLIC MRSKL NEWBUS NRCHG NRCON NRFAM NRLOC NROCNA NROT
   NRPAY NWFAM NWLAY NWNOND NWOCNA NWSTU OCLSTRT PDEMPL PDEXPECT PDIX
   PDOTHER PDPERPL PDTRAIN PDTROUT PJFAM PJHAJ PJHRS PJNOND PJOCNA PJOT
   PJRET PJSTU PJWTFT PRFACCHLD PRFACOT PRFHLTH PRGOVBEN PRHLTH PRINT PROACT
   PROMTGI PRPERS PRSAV PRSPRT RTAGEDISC RTDUTY RTEARLYINC RTEMPOT RTHRS RTLAYOFF
   RTLOC RTNOTSAT RTOCNA RTPENS RTWAGE RTWASK RTWINCN RTWINCW RTWINS RTWINSF
   RTWOT RTWPRFID RTWSOC RTWSPW SPNAT SPOT SPSOC SUPWK TCDGCMP WAACC
   WAAPRSH WABLLIM WABLPRV WABRSH WACOM WADEV WADSN WAEMRL WAMGMT WAOT
   WAPROD WAQM WASALE WASVC WATEA WKTRNI WRKG WRKGP WTRCHOC WTREM
   WTRLIC WTROPPS WTROT WTRPERS WTRSKL */
   VALUE $YES_NO_CODES
      "L"	= "L: Logical Skip"
      "N"	= "N: No"
      "Y"	= "Y: Yes"
      " " 	= "Missing"
   ;
   run;
