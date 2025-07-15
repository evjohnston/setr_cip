*******************************************************************************. 
*    SPSS Data Definition Statements                                          *. 
*                                                                             *. 
*    User Notes:                                                              *. 
*                                                                             *. 
*    1. You will need to add the path and file name to the FILE               *. 
*    HANDLE statement to point to your file location.                         *. 
*                                                                             *. 
*    2. You will also need to change the target location for your             *. 
*    output .SAV file                                                         *. 
*                                                                             *. 
*    3. SPSS will generate warning messages due to '.' missing values         *. 
*    for numeric fields in the input data                                     *. 
*                                                                             *. 
*    Technical support for SPSS users is not provided by NSF.  The validity   *. 
*    of these files has not been verified by NSF, as SPSS is not available    *. 
*    at the agency.                                                           *. 
*                                                                             *. 
*******************************************************************************. 
FILE HANDLE DATA / NAME='epsdr06.dat' LRECL= 00280  . 
  DATA LIST FILE=DATA /                                                  
    ACADADJF       00001    - 00001 (A)
    ACADADMN       00002    - 00002 (A)
    ACADNA         00003    - 00003 (A)
    ACADOTHP       00004    - 00004 (A)
    ACADPDOC       00005    - 00005 (A)
    ACADRCHF       00006    - 00006 (A)
    ACADTCHF       00007    - 00007 (A)
    ACTCAP         00008    - 00008 (A)
    ACTDED         00009    - 00009 (A)
    ACTMGT         00010    - 00010 (A)
    ACTRD          00011    - 00011 (A)
    ACTRDT         00012    - 00012 (A)
    ACTRES         00013    - 00013 (A)
    ACTTCH         00014    - 00014 (A)
    AGEP           00015    - 00017  
    BA03Y5P        00018    - 00037  
    BTHUS          00038    - 00039 (A)
    CH1218IN       00040    - 00040 (A)
    CH19IN         00041    - 00041 (A)
    CH25IN         00042    - 00042 (A)
    CH611IN        00043    - 00043 (A)
    CH6IN          00044    - 00044 (A)
    CHTOTPB        00045    - 00046 (A)
    CHU2IN         00047    - 00047 (A)
    CHUN12         00048    - 00048 (A)
    COHORT         00049    - 00049 (A)
    CTZUS          00050    - 00050 (A)
    CTZUSIN        00051    - 00051 (A)
    DGRDG          00052    - 00052 (A)
    EMSECPB        00053    - 00053 (A)
    EMSIZE         00054    - 00054 (A)
    EMSMI          00055    - 00055 (A)
    GENDER         00056    - 00056 (A)
    GOVSUP         00057    - 00057 (A)
    HD03Y5P        00058    - 00062  
    HRSWKP         00063    - 00065  
    ICCOMM         00066    - 00066 (A)
    ICOLLAB        00067    - 00067 (A)
    ICTRLA         00068    - 00068 (A)
    ICTRLH         00069    - 00069 (A)
    ICWBVT         00070    - 00070 (A)
    JOBSATIS       00071    - 00071 (A)
    LFSTAT         00072    - 00072 (A)
    LOOKWK         00073    - 00073 (A)
    LWYRP          00074    - 00078  
    MINRTY         00079    - 00079 (A)
    MR03Y5P        00080    - 00084  
    MRADV          00085    - 00085 (A)
    MRCAR          00086    - 00086 (A)
    MRCHG          00087    - 00087 (A)
    MRDG           00088    - 00088 (A)
    MRINT          00089    - 00089 (A)
    MRLIC          00090    - 00090 (A)
    MROTP          00091    - 00091 (A)
    MRSKL          00092    - 00092 (A)
    NBAMEDP        00093    - 00098 (A)
    NBAMEMG        00099    - 00099 (A)
    NDGMEDP        00100    - 00105 (A)
    NDGMEMG        00106    - 00106 (A)
    NMRMEDP        00107    - 00112 (A)
    NMRMEMG        00113    - 00113 (A)
    NOCMLST        00114    - 00114 (A)
    NOCPRMG        00115    - 00115 (A)
    NOCPRPB        00116    - 00121 (A)
    NRCHG          00122    - 00122 (A)
    NRCON          00123    - 00123 (A)
    NRFAM          00124    - 00124 (A)
    NRLOC          00125    - 00125 (A)
    NROCNA         00126    - 00126 (A)
    NROT           00127    - 00127 (A)
    NRPAY          00128    - 00128 (A)
    NRREA          00129    - 00129 (A)
    NRSEC          00130    - 00130 (A)
    NWFAM          00131    - 00131 (A)
    NWLAY          00132    - 00132 (A)
    NWNOND         00133    - 00133 (A)
    NWOCNA         00134    - 00134 (A)
    NWOTP          00135    - 00135 (A)
    NWSTU          00136    - 00136 (A)
    OCEDRLP        00137    - 00137 (A)
    PD1EMO         00138    - 00140  
    PD1EYR         00141    - 00145  
    PD1HEA         00146    - 00146 (A)
    PD1PEN         00147    - 00147 (A)
    PD1RT          00148    - 00148 (A)
    PD1SC          00149    - 00149 (A)
    PD1SMO         00150    - 00152  
    PD1SYR         00153    - 00157  
    PD2EMO         00158    - 00160  
    PD2EYR         00161    - 00165  
    PD2HEA         00166    - 00166 (A)
    PD2PEN         00167    - 00167 (A)
    PD2RT          00168    - 00168 (A)
    PD2SC          00169    - 00169 (A)
    PD2SMO         00170    - 00172  
    PD2SYR         00173    - 00177  
    PD3EMO         00178    - 00180  
    PD3EYR         00181    - 00185  
    PD3HEA         00186    - 00186 (A)
    PD3PEN         00187    - 00187 (A)
    PD3RT          00188    - 00188 (A)
    PD3SC          00189    - 00189 (A)
    PD3SMO         00190    - 00192  
    PD3SYR         00193    - 00197  
    PDREC          00198    - 00198 (A)
    PDRIC          00199    - 00199 (A)
    PDRIK          00200    - 00200 (A)
    PDRIP          00201    - 00201 (A)
    PDRIS          00202    - 00202 (A)
    PDROT          00203    - 00203 (A)
    PDRPO          00204    - 00204 (A)
    PJFAM          00205    - 00205 (A)
    PJNOND         00206    - 00206 (A)
    PJOCNA         00207    - 00207 (A)
    PJOTP          00208    - 00208 (A)
    PJWTFT         00209    - 00209 (A)
    RACETHMP       00210    - 00210 (A)
    REFID          00211    - 00219 (A)
    REFYR          00220    - 00224  
    SALARP         00225    - 00231  
    SRVMODE        00232    - 00232 (A)
    SUPWK          00233    - 00233 (A)
    SURID          00234    - 00234 (A)
    TCDGCMP        00235    - 00235 (A)
    WAACC          00236    - 00236 (A)
    WAAPRSH        00237    - 00237 (A)
    WABRSH         00238    - 00238 (A)
    WACOM          00239    - 00239 (A)
    WADEV          00240    - 00240 (A)
    WADSN          00241    - 00241 (A)
    WAEMRL         00242    - 00242 (A)
    WAMGMT         00243    - 00243 (A)
    WAOT           00244    - 00244 (A)
    WAPRI          00245    - 00246 (A)
    WAPROD         00247    - 00247 (A)
    WAPRSM         00248    - 00248 (A)
    WAQM           00249    - 00249 (A)
    WASALE         00250    - 00250 (A)
    WASCSM         00251    - 00251 (A)
    WASEC          00252    - 00253 (A)
    WASVC          00254    - 00254 (A)
    WATEA          00255    - 00255 (A)
    WKSORG         00256    - 00256 (A)
    WKSWKP         00257    - 00257 (A)
    WKTEAM         00258    - 00258 (A)
    WKTRNI         00259    - 00259 (A)
    WKUSORG        00260    - 00260 (A)
    WRKG           00261    - 00261 (A)
    WRKGP          00262    - 00262 (A)
    WTRCHOC        00263    - 00263 (A)
    WTREASN        00264    - 00264 (A)
    WTREM          00265    - 00265 (A)
    WTRLIC         00266    - 00266 (A)
    WTROPPS        00267    - 00267 (A)
    WTROT          00268    - 00268 (A)
    WTRPERS        00269    - 00269 (A)
    WTRSKL         00270    - 00270 (A)
    WTSURVY        00271    - 00280  
.
VARIABLE LABELS
    ACADADJF       "E_JOB_EMPLR_ACAD_POSITION_ADJUNCT"
    ACADADMN       "E_JOB_EMPLR_ACAD_POSITION_ADMIN_PUB"
    ACADNA         "E_JOB_EMPLR_ACAD_POSITION_NA"
    ACADOTHP       "E_JOB_EMPLR_ACAD_POSITION_OTHER_PUB"
    ACADPDOC       "E_JOB_EMPLR_ACAD_POSITION_POSTDOC"
    ACADRCHF       "E_JOB_EMPLR_ACAD_POSITION_RESEARCH_FACULTY"
    ACADTCHF       "E_JOB_EMPLR_ACAD_POSITION_TEACH_FACULTY"
    ACTCAP         "F_JOB_WRK_ACTIVITY_PRIM_SEC_COMPUTER"
    ACTDED         "F_JOB_WRK_ACTIVITY_PRIM_SEC_DEV_DESIGN"
    ACTMGT         "F_JOB_WRK_ACTIVITY_PRIM_SEC_MGT_SALES"
    ACTRD          "F_JOB_WRK_ACTIVITY_PRIM_SEC_RSRCH_DEV"
    ACTRDT         "F_JOB_WRK_ACTIVITY_PRIM_SEC_RSRCH_DEV_TEACH"
    ACTRES         "F_JOB_WRK_ACTIVITY_PRIM_SEC_RSRCH"
    ACTTCH         "F_JOB_WRK_ACTIVITY_PRIM_SEC_TEACH"
    AGEP           "U_DEM_AGE_PUB"
    BA03Y5P        "J_ED_BA_DEGREE_AWARD_YR2003_5_YR_GROUPING_PUB"
    BTHUS          "U_DEM_BIRTH_PLACE_REGION_US_NONUS"
    CH1218IN       "W_DEM_CHILDREN_IND_12_18"
    CH19IN         "W_DEM_CHILDREN_IND_19"
    CH25IN         "W_DEM_CHILDREN_IND_2_5"
    CH611IN        "W_DEM_CHILDREN_IND_6_11"
    CH6IN          "W_DEM_CHILDREN_IND_UNDER_6"
    CHTOTPB        "W_DEM_CHILDREN_TOTAL_PUB"
    CHU2IN         "W_DEM_CHILDREN_IND_UNDER_2"
    CHUN12         "W_DEM_CHILDREN_UNDER_12_IND"
    COHORT         "Z_SURVEY_COHORT"
    CTZUS          "V_DEM_US_CITIZENSHIP_STATUS"
    CTZUSIN        "V_DEM_CITIZENSHIP_US_CITIZEN"
    DGRDG          "O_ED_HD_DEGREE_TYPE"
    EMSECPB        "E_JOB_EMPLR_SECTOR_CD_PUB"
    EMSIZE         "E_JOB_EMPLR_SIZE"
    EMSMI          "D_JOB_SAME_EMPLOYER_JOB"
    GENDER         "U_DEM_GENDER"
    GOVSUP         "I_JOB_GOV_AGCY_SUPPORT_IND"
    HD03Y5P        "O_ED_HD_DEGREE_AWARD_YR2003_5_YR_GROUPING_PUB"
    HRSWKP         "B_PRINCIPAL_JOB_WKLY_HRS_PUB"
    ICCOMM         "F_JOB_INT_COLLAB_EMAIL_TELEPHONE"
    ICOLLAB        "F_JOB_INT_COLLAB_IND"
    ICTRLA         "F_JOB_INT_COLLAB_TRAVEL_ABROAD"
    ICTRLH         "F_JOB_INT_COLLAB_TRAVEL_HERE"
    ICWBVT         "F_JOB_INT_COLLAB_WEB_VIRTUAL"
    JOBSATIS       "F_JOB_SATISFACTION_OVERALL"
    LFSTAT         "A_JOB_STATUS_LABOR_FORCE_STAT"
    LOOKWK         "A_JOB_STATUS_LOOKING_FOR_WRK_IND"
    LWYRP          "C_JOB_LAST_WRKD_PUB_YR"
    MINRTY         "U_DEM_RACE_MINORITY_IND"
    MR03Y5P        "M_ED_MR_DEGREE_AWARD_YR2003_5_YR_GROUPING_PUB"
    MRADV          "M_ED_MR_DEGREE_REAS_ADVANCEMT"
    MRCAR          "M_ED_MR_DEGREE_REAS_BEGIN_CAREER"
    MRCHG          "M_ED_MR_DEGREE_REAS_CHG_FLD"
    MRDG           "M_ED_MR_DEGREE_TYPE"
    MRINT          "M_ED_MR_DEGREE_REAS_PERSONL"
    MRLIC          "M_ED_MR_DEGREE_REAS_LICENSING"
    MROTP          "M_ED_MR_DEGREE_REAS_OTHR_PUB"
    MRSKL          "M_ED_MR_DEGREE_REAS_ACQ_SKILL"
    NBAMEDP        "J_ED_BA_MAJOR_ED_CAT_PUB_NEW"
    NBAMEMG        "J_ED_BA_MAJOR_ED_GROUP_MAJOR_NEW"
    NDGMEDP        "O_ED_HD_MAJOR_ED_CAT_PUB_NEW"
    NDGMEMG        "O_ED_HD_MAJOR_ED_GRP_MAJOR_NEW"
    NMRMEDP        "M_ED_MR_MAJOR_ED_CAT_PUB_NEW"
    NMRMEMG        "M_ED_MR_MAJOR_ED_GRP_MAJOR_NEW"
    NOCMLST        "C_JOB_LAST_OCC_GRP_MAJOR_NEW"
    NOCPRMG        "B_JOB_OCC_GRP_MAJOR_NEW"
    NOCPRPB        "B_JOB_CAT_PUB_NEW"
    NRCHG          "B_JOB_OUTSIDE_FLD_REAS_CAREER_CHG"
    NRCON          "B_JOB_OUTSIDE_FLD_REAS_WRKNG_CONDS"
    NRFAM          "B_JOB_OUTSIDE_FLD_REAS_FAMILY"
    NRLOC          "B_JOB_OUTSIDE_FLD_REAS_LOC"
    NROCNA         "B_JOB_OUTSIDE_FLD_REAS_JOB_NOT_AVAIL"
    NROT           "B_JOB_OUTSIDE_FLD_REAS_OTHR"
    NRPAY          "B_JOB_OUTSIDE_FLD_REAS_PAY_OR_PROMOT"
    NRREA          "B_JOB_OUTSIDE_FLD_REASON_PRIMRY"
    NRSEC          "B_JOB_OUTSIDE_FLD_REASON_SECOND"
    NWFAM          "A_JOB_NOT_WRKNG_REAS_FAMILY"
    NWLAY          "A_JOB_NOT_WRKNG_REAS_LAYOFF"
    NWNOND         "A_JOB_NOT_WRKNG_REAS_NO_NEED"
    NWOCNA         "A_JOB_NOT_WRKNG_REAS_JOB_NOT_AVAIL"
    NWOTP          "A_JOB_NOT_WRKNG_REAS_OTHR_PUB"
    NWSTU          "A_JOB_NOT_WRKNG_REAS_STUDENT"
    OCEDRLP        "B_JOB_RELTD_TO_DEGREE"
    PD1EMO         "D_JOB_POST_DOC1_MONTH_ENDED"
    PD1EYR         "D_JOB_POST_DOC1_YEAR_ENDED"
    PD1HEA         "D_JOB_POST_DOC1_HEALTH_BENEFITS"
    PD1PEN         "D_JOB_POST_DOC1_PENSION_BENEFITS"
    PD1RT          "D_JOB_POST_DOC1_REASON_TAKEN"
    PD1SC          "D_JOB_POST_DOC1_SECTOR_TYPE"
    PD1SMO         "D_JOB_POST_DOC1_MONTH_STARTED"
    PD1SYR         "D_JOB_POST_DOC1_YEAR_STARTED"
    PD2EMO         "D_JOB_POST_DOC2_MONTH_ENDED"
    PD2EYR         "D_JOB_POST_DOC2_YEAR_ENDED"
    PD2HEA         "D_JOB_POST_DOC2_HEALTH_BENEFITS"
    PD2PEN         "D_JOB_POST_DOC2_PENSION_BENEFITS"
    PD2RT          "D_JOB_POST_DOC2_REASON_TAKEN"
    PD2SC          "D_JOB_POST_DOC2_SECTOR_TYPE"
    PD2SMO         "D_JOB_POST_DOC2_MONTH_STARTED"
    PD2SYR         "D_JOB_POST_DOC2_YEAR_STARTED"
    PD3EMO         "D_JOB_POST_DOC3_MONTH_ENDED"
    PD3EYR         "D_JOB_POST_DOC3_YEAR_ENDED"
    PD3HEA         "D_JOB_POST_DOC3_HEALTH_BENEFITS"
    PD3PEN         "D_JOB_POST_DOC3_PENSION_BENEFITS"
    PD3RT          "D_JOB_POST_DOC3_REASON_TAKEN"
    PD3SC          "D_JOB_POST_DOC3_SECTOR_TYPE"
    PD3SMO         "D_JOB_POST_DOC3_MONTH_STARTED"
    PD3SYR         "D_JOB_POST_DOC3_YEAR_STARTED"
    PDREC          "D_JOB_POST_DOC1_HELP_CAREER_OPPS"
    PDRIC          "D_JOB_POST_DOC1_HELP_INCREASE_CONTACTS"
    PDRIK          "D_JOB_POST_DOC1_HELP_SUBJECT_KNOWLEDGE"
    PDRIP          "D_JOB_POST_DOC1_HELP_IMPROVE_PROBSOL"
    PDRIS          "D_JOB_POST_DOC1_HELP_IMPROVE_SKILLS"
    PDROT          "D_JOB_POST_DOC1_HELP_OTHR"
    PDRPO          "D_JOB_POST_DOC1_HELP_OPPS_EQUIPMENT"
    PJFAM          "F_JOB_PART_TIME_REAS_FAMILY"
    PJNOND         "F_JOB_PART_TIME_REAS_NO_NEED"
    PJOCNA         "F_JOB_PART_TIME_REAS_FT_JOB_NA"
    PJOTP          "F_JOB_PART_TIME_REAS_OTHR_PUB"
    PJWTFT         "F_JOB_PART_TIME_WANT_FULL_TIME"
    RACETHMP       "U_DEM_MULTIPLE_RACE_ETHNICITY_CAT_PUB"
    REFID          "Z_REFERENCE_ID_NUMBER"
    REFYR          "Z_SURVEY_YEAR"
    SALARP         "H_JOB_SALARY_ANN_PUB"
    SRVMODE        "Z_SURVEY_MODE"
    SUPWK          "F_JOB_SUPERVISE_WRK_IND"
    SURID          "Z_SURVEY_IDENTIFIER"
    TCDGCMP        "N_ED_WORK_DEGREE_COMPLETED"
    WAACC          "F_JOB_WRK_ACTVTY_ACCTNG"
    WAAPRSH        "F_JOB_WRK_ACTVTY_APPLIED_RSCH"
    WABRSH         "F_JOB_WRK_ACTVTY_BASIC_RSCH"
    WACOM          "F_JOB_WRK_ACTVTY_COMPUTER"
    WADEV          "F_JOB_WRK_ACTVTY_DEVELOPMT"
    WADSN          "F_JOB_WRK_ACTVTY_DESIGN"
    WAEMRL         "F_JOB_WRK_ACTVTY_PERSONNEL"
    WAMGMT         "F_JOB_WRK_ACTVTY_MGT"
    WAOT           "F_JOB_WRK_ACTVTY_OTHR"
    WAPRI          "F_JOB_WRK_ACTIVITY_PRIMRY"
    WAPROD         "F_JOB_WRK_ACTVTY_PRODUCTN"
    WAPRSM         "F_JOB_WRK_ACTIVITY_PRIMRY_SUMRY"
    WAQM           "F_JOB_WRK_ACTVTY_QUAL_MGT"
    WASALE         "F_JOB_WRK_ACTVTY_SALES"
    WASCSM         "F_JOB_WRK_ACTIVITY_SECONDARY_SUMRY"
    WASEC          "F_JOB_WRK_ACTIVITY_SECONDARY"
    WASVC          "F_JOB_WRK_ACTVTY_PROF_SERV"
    WATEA          "F_JOB_WRK_ACTVTY_TEACH"
    WKSORG         "F_JOB_WRK_OTHERS_SAME_ORG"
    WKSWKP         "B_PRINCIPAL_JOB_WEEKS_PUB"
    WKTEAM         "F_JOB_WRK_TEAM"
    WKTRNI         "G_JOB_TRAINING_WRK_RELTD_IND"
    WKUSORG        "F_JOB_WRK_OTHERS_US_ORG"
    WRKG           "A_JOB_STATUS_EMPLOYED_IND"
    WRKGP          "D_JOB_EMPLOYED_IND"
    WTRCHOC        "G_JOB_TRAINING_REAS_CHG_OCCUPAT_DIF"
    WTREASN        "G_JOB_TRAINING_PRIMARY_REASON"
    WTREM          "G_JOB_TRAINING_REAS_EMPLR_REQ"
    WTRLIC         "G_JOB_TRAINING_REAS_LICENSING"
    WTROPPS        "G_JOB_TRAINING_REAS_OPPS_ADV_SALARY"
    WTROT          "G_JOB_TRAINING_REAS_OTHR"
    WTRPERS        "G_JOB_TRAINING_REAS_PERS"
    WTRSKL         "G_JOB_TRAINING_REAS_ACQ_SKILL"
    WTSURVY        "Z_WEIGHTING_FACTOR_SURVEY"
.
 
VALUE LABELS
  ACADADJF
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No (Left box blank)"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes (Marked box)"
   /ACADADMN
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No (Left box blank)"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes (Marked ''Dean' or 'President' box)"
   /ACADNA
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No (Left box blank)"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes (Marked box)"
   /ACADOTHP
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No (Left box blank)"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes (Marked ''Research Asst','Teaching Asst' or 'Other' box)"
   /ACADPDOC
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No (Left box blank)"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes (Marked box)"
   /ACADRCHF
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No (Left box blank)"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes (Marked box)"
   /ACADTCHF
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No (Left box blank)"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes (Marked box)"
   /ACTCAP
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /ACTDED
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /ACTMGT
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /ACTRD
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /ACTRDT
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /ACTRES
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /ACTTCH
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /AGEP
    23               "23: Age 23 or younger"
    75               "75: Age 75 or older"
    97               "97: Survey Exclusion/Confidentiality Suppression"
    98               "98: Logical Skip"
    99               "99: Missing"
   /BA03Y5P
    1950             "1950: 1950 or earlier"
    1955             "1955: 1951 to 1955"
    1960             "1960: 1956 to 1960"
    1965             "1965: 1961 to 1965"
    1970             "1970: 1966 to 1970"
    1975             "1975: 1971 to 1975"
    1980             "1980: 1976 to 1980"
    1985             "1985: 1981 to 1985"
    1990             "1990: 1986 to 1990"
    1995             "1995: 1991 to 1995"
    2000             "2000: 1996 to 2000"
    2001             "2001: 2001 to 2004"
    2005             "2005: 2005 or later"
    9997             "9997: Survey Exclusion/Confidentiality Suppression"
    9998             "9998: Logical Skip"
    9999             "9999: Missing"
   /BTHUS
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: Non-U.S."
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: U.S."
   /CH1218IN
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /CH19IN
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /CH25IN
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /CH611IN
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /CH6IN
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /CHTOTPB
    "1"   "1: 1 child"
    "2"   "2: 2 or more children"
    "98"   "98: Logical skip"
   /CHU2IN
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /CHUN12
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /COHORT
    "1"   "1: NSCG - 1990 Decennial"
    "2"   "2: SDR"
    "3"   "3: 1993 NSRCG"
    "4"   "4: 1995 NSRCG"
    "5"   "5: NSCG - 2000 Decennial"
    "6"   "6: 1997 NSRCG"
    "7"   "7: 1999 NSRCG"
    "8"   "8: 2001 NSRCG"
    "9"   "9: 2003 NSRCG"
    "A"   "A: 2006 NSRCG"
    "B"   "B: 2008 NSRCG"
   /CTZUS
    "1"   "1: Born in US or US territories"
    "2"   "2: Born aboard of American parents"
    "3"   "3: By naturalization"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
   /CTZUSIN
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /DGRDG
    "0"   "0: No specific degree or certificate"
    "1"   "1: Bachelor''s"
    "2"   "2: Masters"
    "3"   "3: Doctorate"
    "4"   "4: Professional"
    "5"   "5: Other"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
   /EMSECPB
    "1"   "1: 2-year college or Other School System"
    "2"   "2: 4-year college or Medical Institution"
    "3"   "3: Government"
    "4"   "4: Business/Industry"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
   /EMSIZE
    "1"   "1: 10 or fewer employees"
    "2"   "2: 11-24 employees"
    "3"   "3: 25-99 employees"
    "4"   "4: 100-499 employees"
    "5"   "5: 500-999 employees"
    "6"   "6: 1000-4999 employees"
    "7"   "7: 5000-24999 employees"
    "8"   "8: 25000+ employees"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
   /EMSMI
    "1"   "1: Same employer AND same job"
    "2"   "2: Same employer BUT different job"
    "3"   "3: Different employer BUT same job"
    "4"   "4: Different employer AND different job"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
   /GENDER
    "F"   "F: Female"
    "M"   "M: Male"
   /GOVSUP
    "3"   "3: Do Not Know"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /HD03Y5P
    1950             "1950: 1950 or earlier"
    1955             "1955: 1951 to 1955"
    1960             "1960: 1956 to 1960"
    1965             "1965: 1961 to 1965"
    1970             "1970: 1966 to 1970"
    1975             "1975: 1971 to 1975"
    1980             "1980: 1976 to 1980"
    1985             "1985: 1981 to 1985"
    1990             "1990: 1986 to 1990"
    1995             "1995: 1991 to 1995"
    2000             "2000: 1996 to 2000"
    2001             "2001: 2001 to 2004"
    2005             "2005: 2005 or later"
    9997             "9997: Survey Exclusion/Confidentiality Suppression"
    9998             "9998: Logical Skip"
    9999             "9999: Missing"
   /HRSWKP
    1                "1: 20 or less"
    2                "2: 21 - 35"
    3                "3: 36 - 40"
    4                "4: Greater than 40"
    97               "97: Survey Exclusion/Confidentiality Suppression"
    98               "98: Logical Skip"
    99               "99: Missing"
   /ICCOMM
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /ICOLLAB
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /ICTRLA
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /ICTRLH
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /ICWBVT
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /JOBSATIS
    "1"   "1: Very satisfied"
    "2"   "2: Somewhat satisfied"
    "3"   "3: Somewhat dissatisfied"
    "4"   "4: Very dissatisfied"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
   /LFSTAT
    "1"   "1: Employed"
    "2"   "2: Unemployed"
    "3"   "3: Not In Labor Force"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
   /LOOKWK
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /LWYRP
    1985             "1985: Before 1990"
    1990             "1990: 1990 to 1994"
    1995             "1995: 1995 to 1999"
    2000             "2000: 2000 to 2005"
    2005             "2005: 2005 or later"
    9997             "9997: Survey Exclusion/Confidentiality Suppression"
    9998             "9998: Logical Skip"
    9999             "9999: Missing"
   /MINRTY
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /MR03Y5P
    1950             "1950: 1950 or earlier"
    1955             "1955: 1951 to 1955"
    1960             "1960: 1956 to 1960"
    1965             "1965: 1961 to 1965"
    1970             "1970: 1966 to 1970"
    1975             "1975: 1971 to 1975"
    1980             "1980: 1976 to 1980"
    1985             "1985: 1981 to 1985"
    1990             "1990: 1986 to 1990"
    1995             "1995: 1991 to 1995"
    2000             "2000: 1996 to 2000"
    2001             "2001: 2001 to 2004"
    2005             "2005: 2005 or later"
    9997             "9997: Survey Exclusion/Confidentiality Suppression"
    9998             "9998: Logical Skip"
    9999             "9999: Missing"
   /MRADV
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /MRCAR
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /MRCHG
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /MRDG
    "0"   "0: No specific degree or certificate"
    "1"   "1: Bachelor''s"
    "2"   "2: Masters"
    "3"   "3: Doctorate"
    "4"   "4: Professional"
    "5"   "5: Other"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
   /MRINT
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /MRLIC
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /MROTP
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No (Left box blank)"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes (Marked ''Graduate School', 'Employer-required' or 'Other' box)"
   /MRSKL
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /NBAMEDP
    "12889S"   "12889S: SUPPRESSED-Computer and math"
    "19889S"   "19889S: Computer and mathematical sciences"
    "22639S"   "22639S: Biological sciences"
    "22699S"   "22699S: SUPPRESSED-Life and related sciences"
    "29889S"   "29889S: Other biological/agricultural/environmental life sciences"
    "318730"   "318730: Chemistry, except biochemistry"
    "33878S"   "33878S: Physics and astronomy"
    "38879S"   "38879S: SUPPRESSED-Physical and related sciences"
    "39889S"   "39889S: Other physical and related sciences"
    "41929S"   "41929S: Economics"
    "42929S"   "42929S: Political and related sciences"
    "43899S"   "43899S: Psychology"
    "44999S"   "44999S: Sociology and anthropology"
    "45939S"   "45939S: OTHER Social sciences"
    "48939S"   "48939S: SUPPRESSED-Social and related sciences"
    "527250"   "527250: Chemical engineering"
    "537260"   "537260: Civil engineering"
    "547280"   "547280: Electrical, electronics and communications engineering"
    "567350"   "567350: Mechanical engineering"
    "58799S"   "58799S: Other engineering"
    "59999S"   "59999S: SUPPRESSED-All science and engineering major group"
    "61199S"   "61199S: Health-related fields"
    "69999S"   "69999S: Other science and engineering-related"
    "71999S"   "71999S: Management and administration"
    "79999S"   "79999S: Other non-science and engineering"
    "999979"   "999979: Survey exclusion/Confidentiality suppression"
    "999989"   "999989: Logical skip"
    "999999"   "999999: Missing"
   /NBAMEMG
    "1"   "1: Computer and mathematical sciences"
    "2"   "2: Life and related sciences"
    "3"   "3: Physical and related sciences"
    "4"   "4: Social and related sciences"
    "5"   "5: Engineering"
    "6"   "6: S and E-Related Fields"
    "7"   "7: Non-S and E Fields"
    "8"   "8: Logical Skip"
    "9"   "9: Other categories"
   /NDGMEDP
    "12889S"   "12889S: SUPPRESSED-Computer and math"
    "19889S"   "19889S: Computer and mathematical sciences"
    "22639S"   "22639S: Biological sciences"
    "22699S"   "22699S: SUPPRESSED-Life and related sciences"
    "29889S"   "29889S: Other biological/agricultural/environmental life sciences"
    "318730"   "318730: Chemistry, except biochemistry"
    "33878S"   "33878S: Physics and astronomy"
    "38879S"   "38879S: SUPPRESSED-Physical and related sciences"
    "39889S"   "39889S: Other physical and related sciences"
    "41929S"   "41929S: Economics"
    "42929S"   "42929S: Political and related sciences"
    "43899S"   "43899S: Psychology"
    "44999S"   "44999S: Sociology and anthropology"
    "45939S"   "45939S: OTHER Social sciences"
    "48939S"   "48939S: SUPPRESSED-Social and related sciences"
    "527250"   "527250: Chemical engineering"
    "537260"   "537260: Civil engineering"
    "547280"   "547280: Electrical, electronics and communications engineering"
    "567350"   "567350: Mechanical engineering"
    "58799S"   "58799S: Other engineering"
    "59999S"   "59999S: SUPPRESSED-All science and engineering major group"
    "61199S"   "61199S: Health-related fields"
    "69999S"   "69999S: Other science and engineering-related"
    "71999S"   "71999S: Management and administration"
    "79999S"   "79999S: Other non-science and engineering"
    "999979"   "999979: Survey exclusion/Confidentiality suppression"
    "999989"   "999989: Logical skip"
    "999999"   "999999: Missing"
   /NDGMEMG
    "1"   "1: Computer and mathematical sciences"
    "2"   "2: Life and related sciences"
    "3"   "3: Physical and related sciences"
    "4"   "4: Social and related sciences"
    "5"   "5: Engineering"
    "6"   "6: S and E-Related Fields"
    "7"   "7: Non-S and E Fields"
    "8"   "8: Logical Skip"
    "9"   "9: Other categories"
   /NMRMEDP
    "12889S"   "12889S: SUPPRESSED-Computer and math"
    "19889S"   "19889S: Computer and mathematical sciences"
    "22639S"   "22639S: Biological sciences"
    "22699S"   "22699S: SUPPRESSED-Life and related sciences"
    "29889S"   "29889S: Other biological/agricultural/environmental life sciences"
    "318730"   "318730: Chemistry, except biochemistry"
    "33878S"   "33878S: Physics and astronomy"
    "38879S"   "38879S: SUPPRESSED-Physical and related sciences"
    "39889S"   "39889S: Other physical and related sciences"
    "41929S"   "41929S: Economics"
    "42929S"   "42929S: Political and related sciences"
    "43899S"   "43899S: Psychology"
    "44999S"   "44999S: Sociology and anthropology"
    "45939S"   "45939S: OTHER Social sciences"
    "48939S"   "48939S: SUPPRESSED-Social and related sciences"
    "527250"   "527250: Chemical engineering"
    "537260"   "537260: Civil engineering"
    "547280"   "547280: Electrical, electronics and communications engineering"
    "567350"   "567350: Mechanical engineering"
    "58799S"   "58799S: Other engineering"
    "59999S"   "59999S: SUPPRESSED-All science and engineering major group"
    "61199S"   "61199S: Health-related fields"
    "69999S"   "69999S: Other science and engineering-related"
    "71999S"   "71999S: Management and administration"
    "79999S"   "79999S: Other non-science and engineering"
    "999979"   "999979: Survey exclusion/Confidentiality suppression"
    "999989"   "999989: Logical skip"
    "999999"   "999999: Missing"
   /NMRMEMG
    "1"   "1: Computer and mathematical sciences"
    "2"   "2: Life and related sciences"
    "3"   "3: Physical and related sciences"
    "4"   "4: Social and related sciences"
    "5"   "5: Engineering"
    "6"   "6: S and E-Related Fields"
    "7"   "7: Non-S and E Fields"
    "8"   "8: Logical Skip"
    "9"   "9: Other categories"
   /NOCMLST
    "1"   "1: Computer and mathematical scientists"
    "2"   "2: Life and Related Scientists"
    "3"   "3: Physical and related scientists"
    "4"   "4: Social and related scientists"
    "5"   "5: Engineers"
    "6"   "6: S and E related occupations"
    "7"   "7: Non-S and E Occupations"
    "8"   "8: Logical Skip"
    "9"   "9: Other"
   /NOCPRMG
    "1"   "1: Computer and mathematical scientists"
    "2"   "2: Life and Related Scientists"
    "3"   "3: Physical and related scientists"
    "4"   "4: Social and related scientists"
    "5"   "5: Engineers"
    "6"   "6: S and E related occupations"
    "7"   "7: Non-S and E Occupations"
    "8"   "8: Logical Skip"
    "9"   "9: Other"
   /NOCPRPB
    "18296S"   "18296S: Postsecondary Teachers-Computer and Math Sciences"
    "19289S"   "19289S: Computer Scientists and Mathematicians"
    "22220S"   "22220S: Biological and Medical Scientists"
    "28288S"   "28288S: Postsecondary Teachers-Life Related Sciences"
    "29399S"   "29399S: Other Life and Related Scientists"
    "311930"   "311930: Chemists, except Biochemists"
    "33330S"   "33330S: Physicists and astronomers"
    "38299S"   "38299S: Postsecondary Teachers-Physical and Related Sciences"
    "39399S"   "39399S: Other Physical and Related Scientists"
    "412320"   "412320: Economists"
    "41410S"   "41410S: Economists"
    "42420S"   "42420S: Political and related scientists"
    "432360"   "432360: Psychologists"
    "43430S"   "43430S: Psychologists"
    "48299S"   "48299S: Postsecondary Teachers-Social and Related Sciences"
    "48399S"   "48399S: Other social scientists"
    "49399S"   "49399S: Other Social Scientists"
    "50500S"   "50500S: Other Engineers"
    "520850"   "520850: Chemical Engineers"
    "530860"   "530860: Civil Engineers"
    "540890"   "540890: Electrical and Electronics Engineers"
    "560940"   "560940: Mechanical Engineers"
    "582800"   "582800: Postsecondary Teachers - Engineering"
    "61199S"   "61199S: Health-related occupations"
    "62199S"   "62199S: S and E Managers"
    "63199S"   "63199S: S and E pre-college teachers"
    "64199S"   "64199S: S and E technicians and technologists"
    "65199S"   "65199S: S and E Pre-college Teachers"
    "711410"   "711410: Top and Mid-Level Managers, Executives, Administrators"
    "71199S"   "71199S: Other management-related occupations"
    "71199s"   "71199s: Other Management Related Occupations"
    "73599S"   "73599S: Teachers, except S and E Postsecondary"
    "79999S"   "79999S: Other non-science and engineering occupations"
    "999979"   "999979: Survey Exclusion/Confidentiality Suppression"
    "999989"   "999989: Logical Skip"
    "999999"   "999999: Missing"
   /NRCHG
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /NRCON
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /NRFAM
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /NRLOC
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /NROCNA
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /NROT
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /NRPAY
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /NRREA
    "0"   "0: No second most important reason"
    "1"   "1: Pay, promotion opportunities"
    "2"   "2: Working conditions (hours, equip., working envir.)"
    "3"   "3: Job location"
    "4"   "4: Change in career or professional interests"
    "5"   "5: Family-related reasons"
    "6"   "6: Job in highest degree field not available"
    "7"   "7: Other reason for not working"
    "A"   "A: Pay, promotion opportunities"
    "B"   "B: Working conditions (hours,  equip.,  working envir.)"
    "C"   "C: Job location"
    "D"   "D: Change in career or professional interests"
    "E"   "E: Family-related reasons"
    "F"   "F: Job in doctoral degree field not available"
    "G"   "G: Other reason for not working"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
   /NRSEC
    "0"   "0: No second most important reason"
    "1"   "1: Pay, promotion opportunities"
    "2"   "2: Working conditions (hours, equip., working envir.)"
    "3"   "3: Job location"
    "4"   "4: Change in career or professional interests"
    "5"   "5: Family-related reasons"
    "6"   "6: Job in highest degree field not available"
    "7"   "7: Other reason for not working"
    "A"   "A: Pay, promotion opportunities"
    "B"   "B: Working conditions (hours,  equip.,  working envir.)"
    "C"   "C: Job location"
    "D"   "D: Change in career or professional interests"
    "E"   "E: Family-related reasons"
    "F"   "F: Job in doctoral degree field not available"
    "G"   "G: Other reason for not working"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
   /NWFAM
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /NWLAY
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /NWNOND
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /NWOCNA
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /NWOTP
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No (Left box blank)"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes (Marked ''Illness', 'Retired' or 'Other' box)"
   /NWSTU
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /OCEDRLP
    "1"   "1: Closely related"
    "2"   "2: Somewhat related"
    "3"   "3: Not related"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
   /PD1EMO
    1                "1: January"
    10               "10: October"
    11               "11: November"
    12               "12: December"
    2                "2: February"
    3                "3: March"
    4                "4: April"
    5                "5: May"
    6                "6: June"
    7                "7: July"
    8                "8: August"
    9                "9: September"
    97               "97: Survey Exclusion/Confidentiality Suppression"
    98               "98: Logical Skip"
    99               "99: Missing"
   /PD1EYR
    9997             "9997: Survey Exclusion/Confidentiality Suppression"
    9998             "9998: Logical Skip"
    9999             "9999: Missing"
   /PD1HEA
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /PD1PEN
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /PD1RT
    "0"   "0: No Second Reason"
    "1"   "1: Additional training in PhD field"
    "2"   "2: Training in an area outside of Ph.D. field"
    "3"   "3: Work with a specific person or place"
    "4"   "4: Other employment not available"
    "5"   "5: Postdoc generally expected for career in this field"
    "6"   "6: Other"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
   /PD1SC
    "1"   "1: Educational Institution"
    "2"   "2: Business/Industry"
    "3"   "3: Government (any level)"
    "4"   "4: Other"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
   /PD1SMO
    1                "1: January"
    10               "10: October"
    11               "11: November"
    12               "12: December"
    2                "2: February"
    3                "3: March"
    4                "4: April"
    5                "5: May"
    6                "6: June"
    7                "7: July"
    8                "8: August"
    9                "9: September"
    97               "97: Survey Exclusion/Confidentiality Suppression"
    98               "98: Logical Skip"
    99               "99: Missing"
   /PD1SYR
    9997             "9997: Survey Exclusion/Confidentiality Suppression"
    9998             "9998: Logical Skip"
    9999             "9999: Missing"
   /PD2EMO
    1                "1: January"
    10               "10: October"
    11               "11: November"
    12               "12: December"
    2                "2: February"
    3                "3: March"
    4                "4: April"
    5                "5: May"
    6                "6: June"
    7                "7: July"
    8                "8: August"
    9                "9: September"
    97               "97: Survey Exclusion/Confidentiality Suppression"
    98               "98: Logical Skip"
    99               "99: Missing"
   /PD2EYR
    9997             "9997: Survey Exclusion/Confidentiality Suppression"
    9998             "9998: Logical Skip"
    9999             "9999: Missing"
   /PD2HEA
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /PD2PEN
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /PD2RT
    "0"   "0: No Second Reason"
    "1"   "1: Additional training in PhD field"
    "2"   "2: Training in an area outside of Ph.D. field"
    "3"   "3: Work with a specific person or place"
    "4"   "4: Other employment not available"
    "5"   "5: Postdoc generally expected for career in this field"
    "6"   "6: Other"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
   /PD2SC
    "1"   "1: Educational Institution"
    "2"   "2: Business/Industry"
    "3"   "3: Government (any level)"
    "4"   "4: Other"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
   /PD2SMO
    1                "1: January"
    10               "10: October"
    11               "11: November"
    12               "12: December"
    2                "2: February"
    3                "3: March"
    4                "4: April"
    5                "5: May"
    6                "6: June"
    7                "7: July"
    8                "8: August"
    9                "9: September"
    97               "97: Survey Exclusion/Confidentiality Suppression"
    98               "98: Logical Skip"
    99               "99: Missing"
   /PD2SYR
    9997             "9997: Survey Exclusion/Confidentiality Suppression"
    9998             "9998: Logical Skip"
    9999             "9999: Missing"
   /PD3EMO
    1                "1: January"
    10               "10: October"
    11               "11: November"
    12               "12: December"
    2                "2: February"
    3                "3: March"
    4                "4: April"
    5                "5: May"
    6                "6: June"
    7                "7: July"
    8                "8: August"
    9                "9: September"
    97               "97: Survey Exclusion/Confidentiality Suppression"
    98               "98: Logical Skip"
    99               "99: Missing"
   /PD3EYR
    9997             "9997: Survey Exclusion/Confidentiality Suppression"
    9998             "9998: Logical Skip"
    9999             "9999: Missing"
   /PD3HEA
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /PD3PEN
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /PD3RT
    "0"   "0: No Second Reason"
    "1"   "1: Additional training in PhD field"
    "2"   "2: Training in an area outside of Ph.D. field"
    "3"   "3: Work with a specific person or place"
    "4"   "4: Other employment not available"
    "5"   "5: Postdoc generally expected for career in this field"
    "6"   "6: Other"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
   /PD3SC
    "1"   "1: Educational Institution"
    "2"   "2: Business/Industry"
    "3"   "3: Government (any level)"
    "4"   "4: Other"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
   /PD3SMO
    1                "1: January"
    10               "10: October"
    11               "11: November"
    12               "12: December"
    2                "2: February"
    3                "3: March"
    4                "4: April"
    5                "5: May"
    6                "6: June"
    7                "7: July"
    8                "8: August"
    9                "9: September"
    97               "97: Survey Exclusion/Confidentiality Suppression"
    98               "98: Logical Skip"
    99               "99: Missing"
   /PD3SYR
    9997             "9997: Survey Exclusion/Confidentiality Suppression"
    9998             "9998: Logical Skip"
    9999             "9999: Missing"
   /PDREC
    "1"   "1: Great Extent"
    "2"   "2: Somewhat"
    "3"   "3: Not at All"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
   /PDRIC
    "1"   "1: Great Extent"
    "2"   "2: Somewhat"
    "3"   "3: Not at All"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
   /PDRIK
    "1"   "1: Great Extent"
    "2"   "2: Somewhat"
    "3"   "3: Not at All"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
   /PDRIP
    "1"   "1: Great Extent"
    "2"   "2: Somewhat"
    "3"   "3: Not at All"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
   /PDRIS
    "1"   "1: Great Extent"
    "2"   "2: Somewhat"
    "3"   "3: Not at All"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
   /PDROT
    "1"   "1: Great Extent"
    "2"   "2: Somewhat"
    "3"   "3: Not at All"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
   /PDRPO
    "1"   "1: Great Extent"
    "2"   "2: Somewhat"
    "3"   "3: Not at All"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
   /PJFAM
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /PJNOND
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /PJOCNA
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /PJOTP
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No (Left box blank)"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes (Marked ''Retired', 'Student', 'Illness', 'Hold Another Job' or 'Other' b"
   /PJWTFT
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /RACETHMP
    "1"   "1: Asian, non-Hispanic ONLY"
    "5"   "5: White, non-Hispanic ONLY"
    "7"   "7: Under-represented Minorities"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
   /REFYR
    9997             "9997: Survey Exclusion/Confidentiality Suppression"
    9998             "9998: Logical Skip"
    9999             "9999: Missing"
   /SALARP
    999997           "999997: Survey Exclusion/Confidentiality Suppression"
    999998           "999998: Logical Skip"
    999999           "999999: Missing"
   /SRVMODE
    "1"   "1: Mail"
    "2"   "2: CATI"
    "3"   "3: CAPI"
    "4"   "4: World Wide Web"
    "7"   "7: Survey Exclusion/Confidentiality Suppression"
    "9"   "9: Missing"
   /SUPWK
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /SURID
    "1"   "1: NSCG"
    "2"   "2: SDR"
    "3"   "3: NSRCG"
   /TCDGCMP
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /WAACC
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /WAAPRSH
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /WABRSH
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /WACOM
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /WADEV
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /WADSN
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /WAEMRL
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /WAMGMT
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /WAOT
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /WAPRI
    "00"   "00: No Secondary Activity"
    "01"   "01: Accounting, finance, contracts"
    "02"   "02: Basic res.-study to gain sci. knwldg prima. for its own sake"
    "03"   "03: Apld. res.-study to gain sci. knwldg to meet recognized need"
    "04"   "04: Dev.-knowledge from res. for the prod. of materials, devices"
    "05"   "05: Design of equipment, processes, structures, models"
    "06"   "06: Computer programming, systems or applications development"
    "07"   "07: Employee relations- inc. recruiting, personnel dev, training"
    "08"   "08: Managing or supervising people or projects"
    "09"   "09: Production, operations, maintenance (e.g. truck driver)"
    "10"   "10: Prof. services (healthcare, fin. serv., legal serv.,etc.)"
    "11"   "11: Sales, purchasing, marketing"
    "12"   "12: Quality or productivity management"
    "13"   "13: Teaching"
    "14"   "14: Other work activity"
    "L"   "L: Logical Skip"
    "LL"   "LL: Logical Skip"
    "M"   "M: Missing"
    "MM"   "MM: Missing"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "XX"   "XX: Survey Exclusion/Confidentiality Suppression"
   /WAPROD
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /WAPRSM
    "1"   "1: Research and Development"
    "2"   "2: Teaching"
    "3"   "3: Management and Administration"
    "4"   "4: Computer Applications"
    "5"   "5: Other"
    "6"   "6: No Secondary Activity"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
   /WAQM
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /WASALE
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /WASCSM
    "1"   "1: Research and Development"
    "2"   "2: Teaching"
    "3"   "3: Management and Administration"
    "4"   "4: Computer Applications"
    "5"   "5: Other"
    "6"   "6: No Secondary Activity"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
   /WASEC
    "00"   "00: No Secondary Activity"
    "01"   "01: Accounting, finance, contracts"
    "02"   "02: Basic res.-study to gain sci. knwldg prima. for its own sake"
    "03"   "03: Apld. res.-study to gain sci. knwldg to meet recognized need"
    "04"   "04: Dev.-knowledge from res. for the prod. of materials, devices"
    "05"   "05: Design of equipment, processes, structures, models"
    "06"   "06: Computer programming, systems or applications development"
    "07"   "07: Employee relations- inc. recruiting, personnel dev, training"
    "08"   "08: Managing or supervising people or projects"
    "09"   "09: Production, operations, maintenance (e.g. truck driver)"
    "10"   "10: Prof. services (healthcare, fin. serv., legal serv.,etc.)"
    "11"   "11: Sales, purchasing, marketing"
    "12"   "12: Quality or productivity management"
    "13"   "13: Teaching"
    "14"   "14: Other work activity"
    "L"   "L: Logical Skip"
    "LL"   "LL: Logical Skip"
    "M"   "M: Missing"
    "MM"   "MM: Missing"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "XX"   "XX: Survey Exclusion/Confidentiality Suppression"
   /WASVC
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /WATEA
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /WKSORG
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /WKSWKP
    "1"   "1: 1-10 weeks"
    "2"   "2: 11-20 weeks"
    "3"   "3: 21-39 weeks"
    "4"   "4: 40-52 weeks"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
   /WKTEAM
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /WKTRNI
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /WKUSORG
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /WRKG
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /WRKGP
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /WTRCHOC
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /WTREASN
    "1"   "1: To improve skills or knowledge in your current occupational field"
    "2"   "2: To increase opportunities for promo/advance in current occupational field"
    "3"   "3: For licensure/certification in your current occupational field"
    "4"   "4: To facilitate a change to a different occupational field"
    "5"   "5: Required or expected by employer"
    "6"   "6: For leisure or personal interest"
    "7"   "7: other reason for training"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
   /WTREM
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /WTRLIC
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /WTROPPS
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /WTROT
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /WTRPERS
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /WTRSKL
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
  /
.
EXECUTE .
SAVE OUTFILE = 'epsdr06.SAV' /COMPRESSED .
