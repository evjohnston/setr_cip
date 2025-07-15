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
FILE HANDLE DATA / NAME='epsd03.dat' LRECL= 00244  . 
  DATA LIST FILE=DATA /                                                  
    ACADADJF       00001    - 00001 (A)
    ACADADMN       00002    - 00002 (A)
    ACADNA         00003    - 00003 (A)
    ACADOTHP       00004    - 00004 (A)
    ACADPDOC       00005    - 00005 (A)
    ACADRCHF       00006    - 00006 (A)
    ACADTCHF       00007    - 00007 (A)
    ACADV          00008    - 00008 (A)
    ACCAR          00009    - 00009 (A)
    ACCCEP         00010    - 00010 (A)
    ACCHG          00011    - 00011 (A)
    ACFPT          00012    - 00012 (A)
    ACINT          00013    - 00013 (A)
    ACLIC          00014    - 00014 (A)
    ACOTP          00015    - 00015 (A)
    ACSIN          00016    - 00016 (A)
    ACSKL          00017    - 00017 (A)
    ACTCAP         00018    - 00018 (A)
    ACTDED         00019    - 00019 (A)
    ACTMGT         00020    - 00020 (A)
    ACTRD          00021    - 00021 (A)
    ACTRDT         00022    - 00022 (A)
    ACTRES         00023    - 00023 (A)
    ACTTCH         00024    - 00024 (A)
    AGEP           00025    - 00027  
    ARTICLEP       00028    - 00031  
    BA03Y5P        00032    - 00036  
    BOOKSP         00037    - 00037 (A)
    BTHUS          00038    - 00039 (A)
    CH1218IN       00040    - 00040 (A)
    CH19IN         00041    - 00041 (A)
    CH25IN         00042    - 00042 (A)
    CH611IN        00043    - 00043 (A)
    CH6IN          00044    - 00044 (A)
    CHTOTPB        00045    - 00046 (A)
    CHU2IN         00047    - 00047 (A)
    CHUN12         00048    - 00048 (A)
    CMEDU          00049    - 00049 (A)
    CMFAM          00050    - 00050 (A)
    CMFLD          00051    - 00051 (A)
    CMOPP          00052    - 00052 (A)
    CMOT           00053    - 00053 (A)
    CMPRI          00054    - 00054 (A)
    CMSEC          00055    - 00055 (A)
    COHORT         00056    - 00056 (A)
    CTZUS          00057    - 00057 (A)
    CTZUSIN        00058    - 00058 (A)
    DGRDG          00059    - 00059 (A)
    EMSECPB        00060    - 00060 (A)
    EMSIZE         00061    - 00061 (A)
    EMSMI          00062    - 00062 (A)
    FACTEN         00063    - 00063 (A)
    FNVSPUB        00064    - 00064 (A)
    FPTIND         00065    - 00065 (A)
    FSAGR          00066    - 00066 (A)
    FSDED          00067    - 00067 (A)
    FSDK           00068    - 00068 (A)
    FSDOD          00069    - 00069 (A)
    FSDOE          00070    - 00070 (A)
    FSDOT          00071    - 00071 (A)
    FSEPA          00072    - 00072 (A)
    FSHHS          00073    - 00073 (A)
    FSNASA         00074    - 00074 (A)
    FSNIH          00075    - 00075 (A)
    FSNSF          00076    - 00076 (A)
    FSOT           00077    - 00077 (A)
    FTPRET         00078    - 00078 (A)
    GENDER         00079    - 00079 (A)
    GOVSUP         00080    - 00080 (A)
    HD03Y5P        00081    - 00085  
    HRSWKP         00086    - 00088  
    JOBSATIS       00089    - 00089 (A)
    LFSTAT         00090    - 00090 (A)
    LOOKWK         00091    - 00091 (A)
    LWYRP          00092    - 00096  
    MGRNAT         00097    - 00097 (A)
    MGROTH         00098    - 00098 (A)
    MGRSOC         00099    - 00099 (A)
    MINRTY         00100    - 00100 (A)
    MR03Y5P        00101    - 00105  
    MRADV          00106    - 00106 (A)
    MRCAR          00107    - 00107 (A)
    MRCHG          00108    - 00108 (A)
    MRDG           00109    - 00109 (A)
    MRINT          00110    - 00110 (A)
    MRLIC          00111    - 00111 (A)
    MROTP          00112    - 00112 (A)
    MRSKL          00113    - 00113 (A)
    NBAMEDP        00114    - 00119 (A)
    NBAMEMG        00120    - 00120 (A)
    NDGMEDP        00121    - 00126 (A)
    NDGMEMG        00127    - 00127 (A)
    NEWBUS         00128    - 00128 (A)
    NMRMEDP        00129    - 00134 (A)
    NMRMEMG        00135    - 00135 (A)
    NOCMLST        00136    - 00136 (A)
    NOCPRMG        00137    - 00137 (A)
    NOCPRPB        00138    - 00143 (A)
    NRCHG          00144    - 00144 (A)
    NRCON          00145    - 00145 (A)
    NRFAM          00146    - 00146 (A)
    NRLOC          00147    - 00147 (A)
    NROCNA         00148    - 00148 (A)
    NROT           00149    - 00149 (A)
    NRPAY          00150    - 00150 (A)
    NRREA          00151    - 00151 (A)
    NRSEC          00152    - 00152 (A)
    NWFAM          00153    - 00153 (A)
    NWLAY          00154    - 00154 (A)
    NWNOND         00155    - 00155 (A)
    NWOCNA         00156    - 00156 (A)
    NWOTP          00157    - 00157 (A)
    NWSTU          00158    - 00158 (A)
    OCEDRLP        00159    - 00159 (A)
    PAPERSP        00160    - 00163  
    PRMBRPB        00164    - 00166  
    PROMTGI        00167    - 00167 (A)
    PTFAM          00168    - 00168 (A)
    PTNOND         00169    - 00169 (A)
    PTOCNA         00170    - 00170 (A)
    PTOTP          00171    - 00171 (A)
    PTWTFT         00172    - 00172 (A)
    RACETHMP       00173    - 00173 (A)
    REFID          00174    - 00182 (A)
    REFYR          00183    - 00187  
    SALARP         00188    - 00194  
    SRVMODE        00195    - 00195 (A)
    SUPWK          00196    - 00196 (A)
    SURID          00197    - 00197 (A)
    TCDGCMP        00198    - 00198 (A)
    WAACC          00199    - 00199 (A)
    WAAPRSH        00200    - 00200 (A)
    WABRSH         00201    - 00201 (A)
    WACOM          00202    - 00202 (A)
    WADEV          00203    - 00203 (A)
    WADSN          00204    - 00204 (A)
    WAEMRL         00205    - 00205 (A)
    WAMGMT         00206    - 00206 (A)
    WAOT           00207    - 00207 (A)
    WAPRI          00208    - 00209 (A)
    WAPROD         00210    - 00210 (A)
    WAPRSM         00211    - 00211 (A)
    WAQM           00212    - 00212 (A)
    WASALE         00213    - 00213 (A)
    WASCSM         00214    - 00214 (A)
    WASEC          00215    - 00216 (A)
    WASVC          00217    - 00217 (A)
    WATEA          00218    - 00218 (A)
    WKSWKP         00219    - 00219 (A)
    WKTRNI         00220    - 00220 (A)
    WRKG           00221    - 00221 (A)
    WRKGP          00222    - 00222 (A)
    WTAPRF         00223    - 00223 (A)
    WTMGT          00224    - 00224 (A)
    WTOT           00225    - 00225 (A)
    WTRADV         00226    - 00226 (A)
    WTRCHG         00227    - 00227 (A)
    WTREM          00228    - 00228 (A)
    WTRLIC         00229    - 00229 (A)
    WTRNEW         00230    - 00230 (A)
    WTROT          00231    - 00231 (A)
    WTRSKL         00232    - 00232 (A)
    WTRSN          00233    - 00233 (A)
    WTSURVY        00234    - 00243  
    WTTECH         00244    - 00244 (A)
.
VARIABLE LABELS
    ACADADJF       "E_JOB_EMPLR_ACAD_POSITION_ADJUNCT"
    ACADADMN       "E_JOB_EMPLR_ACAD_POSITION_ADMIN_PUB"
    ACADNA         "E_JOB_EMPLR_ACAD_POSITION_NA"
    ACADOTHP       "E_JOB_EMPLR_ACAD_POSITION_OTHER_PUB"
    ACADPDOC       "E_JOB_EMPLR_ACAD_POSITION_POSTDOC"
    ACADRCHF       "E_JOB_EMPLR_ACAD_POSITION_RESEARCH_FACULTY"
    ACADTCHF       "E_JOB_EMPLR_ACAD_POSITION_TEACH_FACULTY"
    ACADV          "N_ED_REF_WK_ENROLL_REAS_ADVANCEMT"
    ACCAR          "N_ED_REF_WK_ENROLL_REAS_BEGIN_CAREER"
    ACCCEP         "N_ED_REF_WK_EMP_ASSISTANCE"
    ACCHG          "N_ED_REF_WK_ENROLL_REAS_CHG_FLD"
    ACFPT          "N_ED_REF_WK_ENROLL_FT_PT_IND"
    ACINT          "N_ED_REF_WK_ENROLL_REAS_PERSONL"
    ACLIC          "N_ED_REF_WK_ENROLL_REAS_LICENSING"
    ACOTP          "N_ED_REF_WK_ENROLL_REAS_OTHR_PUB"
    ACSIN          "N_ED_REF_WK_ENROLL_IND_REV"
    ACSKL          "N_ED_REF_WK_ENROLL_REAS_ACQ_SKILL"
    ACTCAP         "F_JOB_WRK_ACTIVITY_PRIM_SEC_COMPUTER"
    ACTDED         "F_JOB_WRK_ACTIVITY_PRIM_SEC_DEV_DESIGN"
    ACTMGT         "F_JOB_WRK_ACTIVITY_PRIM_SEC_MGT_SALES"
    ACTRD          "F_JOB_WRK_ACTIVITY_PRIM_SEC_RSRCH_DEV"
    ACTRDT         "F_JOB_WRK_ACTIVITY_PRIM_SEC_RSRCH_DEV_TEACH"
    ACTRES         "F_JOB_WRK_ACTIVITY_PRIM_SEC_RSRCH"
    ACTTCH         "F_JOB_WRK_ACTIVITY_PRIM_SEC_TEACH"
    AGEP           "U_DEM_AGE_PUB"
    ARTICLEP       "F_JOB_ARTICLES_PROF_JOURNALS_PUB"
    BA03Y5P        "J_ED_BA_DEGREE_AWARD_YR2003_5_YR_GROUPING_PUB"
    BOOKSP         "F_JOB_BOOKS_PUBLISHED_IND"
    BTHUS          "U_DEM_BIRTH_PLACE_REGION_US_NONUS"
    CH1218IN       "W_DEM_CHILDREN_IND_12_18"
    CH19IN         "W_DEM_CHILDREN_IND_19"
    CH25IN         "W_DEM_CHILDREN_IND_2_5"
    CH611IN        "W_DEM_CHILDREN_IND_6_11"
    CH6IN          "W_DEM_CHILDREN_IND_UNDER_6"
    CHTOTPB        "W_DEM_CHILDREN_TOTAL_PUB"
    CHU2IN         "W_DEM_CHILDREN_IND_UNDER_2"
    CHUN12         "W_DEM_CHILDREN_UNDER_12_IND"
    CMEDU          "V_DEM_FIRST_CAME_REASON_TO_US_EDUCATION"
    CMFAM          "V_DEM_FIRST_CAME_REASON_TO_US_FAMILY"
    CMFLD          "V_DEM_FIRST_CAME_REASON_TO_US_SCIENCE"
    CMOPP          "V_DEM_FIRST_CAME_REASON_TO_US_JOB"
    CMOT           "V_DEM_FIRST_CAME_REASON_TO_US_OTHER"
    CMPRI          "V_DEM_FIRST_CAME_REASON_TO_US_PRIMARY"
    CMSEC          "V_DEM_FIRST_CAME_REASON_TO_US_SECONDARY"
    COHORT         "Z_SURVEY_COHORT"
    CTZUS          "V_DEM_US_CITIZENSHIP_STATUS"
    CTZUSIN        "V_DEM_CITIZENSHIP_US_CITIZEN"
    DGRDG          "O_ED_HD_DEGREE_TYPE"
    EMSECPB        "E_JOB_EMPLR_SECTOR_CD_PUB"
    EMSIZE         "E_JOB_EMPLR_SIZE"
    EMSMI          "D_JOB_SAME_EMPLOYER_JOB"
    FACTEN         "E_JOB_EMPLR_EDUC_INST_TENURE_RANK"
    FNVSPUB        "V_DEM_FIRST_CAME_VISA_TYPE_PUB"
    FPTIND         "A_JOB_STATUS_FULL_PART_TIME"
    FSAGR          "I_JOB_GOV_AGCY_SUPP_AGRIC"
    FSDED          "I_JOB_GOV_AGCY_SUPP_EDUC"
    FSDK           "I_JOB_GOV_AGCY_SUPPORT_DONT_KNOW"
    FSDOD          "I_JOB_GOV_AGCY_SUPP_DEFENSE"
    FSDOE          "I_JOB_GOV_AGCY_SUPP_ENERGY"
    FSDOT          "I_JOB_GOV_AGCY_SUPP_TRANSPORT"
    FSEPA          "I_JOB_GOV_AGCY_SUPP_EPA"
    FSHHS          "I_JOB_GOV_AGCY_SUPP_HHS"
    FSNASA         "I_JOB_GOV_AGCY_SUPP_NASA"
    FSNIH          "I_JOB_GOV_AGCY_SUPP_NIH"
    FSNSF          "I_JOB_GOV_AGCY_SUPP_NSF"
    FSOT           "I_JOB_GOV_AGCY_SUPP_OTHR"
    FTPRET         "B_JOB_RETIRED_PREVLY_IND"
    GENDER         "U_DEM_GENDER"
    GOVSUP         "I_JOB_GOV_AGCY_SUPPORT_IND"
    HD03Y5P        "O_ED_HD_DEGREE_AWARD_YR2003_5_YR_GROUPING_PUB"
    HRSWKP         "B_PRINCIPAL_JOB_WKLY_HRS_PUB"
    JOBSATIS       "F_JOB_SATISFACTION_OVERALL"
    LFSTAT         "A_JOB_STATUS_LABOR_FORCE_STAT"
    LOOKWK         "A_JOB_STATUS_LOOKING_FOR_WRK_IND"
    LWYRP          "C_JOB_LAST_WRKD_PUB_YR"
    MGRNAT         "F_JOB_MGR_TECH_EXPERTSE_PHYS_SCI"
    MGROTH         "F_JOB_MGR_TECH_EXPERTSE_OTHER"
    MGRSOC         "F_JOB_MGR_TECH_EXPERTSE_SOCIAL_SCI"
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
    NEWBUS         "E_JOB_EMPLR_NEW_BUSINESS"
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
    PAPERSP        "F_JOB_PAPERS_PRESENTED_PUB"
    PRMBRPB        "D_JOB_PROF_ASSOC_MEMBRSHPS_NBR_PUB"
    PROMTGI        "D_JOB_PROF_ASSOC_ATTEND_MTNGS_IND"
    PTFAM          "C_JOB_PT_REAS_FAMILY"
    PTNOND         "C_JOB_PT_REAS_NO_NEED"
    PTOCNA         "C_JOB_PT_REAS_JOB_NOT_AVAIL"
    PTOTP          "C_JOB_PT_REAS_OTHR_PUB"
    PTWTFT         "A_JOB_PT_WANT_FULL_TIME"
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
    WKSWKP         "B_PRINCIPAL_JOB_WEEKS_PUB"
    WKTRNI         "G_JOB_TRAINING_WRK_RELTD_IND"
    WRKG           "A_JOB_STATUS_EMPLOYED_IND"
    WRKGP          "D_JOB_EMPLOYED_IND"
    WTAPRF         "G_JOB_TRAINING_WRK_RELTD_GENL"
    WTMGT          "G_JOB_TRAINING_WRK_RELTD_MGT"
    WTOT           "G_JOB_TRAINING_WRK_RELTD_OTHR"
    WTRADV         "G_JOB_TRAINING_REAS_ADVANCEMT"
    WTRCHG         "G_JOB_TRAINING_REAS_CHG_OCCUPAT"
    WTREM          "G_JOB_TRAINING_REAS_EMPLR_REQ"
    WTRLIC         "G_JOB_TRAINING_REAS_LICENSING"
    WTRNEW         "G_JOB_TRAINING_REAS_NEW_POS"
    WTROT          "G_JOB_TRAINING_REAS_OTHR"
    WTRSKL         "G_JOB_TRAINING_REAS_ACQ_SKILL"
    WTRSN          "G_JOB_TRAINING_REAS_PRIMRY"
    WTSURVY        "Z_WEIGHTING_FACTOR_SURVEY"
    WTTECH         "G_JOB_TRAINING_WRK_RELTD_TECHNCL"
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
   /ACADV
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /ACCAR
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /ACCCEP
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /ACCHG
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /ACFPT
    "1"   "1: Full-time Student"
    "2"   "2: Part-time Student"
    "3"   "3: Not enrolled in a degree program, but taking courses"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
   /ACINT
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /ACLIC
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /ACOTP
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No (Left box blank)"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes (Marked ''Graduate School', 'Employer-required' or 'Other' box)"
   /ACSIN
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /ACSKL
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
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
   /ARTICLEP
    0                "0: Zero"
    1                "1: 1"
    2                "2: 2"
    3                "3: 3"
    4                "4: 4"
    5                "5: 5 or more"
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
   /BOOKSP
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
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
   /CMEDU
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /CMFAM
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /CMFLD
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /CMOPP
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /CMOT
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /CMPRI
    "1"   "1: Family-related reasons"
    "2"   "2: Educational opportunities"
    "3"   "3: Job or economic opportunities"
    "4"   "4: Scientific or professional infrastructure"
    "5"   "5: Other"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
   /CMSEC
    "0"   "0: No second reason"
    "1"   "1: Family-related reasons"
    "2"   "2: Educational opportunities"
    "3"   "3: Job or economic opportunities"
    "4"   "4: Scientific or professional infrastructure"
    "5"   "5: Other"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
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
   /FACTEN
    "1"   "1: Rank and Tenured/On tenure track"
    "2"   "2: Rank and Not on tenure track"
    "3"   "3: Rank/Tenure NA or RANK NA/Tenured or on tenure track"
    "4"   "4: Rank N/A and Not on tenure track/Tenure N/A"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
   /FNVSPUB
    "1"   "1: Permanent U.S. Resident Visa"
    "2"   "2: Temporary Resident Visa for study or training"
    "3"   "3: Other temporary Visa"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
   /FPTIND
    "1"   "1: Full-time"
    "2"   "2: Part-time"
    "3"   "3: No"
    "9"   "9: Unknown/Not Reported"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
   /FSAGR
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No (Left box blank)"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes (Marked box)"
   /FSDED
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No (Left box blank)"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes (Marked box)"
   /FSDK
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No (Left box blank)"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes (Marked box)"
   /FSDOD
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No (Left box blank)"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes (Marked box)"
   /FSDOE
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No (Left box blank)"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes (Marked box)"
   /FSDOT
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No (Left box blank)"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes (Marked box)"
   /FSEPA
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No (Left box blank)"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes (Marked box)"
   /FSHHS
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No (Left box blank)"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes (Marked box)"
   /FSNASA
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No (Left box blank)"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes (Marked box)"
   /FSNIH
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No (Left box blank)"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes (Marked box)"
   /FSNSF
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No (Left box blank)"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes (Marked box)"
   /FSOT
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No (Left box blank)"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes (Marked box)"
   /FTPRET
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /GENDER
    "F"   "F: Female"
    "M"   "M: Male"
   /GOVSUP
    "3"   "3: No"
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
   /MGRNAT
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /MGROTH
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /MGRSOC
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
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
   /NEWBUS
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
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
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No (Left box blank)"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes (Marked box)"
   /NWLAY
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No (Left box blank)"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes (Marked box)"
   /NWNOND
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No (Left box blank)"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes (Marked box)"
   /NWOCNA
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No (Left box blank)"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes (Marked box)"
   /NWOTP
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No (Left box blank)"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes (Marked ''Illness', 'Retired' or 'Other' box)"
   /NWSTU
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No (Left box blank)"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes (Marked box)"
   /OCEDRLP
    "1"   "1: Closely related"
    "2"   "2: Somewhat related"
    "3"   "3: Not related"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
   /PAPERSP
    0                "0: Zero"
    1                "1: 1"
    2                "2: 2"
    3                "3: 3"
    4                "4: 4"
    5                "5: 5"
    6                "6: 6 or more"
    97               "97: Survey Exclusion/Confidentiality Suppression"
    98               "98: Logical Skip"
    99               "99: Missing"
   /PRMBRPB
    0                "0: No memberships"
    1                "1: 1 membership"
    2                "2: 2 memberships"
    3                "3: 3 memberships"
    4                "4: 4 memberships"
    5                "5: 5 memberships"
    6                "6: 6 or more memberships"
    97               "97: Survey Exclusion/Confidentiality Suppression"
    98               "98: Logical Skip"
    99               "99: Missing"
   /PROMTGI
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /PTFAM
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No (Left box blank)"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes (Marked box)"
   /PTNOND
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No (Left box blank)"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes (Marked box)"
   /PTOCNA
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No (Left box blank)"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes (Marked box)"
   /PTOTP
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No (Left box blank)"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes (Marked ''Student', 'Layoff', 'Illness', 'Retired' or 'Other' box)"
   /PTWTFT
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
   /WKSWKP
    "1"   "1: 1-10 weeks"
    "2"   "2: 11-20 weeks"
    "3"   "3: 21-39 weeks"
    "4"   "4: 40-52 weeks"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
   /WKTRNI
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
   /WTAPRF
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /WTMGT
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /WTOT
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /WTRADV
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /WTRCHG
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
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
   /WTRNEW
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
   /WTRSKL
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
   /WTRSN
    "1"   "1: To facilitate a change in occupation field"
    "2"   "2: To acquire further skills in my occupation field"
    "3"   "3: For licensure/certification"
    "4"   "4: To increase opportunities for promo/higher salary"
    "5"   "5: To learn skills needed for a recently acquired position"
    "6"   "6: Required or expected by employer"
    "7"   "7: other reason for training"
    "A"   "A: To facilitate a change in occupation field"
    "B"   "B: To acquire further skills in my occupation field"
    "C"   "C: For licensure/certification"
    "D"   "D: To increase opportunities for promo/higher salary"
    "E"   "E: To learn skills needed for a recently acquired position"
    "F"   "F: Required or expected by employer"
    "G"   "G: Other reason for training"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
   /WTTECH
    "3"   "3: No"
    "L"   "L: Logical Skip"
    "M"   "M: Missing"
    "N"   "N: No"
    "X"   "X: Survey Exclusion/Confidentiality Suppression"
    "Y"   "Y: Yes"
  /
.
EXECUTE .
SAVE OUTFILE = 'epsd03.SAV' /COMPRESSED .
