 PROC FORMAT;
  VALUE AGE13SD
    .              = ".: NAP"
    27             = "27: 27 and younger"
    75             = "75: 75 and older"
    97             = "97: Survey Exclusion/ Confidentiality Suppression"
    98             = "98: Logical Skip"
    99             = "99: Missing"
   ;

  VALUE $CHTOTP
    "1" = "1: 1 child"
    "2" = "2: 2 or more children"
    "98" = "98: Logical skip"
   ;

  VALUE $DEGREE
    "0" = "0: No specific degree or certificate"
    "1" = "1: Bachelor''s"
    "2" = "2: Masters"
    "3" = "3: Doctorate"
    "4" = "4: Professional"
    "5" = "5: Other"
    "L" = "L: Logical Skip"
    "M" = "M: Missing"
    "X" = "X: Survey Exclusion/Confidentiality Suppression"
   ;

  VALUE $EDCDPBN
    "12889S" = "12889S: SUPPRESSED-Computer and math"
    "19889S" = "19889S: Computer and mathematical sciences"
    "22639S" = "22639S: Biological sciences"
    "22699S" = "22699S: SUPPRESSED-Life and related sciences"
    "29889S" = "29889S: Other biological/agricultural/environmental life sciences"
    "318730" = "318730: Chemistry, except biochemistry"
    "33878S" = "33878S: Physics and astronomy"
    "38879S" = "38879S: SUPPRESSED-Physical and related sciences"
    "39899S" = "39899S: Other physical and related sciences"
    "41929S" = "41929S: Economics"
    "42929S" = "42929S: Political and related sciences"
    "43899S" = "43899S: Psychology"
    "44999S" = "44999S: Sociology and anthropology"
    "45939S" = "45939S: OTHER Social sciences"
    "48939S" = "48939S: SUPPRESSED-Social and related sciences"
    "527250" = "527250: Chemical engineering"
    "537260" = "537260: Civil engineering"
    "547280" = "547280: Electrical, electronics and communications engineering"
    "567350" = "567350: Mechanical engineering"
    "58799S" = "58799S: Other engineering"
    "59999S" = "59999S: SUPPRESSED-All science and engineering major group"
    "61199S" = "61199S: Health-related fields"
    "69999S" = "69999S: Other science and engineering-related"
    "71999S" = "71999S: Management and administration"
    "79999S" = "79999S: Other non-science and engineering"
    "999979" = "999979: Survey exclusion/Confidentiality suppression"
    "999989" = "999989: Logical skip"
    "999999" = "999999: Missing"
   ;

  VALUE $EMP2SIZ
    "1" = "1: 10 or fewer employees"
    "2" = "2: 11-24 employees"
    "3" = "3: 25-99 employees"
    "4" = "4: 100-499 employees"
    "5" = "5: 500-999 employees"
    "6" = "6: 1000-4999 employees"
    "7" = "7: 5000-24999 employees"
    "8" = "8: 25000+ employees"
    "L" = "L: Logical Skip"
    "M" = "M: Missing"
    "X" = "X: Survey Exclusion/Confidentiality Suppression"
   ;

  VALUE $EMSECP
    "1" = "1: 2-year college or Other School System"
    "2" = "2: 4-year college or Medical Institution"
    "3" = "3: Government"
    "4" = "4: Business/Industry"
    "5" = "5: Non-US government"
    "L" = "L: Logical Skip"
    "M" = "M: Missing"
    "X" = "X: Survey Exclusion/Confidentiality Suppression"
   ;

  VALUE $ETHNCPM
    "1" = "1: Asian, non-Hispanic ONLY"
    "5" = "5: White, non-Hispanic ONLY"
    "7" = "7: Under-represented Minorities"
    "L" = "L: Logical Skip"
    "M" = "M: Missing"
    "X" = "X: Survey Exclusion/Confidentiality Suppression"
   ;

  VALUE B5Y13SD
    1960           = "1960: 1960 or earlier"
    1965           = "1965: 1961 to 1965"
    1970           = "1970: 1966 to 1970"
    1975           = "1975: 1971 to 1975"
    1980           = "1980: 1976 to 1980"
    1985           = "1985: 1981 to 1985"
    1990           = "1990: 1986 to 1990"
    1995           = "1995: 1991 to 1995"
    2000           = "2000: 1996 to 2000"
    2005           = "2005: 2001 to 2005"
    2010           = "2010: 2006  or later"
    9997           = "9997: Not on Survey"
    9998           = "9998: Logical Skip"
    9999           = "9999: Missing"
   ;

  VALUE HM5Y13S
    1965           = "1965: 1965 or earlier"
    1970           = "1970: 1966 to 1970"
    1975           = "1975: 1971 to 1975"
    1980           = "1980: 1976 to 1980"
    1985           = "1985: 1981 to 1985"
    1990           = "1990: 1986 to 1990"
    1995           = "1995: 1991 to 1995"
    2000           = "2000: 1996 to 2000"
    2005           = "2005: 2001 to 2005"
    2010           = "2010: 2006 to 2010"
    2011           = "2011: 2011 or later"
    9997           = "9997: Not on Survey"
    9998           = "9998: Logical Skip"
    9999           = "9999: Missing"
   ;

  VALUE $FULPTSN
    "1" = "1: Full-time student in a degree program"
    "2" = "2: Part-time student in a degree program"
    "3" = "3: Not enrolled in a degree program, but taking courses"
    "L" = "L: Logical Skip"
    "M" = "M: Missing"
    "X" = "X: Survey Exclusion/Confidentiality Suppression"
   ;

  VALUE $GENDER
    "F" = "F: Female"
    "M" = "M: Male"
   ;

  VALUE HRSWKP
    .              = ".: NAP"
    1              = "1: 20 or less"
    2              = "2: 21 - 35"
    3              = "3: 36 - 40"
    4              = "4: Greater than 40"
    97             = "97: Survey Exclusion/Confidentiality Suppression"
    98             = "98: Logical Skip"
    99             = "99: Missing"
   ;

  VALUE $JOBWKP
    "1" = "1: 1-10 weeks"
    "2" = "2: 11-20 weeks"
    "3" = "3: 21-39 weeks"
    "4" = "4: 40-52 weeks"
    "L" = "L: Logical Skip"
    "M" = "M: Missing"
    "X" = "X: Survey Exclusion/Confidentiality Suppression"
   ;

  VALUE $LFSTAT
    "1" = "1: Employed"
    "2" = "2: Unemployed"
    "3" = "3: Not In Labor Force"
    "L" = "L: Logical Skip"
    "M" = "M: Missing"
    "X" = "X: Survey Exclusion/Confidentiality Suppression"
   ;

  VALUE $MAJORN
    "1" = "1: Computer and mathematical sciences"
    "2" = "2: Biological, agricultural and environmental life sciences"
    "3" = "3: Physical and related sciences"
    "4" = "4: Social and related sciences"
    "5" = "5: Engineering"
    "6" = "6: S and E-Related Fields"
    "7" = "7: Non-S and E Fields"
    "8" = "8: Logical Skip"
    "9" = "9: Other categories"
   ;

  VALUE $MAJOCCN
    "1" = "1: Computer and mathematical scientists"
    "2" = "2: Biological, agricultural and other life scientists"
    "3" = "3: Physical and related scientists"
    "4" = "4: Social and related scientists"
    "5" = "5: Engineers"
    "6" = "6: S and E related occupations"
    "7" = "7: Non-S and E Occupations"
    "8" = "8: Logical Skip"
    "9" = "9: Other"
   ;

  VALUE $MRKACD
    "L" = "L: Logical Skip"
    "M" = "M: Missing"
    "N" = "N: No (Left box blank)"
    "X" = "X: Survey Exclusion/Confidentiality Suppression"
    "Y" = "Y: Yes (Marked ''Dean' or 'President' box)"
   ;

  VALUE $MRKOTH
    "L" = "L: Logical Skip"
    "M" = "M: Missing"
    "N" = "N: No (Left box blank)"
    "X" = "X: Survey Exclusion/Confidentiality Suppression"
    "Y" = "Y: Yes (Marked ''Research Asst','Teaching Asst' or 'Other' box)"
   ;

  VALUE $MRKAC
    "L" = "L: Logical Skip"
    "M" = "M: Missing"
    "N" = "N: No (Left box blank)"
    "X" = "X: Survey Exclusion/Confidentiality Suppression"
    "Y" = "Y: Yes (Marked ''Graduate School', 'Employer-required' or 'Other' box)"
   ;

  VALUE $MRKALL
    "L" = "L: Logical Skip"
    "M" = "M: Missing"
    "N" = "N: No (Left box blank)"
    "X" = "X: Survey Exclusion/Confidentiality Suppression"
    "Y" = "Y: Yes (Marked box)"
   ;

  VALUE $MRKMR
    "L" = "L: Logical Skip"
    "M" = "M: Missing"
    "N" = "N: No (Left box blank)"
    "X" = "X: Survey Exclusion/Confidentiality Suppression"
    "Y" = "Y: Yes (Marked ''Graduate School', 'Employer-required' or 'Other' box)"
   ;

  VALUE $MRKNW
    "L" = "L: Logical Skip"
    "M" = "M: Missing"
    "N" = "N: No (Left box blank)"
    "X" = "X: Survey Exclusion/Confidentiality Suppression"
    "Y" = "Y: Yes (Marked ''Illness', 'Retired' or 'Other' box)"
   ;

  VALUE $MRK2PJ
    "L" = "L: Logical Skip"
    "M" = "M: Missing"
    "N" = "N: No (Left box blank)"
    "X" = "X: Survey Exclusion/Confidentiality Suppression"
    "Y" = "Y: Yes (Marked ''Student', 'Hold Another Job' or 'Other' box)"
   ;

  VALUE MEMC03P
    0              = "0: No memberships"
    1              = "1: 1 membership"
    2              = "2: 2 memberships"
    3              = "3: 3 memberships"
    4              = "4: 4 memberships"
    5              = "5: 5 memberships"
    6              = "6: 6 or more memberships"
    97             = "97: Survey Exclusion/Confidentiality Suppression"
    98             = "98: Logical Skip"
    99             = "99: Missing"
   ;

  VALUE FOUR
    .              = ".: NAP"
    9997           = "9997: Survey Exclusion/Confidentiality Suppression"
    9998           = "9998: Logical Skip"
    9999           = "9999: Missing"
   ;

  VALUE WGTFMT
    .              = ".: NAP"
    0              = "0: Zero"
    1 - HIGH       = "1 - HIGH: Non-zero"
   ;

  VALUE $OCCUPPN
    "18296S" = "18296S: Postsecondary Teachers-Computer and Math Sciences"
    "19289S" = "19289S: Computer Scientists and Mathematicians"
    "22220S" = "22220S: Biological and Medical Scientists"
    "28288S" = "28288S: Postsecondary Teachers-Life Related Sciences"
    "29399S" = "29399S: Other Life and Related Scientists"
    "311930" = "311930: Chemists, except Biochemists"
    "33330S" = "33330S: Physicists and astronomers"
    "38299S" = "38299S: Postsecondary Teachers-Physical and Related Sciences"
    "39399S" = "39399S: Other Physical and Related Scientists"
    "412320" = "412320: Economists"
    "41410S" = "41410S: Economists"
    "42420S" = "42420S: Political and related scientists"
    "432360" = "432360: Psychologists"
    "43430S" = "43430S: Psychologists"
    "48299S" = "48299S: Postsecondary Teachers-Social and Related Sciences"
    "48399S" = "48399S: Other social scientists"
    "49399S" = "49399S: Other Social Scientists"
    "50500S" = "50500S: Other Engineers"
    "520850" = "520850: Chemical Engineers"
    "530860" = "530860: Civil Engineers"
    "540890" = "540890: Electrical or computer hardware engineers"
    "560940" = "560940: Mechanical Engineers"
    "582800" = "582800: Postsecondary Teachers - Engineering"
    "61199S" = "61199S: Health-related occupations"
    "62199S" = "62199S: S and E Managers"
    "63199S" = "63199S: S and E pre-college teachers"
    "64199S" = "64199S: S and E technicians and technologists"
    "65199S" = "65199S: S and E Pre-college Teachers"
    "711410" = "711410: Top and Mid-Level Managers, Executives, Administrators"
    "71199S" = "71199S: Other Management Related Occupations"
    "73599S" = "73599S: Non-S and E Pre-College and Post-Secondary Teachers"
    "79999S" = "79999S: Other non-science and engineering occupations"
    "999979" = "999979: Survey Exclusion/Confidentiality Suppression"
    "999989" = "999989: Logical Skip"
    "999999" = "999999: Missing"
   ;

  VALUE $OUTFLD
    "0" = "0: No second most important reason"
    "1" = "1: Pay, promotion opportunities"
    "2" = "2: Working conditions (hours, equip., working envir.)"
    "3" = "3: Job location"
    "4" = "4: Change in career or professional interests"
    "5" = "5: Family-related reasons"
    "6" = "6: Job in highest degree field not available"
    "7" = "7: Other reason for not working"
    "A" = "A: Pay, promotion opportunities"
    "B" = "B: Working conditions (hours,  equip.,  working envir.)"
    "C" = "C: Job location"
    "D" = "D: Change in career or professional interests"
    "E" = "E: Family-related reasons"
    "F" = "F: Job in doctoral degree field not available"
    "G" = "G: Other reason for not working"
    "L" = "L: Logical Skip"
    "M" = "M: Missing"
    "X" = "X: Survey Exclusion/Confidentiality Suppression"
   ;

  VALUE $REFID
    "L" = "L: Logical Skip"
    "M" = "M: Missing"
    OTHER          = "OTHER: Valid"
    "X" = "X: Survey Exclusion/Confidentiality Suppression"
   ;

  VALUE $RELATED
    "1" = "1: Closely related"
    "2" = "2: Somewhat related"
    "3" = "3: Not related"
    "L" = "L: Logical Skip"
    "M" = "M: Missing"
    "X" = "X: Survey Exclusion/Confidentiality Suppression"
   ;

  VALUE SC150P
    150000         = "150000: 150,000 or more"
    9999997        = "9999997: Survey Exclusion/Confidentiality Suppression"
    9999998        = "9999998: Logical Skip"
    9999999        = "9999999: Missing"
   ;

  VALUE $SAMEDIF
    "1" = "1: Same employer AND same job"
    "2" = "2: Same employer BUT different job"
    "3" = "3: Different employer BUT same job"
    "4" = "4: Different employer AND different job"
    "L" = "L: Logical Skip"
    "M" = "M: Missing"
    "X" = "X: Survey Exclusion/Confidentiality Suppression"
   ;

  VALUE $SATIS
    "1" = "1: Very satisfied"
    "2" = "2: Somewhat satisfied"
    "3" = "3: Somewhat dissatisfied"
    "4" = "4: Very dissatisfied"
    "L" = "L: Logical Skip"
    "M" = "M: Missing"
    "X" = "X: Survey Exclusion/Confidentiality Suppression"
   ;

  VALUE $COHORT
    "1" = "1: NSCG - 1990 Decennial"
    "2" = "2: SDR"
    "3" = "3: 1993 NSRCG"
    "4" = "4: 1995 NSRCG"
    "5" = "5: NSCG - 2000 Decennial"
    "6" = "6: 1997 NSRCG"
    "7" = "7: 1999 NSRCG"
    "8" = "8: 2001 NSRCG"
    "9" = "9: 2003 NSRCG"
    "A" = "A: 2006 NSRCG"
    "B" = "B: 2008 NSRCG"
    "C" = "C: 2010 NSRCG"
    "D" = "D: NSCG - 2009 ACS"
    "E" = "E: NSCG - 2011 ACS"
    "I" = "I: International SDR"
   ;

  VALUE $SURID
    "1" = "1: NSCG"
    "2" = "2: SDR"
    "3" = "3: NSRCG"
    "4" = "4: ISDR"
   ;

  VALUE $MODE
    "1" = "1: Mail"
    "2" = "2: CATI"
    "3" = "3: CAPI"
    "4" = "4: World Wide Web"
    "5" = "5: Telephone interview using web instrument"
    "6" = "6: Telephone interview using paper questionnaire"
    "7" = "7: Survey Exclusion/Confidentiality Suppression"
    "9" = "9: Missing"
   ;

  VALUE $TRNREAN
    "1" = "1: To improve skills or knowledge in your current occupational field"
    "2" = "2: To increase opportunities for promo/advance in current occupational field"
    "3" = "3: For licensure/certification in your current occupational field"
    "4" = "4: To facilitate a change to a different occupational field"
    "5" = "5: Required or expected by employer"
    "6" = "6: For leisure or personal interest"
    "7" = "7: other reason for training"
    "L" = "L: Logical Skip"
    "M" = "M: Missing"
    "X" = "X: Survey Exclusion/Confidentiality Suppression"
   ;

  VALUE $USCTZ
    "1" = "1: Born in US or US territories"
    "2" = "2: Born aboard of American parents"
    "3" = "3: By naturalization"
    "L" = "L: Logical Skip"
    "M" = "M: Missing"
    "X" = "X: Survey Exclusion/Confidentiality Suppression"
   ;

  VALUE $USNONUS
    "L" = "L: Logical Skip"
    "M" = "M: Missing"
    "N" = "N: Non-U.S."
    "X" = "X: Survey Exclusion/Confidentiality Suppression"
    "Y" = "Y: U.S."
   ;

  VALUE $WRK2ACT
    "00" = "00: No Secondary Activity"
    "01" = "01: Accounting, finance, contracts"
    "02" = "02: Basic res.-study to gain sci. knwldg prima. for its own sake"
    "03" = "03: Apld. res.-study to gain sci. knwldg to meet recognized need"
    "04" = "04: Dev.-knowledge from res. for the prod. of materials, devices"
    "05" = "05: Design of equipment, processes, structures, models"
    "06" = "06: Computer programming, systems or applications development"
    "07" = "07: Employee relations- inc. recruiting, personnel dev, training"
    "08" = "08: Managing or supervising people or projects"
    "09" = "09: Production, operations, maintenance (e.g. truck driver)"
    "10" = "10: Prof. services (healthcare, fin. serv., legal serv.,etc.)"
    "11" = "11: Sales, purchasing, marketing"
    "12" = "12: Quality or productivity management"
    "13" = "13: Teaching"
    "14" = "14: Other work activity"
    "L" = "L: Logical Skip"
    "LL" = "LL: Logical Skip"
    "M" = "M: Missing"
    "MM" = "MM: Missing"
    "X" = "X: Survey Exclusion/Confidentiality Suppression"
    "XX" = "XX: Survey Exclusion/Confidentiality Suppression"
   ;

  VALUE $WRKSUM
    "1" = "1: Research and Development"
    "2" = "2: Teaching"
    "3" = "3: Management and Administration"
    "4" = "4: Computer Applications"
    "5" = "5: Other"
    "6" = "6: No Secondary Activity"
    "L" = "L: Logical Skip"
    "M" = "M: Missing"
    "X" = "X: Survey Exclusion/Confidentiality Suppression"
   ;

  VALUE $YESNO
    "3" = "3: No"
    "L" = "L: Logical Skip"
    "M" = "M: Missing"
    "N" = "N: No"
    "X" = "X: Survey Exclusion/Confidentiality Suppression"
    "Y" = "Y: Yes"
   ;

