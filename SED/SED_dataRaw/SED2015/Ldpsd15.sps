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
FILE HANDLE DATA / NAME='EPSD15.DAT' LRECL= 00354  .
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
    ACDRG          00012    - 00012 (A)     
    ACFPT          00013    - 00013 (A)     
    ACINT          00014    - 00014 (A)     
    ACLIC          00015    - 00015 (A)     
    ACOTP          00016    - 00016 (A)     
    ACSIN          00017    - 00017 (A)     
    ACSKL          00018    - 00018 (A)     
    ACTCAP         00019    - 00019 (A)     
    ACTDED         00020    - 00020 (A)     
    ACTMGT         00021    - 00021 (A)     
    ACTRD          00022    - 00022 (A)     
    ACTRDT         00023    - 00023 (A)     
    ACTRES         00024    - 00024 (A)     
    ACTTCH         00025    - 00025 (A)     
    AGEGRP         00026    - 00028         
    BAAYR5P        00029    - 00034         
    BADGRUS        00035    - 00035 (A)     
    BAPBPR         00036    - 00036 (A)     
    BARGNP         00037    - 00038 (A)     
    BTHUS          00039    - 00040 (A)     
    CH1218IN       00041    - 00041 (A)     
    CH19IN         00042    - 00042 (A)     
    CH25IN         00043    - 00043 (A)     
    CH611IN        00044    - 00044 (A)     
    CH6IN          00045    - 00045 (A)     
    CHCHG          00046    - 00046 (A)     
    CHCON          00047    - 00047 (A)     
    CHFAM          00048    - 00048 (A)     
    CHLAY          00049    - 00049 (A)     
    CHLOC          00050    - 00050 (A)     
    CHLVIN         00051    - 00051 (A)     
    CHOT           00052    - 00052 (A)     
    CHPAY          00053    - 00053 (A)     
    CHRET          00054    - 00054 (A)     
    CHSCH          00055    - 00055 (A)     
    CHTOTPB        00056    - 00057 (A)     
    CHU2IN         00058    - 00058 (A)     
    CHUN12         00059    - 00059 (A)     
    COHORT         00060    - 00060 (A)     
    CTZFOR         00061    - 00061 (A)     
    CTZN           00062    - 00062 (A)     
    CTZN_DRF       00063    - 00063 (A)     
    CTZUS          00064    - 00064 (A)     
    CTZUSIN        00065    - 00065 (A)     
    D25YRP         00066    - 00071         
    D2DG           00072    - 00072 (A)     
    D2DGRUS        00073    - 00073 (A)     
    D2PBPR         00074    - 00074 (A)     
    D2RGNP         00075    - 00076 (A)     
    D35YRP         00077    - 00082         
    D3DG           00083    - 00083 (A)     
    D3DGRUS        00084    - 00084 (A)     
    D3PBPR         00085    - 00085 (A)     
    D3RGNP         00086    - 00087 (A)     
    DIFAGEGR       00088    - 00090         
    DIFBIR         00091    - 00091 (A)     
    DIFNO          00092    - 00092 (A)     
    EARNP          00093    - 00101         
    EDDAD          00102    - 00102 (A)     
    EDMOM          00103    - 00103 (A)     
    EDTP           00104    - 00104 (A)     
    EMED           00105    - 00105 (A)     
    EMRGP          00106    - 00107 (A)     
    EMSECDT        00108    - 00109 (A)     
    EMSECSM        00110    - 00110 (A)     
    EMSIZE         00111    - 00111 (A)     
    EMSMI          00112    - 00112 (A)     
    EMTPP          00113    - 00114 (A)     
    EMUS           00115    - 00116 (A)     
    FACADV         00117    - 00117 (A)     
    FACBEN         00118    - 00118 (A)     
    FACCHAL        00119    - 00119 (A)     
    FACIND         00120    - 00120 (A)     
    FACLOC         00121    - 00121 (A)     
    FACRANK        00122    - 00122 (A)     
    FACRESP        00123    - 00123 (A)     
    FACSAL         00124    - 00124 (A)     
    FACSEC         00125    - 00125 (A)     
    FACSOC         00126    - 00126 (A)     
    FNINUS         00127    - 00127 (A)     
    FSDED          00128    - 00128 (A)     
    FSDK           00129    - 00129 (A)     
    FSDOD          00130    - 00130 (A)     
    FSDOE          00131    - 00131 (A)     
    FSHHS          00132    - 00132 (A)     
    FSNASA         00133    - 00133 (A)     
    FSNIH          00134    - 00134 (A)     
    FSNSF          00135    - 00135 (A)     
    FSOT           00136    - 00136 (A)     
    FTPRET         00137    - 00137 (A)     
    GENDER         00138    - 00138 (A)     
    GOVSUP         00139    - 00139 (A)     
    HCAPIN         00140    - 00140 (A)     
    HDAY5P         00141    - 00146         
    HDDGRUS        00147    - 00147 (A)     
    HDPBPR         00148    - 00148 (A)     
    HDRGNP         00149    - 00150 (A)     
    HRSWKP         00151    - 00154         
    JOBINS         00155    - 00155 (A)     
    JOBPENS        00156    - 00156 (A)     
    JOBPROFT       00157    - 00157 (A)     
    JOBSATIS       00158    - 00158 (A)     
    JOBVAC         00159    - 00159 (A)     
    LFSTAT         00160    - 00160 (A)     
    LOOKWK         00161    - 00161 (A)     
    MARIND         00162    - 00162 (A)     
    MARSTA         00163    - 00163 (A)     
    MGRNAT         00164    - 00164 (A)     
    MGROTH         00165    - 00165 (A)     
    MGRSOC         00166    - 00166 (A)     
    MINRTY         00167    - 00167 (A)     
    MR5YRP         00168    - 00173         
    MRADV          00174    - 00174 (A)     
    MRCAR          00175    - 00175 (A)     
    MRCHG          00176    - 00176 (A)     
    MRDG           00177    - 00177 (A)     
    MRDGRUS        00178    - 00178 (A)     
    MRINT          00179    - 00179 (A)     
    MRLIC          00180    - 00180 (A)     
    MROTP          00181    - 00181 (A)     
    MRPBPR         00182    - 00182 (A)     
    MRRGNP         00183    - 00184 (A)     
    MRSKL          00185    - 00185 (A)     
    N2OCMLST       00186    - 00186 (A)     
    N2OCPRMG       00187    - 00187 (A)     
    N2OCPRNG       00188    - 00189 (A)     
    NACEDMG        00190    - 00190 (A)     
    NBAMEMG        00191    - 00191 (A)     
    NBAMENGP       00192    - 00193 (A)     
    ND2MEMG        00194    - 00194 (A)     
    ND3MEMG        00195    - 00195 (A)     
    NDGMEMG        00196    - 00196 (A)     
    NDGMENGP       00197    - 00198 (A)     
    NEDTPP         00199    - 00200 (A)     
    NEWBUS         00201    - 00201 (A)     
    NMRMEMG        00202    - 00202 (A)     
    NMRMENGP       00203    - 00204 (A)     
    NRCHG          00205    - 00205 (A)     
    NRCON          00206    - 00206 (A)     
    NRFAM          00207    - 00207 (A)     
    NRLOC          00208    - 00208 (A)     
    NROCNA         00209    - 00209 (A)     
    NROT           00210    - 00210 (A)     
    NRPAY          00211    - 00211 (A)     
    NRREA          00212    - 00212 (A)     
    NRSEC          00213    - 00213 (A)     
    NSDRMEM        00214    - 00214 (A)     
    NSDRMEN        00215    - 00216 (A)     
    NWFAM          00217    - 00217 (A)     
    NWLAY          00218    - 00218 (A)     
    NWNOND         00219    - 00219 (A)     
    NWOCNA         00220    - 00220 (A)     
    NWOTP          00221    - 00221 (A)     
    NWSTU          00222    - 00222 (A)     
    OCEDRLP        00223    - 00223 (A)     
    PDEMPL         00224    - 00224 (A)     
    PDEXPECT       00225    - 00225 (A)     
    PDIX           00226    - 00226 (A)     
    PDOTHER        00227    - 00227 (A)     
    PDPERPL        00228    - 00228 (A)     
    PDPRI          00229    - 00229 (A)     
    PDSEC          00230    - 00230 (A)     
    PDTRAIN        00231    - 00231 (A)     
    PDTROUT        00232    - 00232 (A)     
    PDUSFOR        00233    - 00234 (A)     
    PJFAM          00235    - 00235 (A)     
    PJHAJ          00236    - 00236 (A)     
    PJNOND         00237    - 00237 (A)     
    PJOCNA         00238    - 00238 (A)     
    PJOT           00239    - 00239 (A)     
    PJRET          00240    - 00240 (A)     
    PJSTU          00241    - 00241 (A)     
    PJWTFT         00242    - 00242 (A)     
    PRMBRPB        00243    - 00246         
    PROMTGI        00247    - 00247 (A)     
    PUBPRI         00248    - 00248 (A)     
    RACETHMP       00249    - 00249 (A)     
    REFID          00250    - 00258 (A)     
    REFYR          00259    - 00263         
    SALARYP        00264    - 00272         
    SATADV         00273    - 00273 (A)     
    SATBEN         00274    - 00274 (A)     
    SATCHAL        00275    - 00275 (A)     
    SATIND         00276    - 00276 (A)     
    SATLOC         00277    - 00277 (A)     
    SATRESP        00278    - 00278 (A)     
    SATSAL         00279    - 00279 (A)     
    SATSEC         00280    - 00280 (A)     
    SATSOC         00281    - 00281 (A)     
    SDR5YRP        00282    - 00287         
    SDRPBPR        00288    - 00288 (A)     
    SDRRGNP        00289    - 00290 (A)     
    SEH            00291    - 00292 (A)     
    SPNAT          00293    - 00293 (A)     
    SPOT           00294    - 00294 (A)     
    SPOWK          00295    - 00295 (A)     
    SPSOC          00296    - 00296 (A)     
    SRVMODE        00297    - 00297 (A)     
    SUPWK          00298    - 00298 (A)     
    SURID          00299    - 00300         
    TCDGCMP        00301    - 00301 (A)     
    TENI           00302    - 00302 (A)     
    TENSTA         00303    - 00303 (A)     
    WAACC          00304    - 00304 (A)     
    WAAPRSH        00305    - 00305 (A)     
    WABRSH         00306    - 00306 (A)     
    WACOM          00307    - 00307 (A)     
    WADEV          00308    - 00308 (A)     
    WADSN          00309    - 00309 (A)     
    WAEMRL         00310    - 00310 (A)     
    WAMGMT         00311    - 00311 (A)     
    WAOT           00312    - 00312 (A)     
    WAPRI          00313    - 00314 (A)     
    WAPROD         00315    - 00315 (A)     
    WAPRSM         00316    - 00316 (A)     
    WAQM           00317    - 00317 (A)     
    WASALE         00318    - 00318 (A)     
    WASCSM         00319    - 00319 (A)     
    WASEC          00320    - 00321 (A)     
    WASVC          00322    - 00322 (A)     
    WATEA          00323    - 00323 (A)     
    WKSLYR         00324    - 00327         
    WKSWK          00328    - 00331         
    WKSYR          00332    - 00332 (A)     
    WKTRNI         00333    - 00333 (A)     
    WRKG           00334    - 00334 (A)     
    WRKGP          00335    - 00335 (A)     
    WTRCHOC        00336    - 00336 (A)     
    WTREASN        00337    - 00337 (A)     
    WTREM          00338    - 00338 (A)     
    WTRLIC         00339    - 00339 (A)     
    WTROPPS        00340    - 00340 (A)     
    WTROT          00341    - 00341 (A)     
    WTRPERS        00342    - 00342 (A)     
    WTRSKL         00343    - 00343 (A)     
    WTSURVY        00344    - 00354         
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
    ACDRG          "N_ED_REF_WK_WORK_DEGREE"
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
    AGEGRP         "U_DEM_AGE_GROUP_5_YR_GROUPING_PUB"
    BAAYR5P        "J_ED_BA_DEGREE_AWARD_YR_5_YR_GROUPING_PUB"
    BADGRUS        "J_ED_BA_SCHOOL_REGION_US_NONUS"
    BAPBPR         "J_ED_BA_SCHOOL_PUBLIC_OR_PRIVTE"
    BARGNP         "J_ED_BA_SCHOOL_REGION_PUB"
    BTHUS          "U_DEM_BIRTH_PLACE_REGION_US_NONUS"
    CH1218IN       "W_DEM_CHILDREN_IND_12_18"
    CH19IN         "W_DEM_CHILDREN_IND_19"
    CH25IN         "W_DEM_CHILDREN_IND_2_5"
    CH611IN        "W_DEM_CHILDREN_IND_6_11"
    CH6IN          "W_DEM_CHILDREN_IND_UNDER_6"
    CHCHG          "D_JOB_CHG_REAS_CAREER_CHG"
    CHCON          "D_JOB_CHG_REAS_WRKNG_CONDS"
    CHFAM          "D_JOB_CHG_REAS_FAMILY"
    CHLAY          "D_JOB_CHG_REAS_LAID_OFF"
    CHLOC          "D_JOB_CHG_REAS_LOCATN"
    CHLVIN         "W_DEM_CHILDREN_IN_HOUSEHOLD"
    CHOT           "D_JOB_CHG_REAS_OTHR"
    CHPAY          "D_JOB_CHG_REAS_PAY_OR_PROMOT"
    CHRET          "D_JOB_CHG_REAS_RETIRED"
    CHSCH          "D_JOB_CHG_REAS_SCHOOL_RELTD"
    CHTOTPB        "W_DEM_CHILDREN_TOTAL_PUB"
    CHU2IN         "W_DEM_CHILDREN_IND_UNDER_2"
    CHUN12         "W_DEM_CHILDREN_UNDER_12_IND"
    COHORT         "Z_SURVEY_COHORT"
    CTZFOR         "V_DEM_NON_US_CITIZEN"
    CTZN           "V_DEM_CITIZENSHIP_STATUS"
    CTZN_DRF       "V_DEM_CITIZENSHIP_STATUS_DRF"
    CTZUS          "V_DEM_US_CITIZENSHIP_STATUS"
    CTZUSIN        "V_DEM_CITIZENSHIP_US_CITIZEN"
    D25YRP         "P_ED_2ND_HD_DEGREE_AWARD_YR_5_YR_GROUPING_PUB"
    D2DG           "P_ED_2ND_HD_DEGREE_TYPE"
    D2DGRUS        "P_ED_2ND_HD_SCHOOL_REGION_US_NONUS"
    D2PBPR         "P_ED_2ND_HD_SCHOOL_PUB_OR_PRIV"
    D2RGNP         "P_ED_2ND_HD_SCHOOL_REGION_PUB"
    D35YRP         "Q_ED_3RD_HD_DEGREE_AWARD_YR_5_YR_GROUPING_PUB"
    D3DG           "Q_ED_3RD_HD_DEGREE_TYPE"
    D3DGRUS        "Q_ED_3RD_HD_SCHOOL_REGION_US_NONUS"
    D3PBPR         "Q_ED_3RD_HD_SCHOOL_PUB_OR_PRIV"
    D3RGNP         "Q_ED_3RD_HD_SCHOOL_REGION_PUB"
    DIFAGEGR       "X_DEM_DISABLE_EARLIEST_AGE_5_YR_GROUPING"
    DIFBIR         "X_DEM_DISABLE_SINCE_BIRTH"
    DIFNO          "X_DEM_DISABLE_NONE_IND"
    EARNP          "H_JOB_TOTAL_INCOME_PUB"
    EDDAD          "W_DEM_PARENT_FATHERS_ED_LEVEL"
    EDMOM          "W_DEM_PARENT_MOTHERS_ED_LEVEL"
    EDTP           "E_JOB_EMPLR_EDUC_INST_TYPE"
    EMED           "E_JOB_EMPLR_EDUC_INST_IND"
    EMRGP          "E_JOB_EMPLR_LOC_REGION_PUB"
    EMSECDT        "E_JOB_EMPLR_SECTOR_CD"
    EMSECSM        "E_JOB_EMPLR_SECTOR_CD_SUMRY"
    EMSIZE         "E_JOB_EMPLR_SIZE"
    EMSMI          "D_JOB_SAME_EMPLOYER_JOB"
    EMTPP          "E_JOB_EMPLR_TYPE_PUB"
    EMUS           "E_JOB_EMPLR_LOC_REGION_US_NONUS"
    FACADV         "F_JOB_IMPORTANCE_ADVANCEMENT"
    FACBEN         "F_JOB_IMPORTANCE_BENEFITS"
    FACCHAL        "F_JOB_IMPORTANCE_CHALLENGE"
    FACIND         "F_JOB_IMPORTANCE_INDEPENDENCE"
    FACLOC         "F_JOB_IMPORTANCE_LOCATION"
    FACRANK        "E_JOB_EMPLR_EDUC_INST_FACULTY_RANK"
    FACRESP        "F_JOB_IMPORTANCE_RESPONSIBILITY"
    FACSAL         "F_JOB_IMPORTANCE_SALARY"
    FACSEC         "F_JOB_IMPORTANCE_SECURITY"
    FACSOC         "F_JOB_IMPORTANCE_SOCIETY"
    FNINUS         "V_LIVE_WORK_IN_US_ON_REF_DATE"
    FSDED          "I_JOB_GOV_AGCY_SUPP_EDUC"
    FSDK           "I_JOB_GOV_AGCY_SUPPORT_DONT_KNOW"
    FSDOD          "I_JOB_GOV_AGCY_SUPP_DEFENSE"
    FSDOE          "I_JOB_GOV_AGCY_SUPP_ENERGY"
    FSHHS          "I_JOB_GOV_AGCY_SUPP_HHS"
    FSNASA         "I_JOB_GOV_AGCY_SUPP_NASA"
    FSNIH          "I_JOB_GOV_AGCY_SUPP_NIH"
    FSNSF          "I_JOB_GOV_AGCY_SUPP_NSF"
    FSOT           "I_JOB_GOV_AGCY_SUPP_OTHR"
    FTPRET         "B_JOB_RETIRED_PREVLY_IND"
    GENDER         "U_DEM_GENDER"
    GOVSUP         "I_JOB_GOV_AGCY_SUPPORT_IND"
    HCAPIN         "X_DEM_DISABLE_IND"
    HDAY5P         "O_ED_HD_DEGREE_AWARD_YR_5_YR_GROUPING_PUB"
    HDDGRUS        "O_ED_HD_SCHOOL_REGION_US_NONUS"
    HDPBPR         "O_ED_HD_SCHOOL_PUB_OR_PRIV"
    HDRGNP         "O_ED_HD_SCHOOL_REGION_PUB"
    HRSWKP         "B_PRINCIPAL_JOB_WKLY_HRS_PUB"
    JOBINS         "E_JOB_EMPLR_BENEFITS_HEALTHINS"
    JOBPENS        "E_JOB_EMPLR_BENEFITS_PENSION"
    JOBPROFT       "E_JOB_EMPLR_BENEFITS_PROFIT_SHARING"
    JOBSATIS       "F_JOB_SATISFACTION_OVERALL"
    JOBVAC         "E_JOB_EMPLR_BENEFITS_VACATION"
    LFSTAT         "A_JOB_STATUS_LABOR_FORCE_STAT"
    LOOKWK         "A_JOB_STATUS_LOOKING_FOR_WRK_IND"
    MARIND         "W_DEM_MARITAL_STAT_MARRIED"
    MARSTA         "W_DEM_MARITAL_STATUS"
    MGRNAT         "F_JOB_MGR_TECH_EXPERTSE_PHYS_SCI"
    MGROTH         "F_JOB_MGR_TECH_EXPERTSE_OTHER"
    MGRSOC         "F_JOB_MGR_TECH_EXPERTSE_SOCIAL_SCI"
    MINRTY         "U_DEM_RACE_MINORITY_IND"
    MR5YRP         "M_ED_MR_DEGREE_AWARD_YR_5_YR_GROUPING_PUB"
    MRADV          "M_ED_MR_DEGREE_REAS_ADVANCEMT"
    MRCAR          "M_ED_MR_DEGREE_REAS_BEGIN_CAREER"
    MRCHG          "M_ED_MR_DEGREE_REAS_CHG_FLD"
    MRDG           "M_ED_MR_DEGREE_TYPE"
    MRDGRUS        "M_ED_MR_SCHOOL_REGION_US_NONUS"
    MRINT          "M_ED_MR_DEGREE_REAS_PERSONL"
    MRLIC          "M_ED_MR_DEGREE_REAS_LICENSING"
    MROTP          "M_ED_MR_DEGREE_REAS_OTHR_PUB"
    MRPBPR         "M_ED_MR_SCHOOL_PUB_OR_PRIV"
    MRRGNP         "M_ED_MR_SCHOOL_REGION_PUB"
    MRSKL          "M_ED_MR_DEGREE_REAS_ACQ_SKILL"
    N2OCMLST       "C_JOB_LAST_OCC_GRP_MAJOR_NEW2"
    N2OCPRMG       "B_JOB_OCC_GRP_MAJOR_NEW2"
    N2OCPRNG       "B_JOB_OCC_GRP_MINOR_NEW2"
    NACEDMG        "N_ED_REF_WK_ENROLL_ED_CAT_MAJOR_NEW"
    NBAMEMG        "J_ED_BA_MAJOR_ED_GROUP_MAJOR_NEW"
    NBAMENGP       "J_ED_BA_MAJOR_ED_GROUP_MINOR_NEW_PUB"
    ND2MEMG        "P_ED_2ND_HD_MAJOR_ED_GRP_MAJOR_NEW"
    ND3MEMG        "Q_ED_3RD_HD_MAJOR_ED_GRP_MAJOR_NEW"
    NDGMEMG        "O_ED_HD_MAJOR_ED_GRP_MAJOR_NEW"
    NDGMENGP       "O_ED_HD_MAJOR_ED_GRP_MINOR_NEW_PUB"
    NEDTPP         "E_JOB_EMPLR_NON_EDUC_INST_TYPE_PUB"
    NEWBUS         "E_JOB_EMPLR_NEW_BUSINESS"
    NMRMEMG        "M_ED_MR_MAJOR_ED_GRP_MAJOR_NEW"
    NMRMENGP       "M_ED_MR_MAJOR_ED_GRP_MINOR_NEW_PUB"
    NRCHG          "B_JOB_OUTSIDE_FLD_REAS_CAREER_CHG"
    NRCON          "B_JOB_OUTSIDE_FLD_REAS_WRKNG_CONDS"
    NRFAM          "B_JOB_OUTSIDE_FLD_REAS_FAMILY"
    NRLOC          "B_JOB_OUTSIDE_FLD_REAS_LOC"
    NROCNA         "B_JOB_OUTSIDE_FLD_REAS_JOB_NOT_AVAIL"
    NROT           "B_JOB_OUTSIDE_FLD_REAS_OTHR"
    NRPAY          "B_JOB_OUTSIDE_FLD_REAS_PAY_OR_PROMOT"
    NRREA          "B_JOB_OUTSIDE_FLD_REASON_PRIMRY"
    NRSEC          "B_JOB_OUTSIDE_FLD_REASON_SECOND"
    NSDRMEM        "T_ED_USDOC_MAJOR_ED_GRP_MAJOR_NEW"
    NSDRMEN        "T_ED_USDOC_MAJOR_ED_GRP_MINOR_NEW"
    NWFAM          "A_JOB_NOT_WRKNG_REAS_FAMILY"
    NWLAY          "A_JOB_NOT_WRKNG_REAS_LAYOFF"
    NWNOND         "A_JOB_NOT_WRKNG_REAS_NO_NEED"
    NWOCNA         "A_JOB_NOT_WRKNG_REAS_JOB_NOT_AVAIL"
    NWOTP          "A_JOB_NOT_WRKNG_REAS_OTHR_PUB"
    NWSTU          "A_JOB_NOT_WRKNG_REAS_STUDENT"
    OCEDRLP        "B_JOB_RELTD_TO_DEGREE"
    PDEMPL         "B_JOB_POSTDOC_REAS_NOEMPLOYMENT"
    PDEXPECT       "B_JOB_POSTDOC_REAS_EXPECTED"
    PDIX           "B_JOB_POSTDOC_APPT_IND"
    PDOTHER        "B_JOB_POSTDOC_REAS_OTHER"
    PDPERPL        "B_JOB_POSTDOC_REAS_PEOPLE"
    PDPRI          "B_JOB_POSTDOC_REASON_PRIMARY"
    PDSEC          "B_JOB_POSTDOC_REASON_SECONDARY"
    PDTRAIN        "B_JOB_POSTDOC_REAS_TRAINING"
    PDTROUT        "B_JOB_POSTDOC_REAS_OUTSIDE"
    PDUSFOR        "B_POSTGRADUATION_LOCATION_DRF"
    PJFAM          "F_JOB_PART_TIME_REAS_FAMILY"
    PJHAJ          "F_JOB_PART_TIME_REAS_HOLD_ANOTHER_JOB"
    PJNOND         "F_JOB_PART_TIME_REAS_NO_NEED"
    PJOCNA         "F_JOB_PART_TIME_REAS_FT_JOB_NA"
    PJOT           "F_JOB_PART_TIME_REAS_OTHR"
    PJRET          "F_JOB_PART_TIME_REAS_RETIRED"
    PJSTU          "F_JOB_PART_TIME_REAS_STUDENT"
    PJWTFT         "F_JOB_PART_TIME_WANT_FULL_TIME"
    PRMBRPB        "D_JOB_PROF_ASSOC_MEMBRSHPS_NBR_PUB"
    PROMTGI        "D_JOB_PROF_ASSOC_ATTEND_MTNGS_IND"
    PUBPRI         "E_JOB_EMPLR_EDUC_INST_PUB_OR_PRIV"
    RACETHMP       "U_DEM_MULTIPLE_RACE_ETHNICITY_CAT_PUB"
    REFID          "Z_REFERENCE_ID_NUMBER"
    REFYR          "Z_SURVEY_YEAR"
    SALARYP        "H_JOB_SALARY_ANN_PUB"
    SATADV         "F_JOB_SATISFACTION_ADVANCEMENT"
    SATBEN         "F_JOB_SATISFACTION_BENEFITS"
    SATCHAL        "F_JOB_SATISFACTION_CHALLENGE"
    SATIND         "F_JOB_SATISFACTION_INDEPENDENCE"
    SATLOC         "F_JOB_SATISFACTION_LOCATION"
    SATRESP        "F_JOB_SATISFACTION_RESPONSIBILITY"
    SATSAL         "F_JOB_SATISFACTION_SALARY"
    SATSEC         "F_JOB_SATISFACTION_SECURITY"
    SATSOC         "F_JOB_SATISFACTION_SOCIETY"
    SDR5YRP        "T_ED_USDOC_DEGREE_AWARD_YR_5_YR_GROUPING_PUB"
    SDRPBPR        "T_ED_USDOC_SCHOOL_PUB_OR_PRIV"
    SDRRGNP        "T_ED_USDOC_SCHOOL_REGION_PUB"
    SEH            "T_ED_USDOC_SEH"
    SPNAT          "W_DEM_SPOUSE_WORK_EXPERT_PHYS_SCI"
    SPOT           "W_DEM_SPOUSE_WORK_EXPERT_OTHER"
    SPOWK          "W_DEM_SPOUSE_WORKING_IND"
    SPSOC          "W_DEM_SPOUSE_WORK_EXPERT_SOCIAL_SCI"
    SRVMODE        "Z_SURVEY_MODE"
    SUPWK          "F_JOB_SUPERVISE_WRK_IND"
    SURID          "Z_SURVEY_IDENTIFIER"
    TCDGCMP        "N_ED_WORK_DEGREE_COMPLETED"
    TENI           "E_JOB_EMPLR_EDUC_INST_TENURE_STAT_IND"
    TENSTA         "E_JOB_EMPLR_EDUC_INST_TENURE_STAT"
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
    WKSLYR         "B_PRINCIPAL_JOB_LESS_THAN_52WKS"
    WKSWK          "B_PRINCIPAL_JOB_WEEKS"
    WKSYR          "B_PRINCIPAL_JOB_52_WEEKS"
    WKTRNI         "G_JOB_TRAINING_WRK_RELTD_IND"
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
    "L"        "L: Logical skip"                                                                                   
    "N"        "N: No (Left box blank)"                                                                            
    "Y"        "Y: Yes (Marked box)"                                                                               
   /ACADADMN  
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No (Left box blank)"                                                                            
    "Y"        "Y: Yes (Marked ''Dean'' or ''President'' box)"                                                     
   /ACADNA    
    "L"        "L: Logical skip"                                                                                   
    "N"        "N: No (Left box blank)"                                                                            
    "Y"        "Y: Yes (Marked box)"                                                                               
   /ACADOTHP  
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No (Left box blank)"                                                                            
    "Y"        "Y: Yes (Marked ''Research Asst'',''Teaching Asst'' or ''Other'' box)"                              
   /ACADPDOC  
    "L"        "L: Logical skip"                                                                                   
    "N"        "N: No (Left box blank)"                                                                            
    "Y"        "Y: Yes (Marked box)"                                                                               
   /ACADRCHF  
    "L"        "L: Logical skip"                                                                                   
    "N"        "N: No (Left box blank)"                                                                            
    "Y"        "Y: Yes (Marked box)"                                                                               
   /ACADTCHF  
    "L"        "L: Logical skip"                                                                                   
    "N"        "N: No (Left box blank)"                                                                            
    "Y"        "Y: Yes (Marked box)"                                                                               
   /ACADV     
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /ACCAR     
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /ACCCEP    
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /ACCHG     
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /ACDRG     
    "0"        "0: No specific degree"                                                                             
    "1"        "1: Bachelor''s"                                                                                    
    "2"        "2: Master''s"                                                                                      
    "3"        "3: Doctorate"                                                                                      
    "4"        "4: Professional"                                                                                   
    "5"        "5: Other"                                                                                          
    "L"        "L: Logical Skip"                                                                                   
   /ACFPT     
    "1"        "1: Full-time student in a degree program"                                                          
    "2"        "2: Part-time student in a degree program"                                                          
    "3"        "3: Not enrolled in a degree program, but taking courses"                                           
    "L"        "L: Logical Skip"                                                                                   
   /ACINT     
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /ACLIC     
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /ACOTP     
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No (Left box blank)"                                                                            
    "Y"        "Y: Yes (Marked ''Graduate School'', ''Employer-required'' or ''Other'' box)"                       
   /ACSIN     
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /ACSKL     
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /ACTCAP    
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /ACTDED    
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /ACTMGT    
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /ACTRD     
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /ACTRDT    
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /ACTRES    
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /ACTTCH    
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /AGEGRP    
    25                    "25: Ages 29 or younger"                                                                            
    30                    "30: Ages 30-34"                                                                                    
    35                    "35: Ages 35-39"                                                                                    
    40                    "40: Ages 40-44"                                                                                    
    45                    "45: Ages 45-49"                                                                                    
    50                    "50: Ages 50-54"                                                                                    
    55                    "55: Ages 55-59"                                                                                    
    60                    "60: Ages 60-64"                                                                                    
    65                    "65: Ages 65-69"                                                                                    
    70                    "70: Ages 70-75"                                                                                    
   /BAAYR5P   
    1960                  "1960: 1950 to 1964"                                                                                
    1965                  "1965: 1965 to 1969"                                                                                
    1970                  "1970: 1970 to 1974"                                                                                
    1975                  "1975: 1975 to 1979"                                                                                
    1980                  "1980: 1980 to 1984"                                                                                
    1985                  "1985: 1985 to 1989"                                                                                
    1990                  "1990: 1990 to 1994"                                                                                
    1995                  "1995: 1995 to 1999"                                                                                
    2000                  "2000: 2000 to 2004"                                                                                
    2005                  "2005: 2005 to 2014"                                                                                
    9998                  "9998: Logical Skip"                                                                                
   /BADGRUS   
    "L"        "L: Logical Skip"                                                                                   
    "M"        "M: Missing"                                                                                        
    "N"        "N: Non-U.S."                                                                                       
    "Y"        "Y: U.S."                                                                                           
   /BAPBPR    
    "1"        "1: Publicly controlled"                                                                            
    "2"        "2: Privately controlled"                                                                           
    "L"        "L: Logical Skip"                                                                                   
    "M"        "M: Public/Private status information is not available"                                             
   /BARGNP    
    "01"       "01: West"                                                                                          
    "02"       "02: Midwest"                                                                                       
    "03"       "03: Northeast"                                                                                     
    "04"       "04: South"                                                                                         
    "05"       "05: Abroad, not specified"                                                                         
    "L"        "L: Logical Skip"                                                                                   
    "M"        "M: Missing"                                                                                        
   /BTHUS     
    "N"        "N: Non-U.S."                                                                                       
    "Y"        "Y: U.S."                                                                                           
   /CH1218IN  
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /CH19IN    
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /CH25IN    
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /CH611IN   
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /CH6IN     
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /CHCHG     
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /CHCON     
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /CHFAM     
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /CHLAY     
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /CHLOC     
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /CHLVIN    
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /CHOT      
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /CHPAY     
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /CHRET     
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /CHSCH     
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /CHTOTPB   
    "1"        "1: 1 child"                                                                                        
    "2"        "2: 2 or more children"                                                                             
    "98"       "98: Logical skip"                                                                                  
   /CHU2IN    
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /CHUN12    
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /COHORT    
    "2"        "2: SDR"                                                                                            
   /CTZFOR    
    "1"        "1: With a permanent resident Visa"                                                                 
    "2"        "2: With a temporary resident Visa"                                                                 
    "3"        "3: With No US Visa"                                                                                
    "L"        "L: Logical Skip"                                                                                   
   /CTZN      
    "1"        "1: U.S. citizen, Native"                                                                           
    "2"        "2: U.S. citizen, Naturalized"                                                                      
    "3"        "3: Non-U.S. citizen, Permanent resident"                                                           
    "4"        "4: Non-U.S. citizen, Temporary resident"                                                           
    "5"        "5: Non-U.S. citizen, living outside the U.S."                                                      
   /CTZN_DRF  
    "1"        "1: U.S. citizen, Native"                                                                           
    "2"        "2: U.S. citizen, Naturalized"                                                                      
    "3"        "3: Non-U.S. citizen, Permanent resident"                                                           
    "4"        "4: Non-U.S. citizen, Temporary resident"                                                           
    "M"        "M: Missing"                                                                                        
   /CTZUS     
    "1"        "1: Born in US or US territories"                                                                   
    "2"        "2: Born abroad of American parents"                                                                
    "3"        "3: By naturalization"                                                                              
    "L"        "L: Logical Skip"                                                                                   
   /CTZUSIN   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /D25YRP    
    1960                  "1960: 1955 to 1964"                                                                                
    1965                  "1965: 1965 to 1969"                                                                                
    1970                  "1970: 1970 to 1974"                                                                                
    1975                  "1975: 1975 to 1979"                                                                                
    1980                  "1980: 1980 to 1984"                                                                                
    1985                  "1985: 1985 to 1989"                                                                                
    1990                  "1990: 1990 to 1994"                                                                                
    1995                  "1995: 1995 to 1999"                                                                                
    2000                  "2000: 2000 to 2004"                                                                                
    2005                  "2005: 2005 to 2009"                                                                                
    2010                  "2010: 2010 or later"                                                                               
    9998                  "9998: Logical Skip"                                                                                
   /D2DG      
    "1"        "1: Bachelor''s"                                                                                    
    "2"        "2: Master''s"                                                                                      
    "3"        "3: Doctorate"                                                                                      
    "4"        "4: Professional"                                                                                   
    "5"        "5: Other"                                                                                          
    "L"        "L: Logical Skip"                                                                                   
   /D2DGRUS   
    "L"        "L: Logical Skip"                                                                                   
    "M"        "M: Missing"                                                                                        
    "N"        "N: Non-U.S."                                                                                       
    "Y"        "Y: U.S."                                                                                           
   /D2PBPR    
    "1"        "1: Publicly controlled"                                                                            
    "2"        "2: Privately controlled"                                                                           
    "L"        "L: Logical Skip"                                                                                   
    "M"        "M: Public/Private status information is not available"                                             
   /D2RGNP    
    "01"       "01: West"                                                                                          
    "02"       "02: Midwest"                                                                                       
    "03"       "03: Northeast"                                                                                     
    "04"       "04: South"                                                                                         
    "05"       "05: Abroad, not specified"                                                                         
    "L"        "L: Logical Skip"                                                                                   
    "M"        "M: Missing"                                                                                        
   /D35YRP    
    1960                  "1960: 1950 to 1964"                                                                                
    1965                  "1965: 1965 to 1969"                                                                                
    1970                  "1970: 1970 to 1974"                                                                                
    1975                  "1975: 1975 to 1979"                                                                                
    1980                  "1980: 1980 to 1984"                                                                                
    1985                  "1985: 1985 to 1989"                                                                                
    1990                  "1990: 1990 to 1994"                                                                                
    1995                  "1995: 1995 to 1999"                                                                                
    2000                  "2000: 2000 to 2004"                                                                                
    2005                  "2005: 2005 to 2009"                                                                                
    2010                  "2010: 2010 or later"                                                                               
    9998                  "9998: Logical Skip"                                                                                
   /D3DG      
    "1"        "1: Bachelor''s"                                                                                    
    "2"        "2: Master''s"                                                                                      
    "5"        "5: Other"                                                                                          
    "L"        "L: Logical Skip"                                                                                   
    "M"        "M: Missing"                                                                                        
   /D3DGRUS   
    "L"        "L: Logical Skip"                                                                                   
    "M"        "M: Missing"                                                                                        
    "N"        "N: Non-U.S."                                                                                       
    "Y"        "Y: U.S."                                                                                           
   /D3PBPR    
    "1"        "1: Publicly controlled"                                                                            
    "2"        "2: Privately controlled"                                                                           
    "L"        "L: Logical Skip"                                                                                   
    "M"        "M: Public/Private status information is not available"                                             
   /D3RGNP    
    "01"       "01: West"                                                                                          
    "02"       "02: Midwest"                                                                                       
    "03"       "03: Northeast"                                                                                     
    "04"       "04: South"                                                                                         
    "05"       "05: Abroad, not specified"                                                                         
    "L"        "L: Logical Skip"                                                                                   
    "M"        "M: Missing"                                                                                        
   /DIFAGEGR  
    20                    "20: Ages 24 or younger"                                                                            
    25                    "25: Ages 25-29"                                                                                    
    30                    "30: Ages 30-34"                                                                                    
    35                    "35: Ages 35-39"                                                                                    
    40                    "40: Ages 40-44"                                                                                    
    45                    "45: Ages 45-49"                                                                                    
    50                    "50: Ages 50-54"                                                                                    
    55                    "55: Ages 55-59"                                                                                    
    60                    "60: Ages 60-64"                                                                                    
    65                    "65: Ages 65-69"                                                                                    
    70                    "70: Ages 70-75"                                                                                    
    98                    "98: Logical Skip"                                                                                  
   /DIFBIR    
    "L"        "L: Logical skip"                                                                                   
    "N"        "N: Left box blank"                                                                                 
    "Y"        "Y: Experienced difficulties since birth (Marked box)"                                              
   /DIFNO     
    "N"        "N: Left box blank"                                                                                 
    "Y"        "Y: No difficulties identified (Marked box)"                                                        
   /EDDAD     
    "1"        "1: Less than high school completed"                                                                
    "2"        "2: High school diploma or equivalent"                                                              
    "3"        "3: Some college, vocational, or trade school (including 2-year degrees)"                           
    "4"        "4: Bachelors degree (e.g. BS, BA, AB)"                                                             
    "5"        "5: Masters degree (e.g. MS, MA, MBA)"                                                              
    "6"        "6: Professional degree (e.g. JD, LLB, MD, DDS, etc.)"                                              
    "7"        "7: Doctorate (e.g. PhD, DSc, EdD, etc.)"                                                           
    "8"        "8: Not applicable"                                                                                 
    "M"        "M: Missing"                                                                                        
   /EDMOM     
    "1"        "1: Less than high school completed"                                                                
    "2"        "2: High school diploma or equivalent"                                                              
    "3"        "3: Some college, vocational, or trade school (including 2-year degrees)"                           
    "4"        "4: Bachelors degree (e.g. BS, BA, AB)"                                                             
    "5"        "5: Masters degree (e.g. MS, MA, MBA)"                                                              
    "6"        "6: Professional degree (e.g. JD, LLB, MD, DDS, etc.)"                                              
    "7"        "7: Doctorate (e.g. PhD, DSc, EdD, etc.)"                                                           
    "8"        "8: Not applicable"                                                                                 
    "M"        "M: Missing"                                                                                        
   /EDTP      
    "1"        "1: Preschool, elementary, middle, or secondary school or system"                                   
    "2"        "2: 2-year college, community college or technical institute"                                       
    "3"        "3: 4-year college or university, other than a medical school"                                      
    "4"        "4: Medical school"                                                                                 
    "5"        "5: University-affiliated research institute"                                                       
    "6"        "6: Other"                                                                                          
    "L"        "L: Logical Skip"                                                                                   
   /EMED      
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /EMRGP     
    "01"       "01: West"                                                                                          
    "02"       "02: Midwest"                                                                                       
    "03"       "03: Northeast"                                                                                     
    "04"       "04: South"                                                                                         
    "05"       "05: Abroad, not specified"                                                                         
    "L"        "L: Logical Skip"                                                                                   
   /EMSECDT   
    "11"       "11: 4-yr coll/univ; med schl; univ. res. inst."                                                    
    "12"       "12: 2-yr coll/pre-college institutions"                                                            
    "21"       "21: Bus/Ind, for-profit"                                                                           
    "22"       "22: Bus/Ind, self-employed, not-incorporated"                                                      
    "23"       "23: Bus/Ind, non-profit"                                                                           
    "31"       "31: Federal government"                                                                            
    "32"       "32: State/Local government"                                                                        
    "33"       "33: Non-US government"                                                                             
    "L"        "L: Logical Skip"                                                                                   
   /EMSECSM   
    "1"        "1: Educational Institution"                                                                        
    "2"        "2: Government"                                                                                     
    "3"        "3: Business/Industry"                                                                              
    "L"        "L: Logical Skip"                                                                                   
   /EMSIZE    
    "1"        "1: 10 or fewer employees"                                                                          
    "2"        "2: 11-24 employees"                                                                                
    "3"        "3: 25-99 employees"                                                                                
    "4"        "4: 100-499 employees"                                                                              
    "5"        "5: 500-999 employees"                                                                              
    "6"        "6: 1000-4999 employees"                                                                            
    "7"        "7: 5000-24999 employees"                                                                           
    "8"        "8: 25000+ employees"                                                                               
    "L"        "L: Logical Skip"                                                                                   
   /EMSMI     
    "1"        "1: Same employer AND same job"                                                                     
    "2"        "2: Same employer BUT different job"                                                                
    "3"        "3: Different employer BUT same job"                                                                
    "4"        "4: Different employer AND different job"                                                           
    "L"        "L: Logical Skip"                                                                                   
   /EMTPP     
    "01"       "01: Elementary, middle, or secondary school"                                                       
    "02"       "02: 2-year college, junior college, or technical institute"                                        
    "03"       "03: 4-year college or university"                                                                  
    "04"       "04: Medical school"                                                                                
    "05"       "05: University research institute"                                                                 
    "06"       "06: Other (Educational Institution)"                                                               
    "10"       "10: Private-for-profit (non-educational institution)"                                              
    "11"       "11: Private-for-non-profit (non-educational institution)"                                          
    "12"       "12: Self-employed, not incorporated (non-educational institution)"                                 
    "13"       "13: Self-employed, incorporated (non-educational institution)"                                     
    "14"       "14: Local government (non-educational institution)"                                                
    "15"       "15: State government (non-educational institution)"                                                
    "17"       "17: U.S. government (non-educational institution)"                                                 
    "18"       "18: Other (non-educational institution)"                                                           
    "19"       "19: Non-US Government (non-educational institution)"                                               
    "L"        "L: Logical Skip"                                                                                   
   /EMUS      
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: Non-U.S."                                                                                       
    "Y"        "Y: U.S."                                                                                           
   /FACADV    
    "1"        "1: Very important"                                                                                 
    "2"        "2: Somewhat important"                                                                             
    "3"        "3: Somewhat unimportant"                                                                           
    "4"        "4: Not important at all"                                                                           
    "L"        "L: Logical Skip"                                                                                   
   /FACBEN    
    "1"        "1: Very important"                                                                                 
    "2"        "2: Somewhat important"                                                                             
    "3"        "3: Somewhat unimportant"                                                                           
    "4"        "4: Not important at all"                                                                           
    "L"        "L: Logical Skip"                                                                                   
   /FACCHAL   
    "1"        "1: Very important"                                                                                 
    "2"        "2: Somewhat important"                                                                             
    "3"        "3: Somewhat unimportant"                                                                           
    "4"        "4: Not important at all"                                                                           
    "L"        "L: Logical Skip"                                                                                   
   /FACIND    
    "1"        "1: Very important"                                                                                 
    "2"        "2: Somewhat important"                                                                             
    "3"        "3: Somewhat unimportant"                                                                           
    "4"        "4: Not important at all"                                                                           
    "L"        "L: Logical Skip"                                                                                   
   /FACLOC    
    "1"        "1: Very important"                                                                                 
    "2"        "2: Somewhat important"                                                                             
    "3"        "3: Somewhat unimportant"                                                                           
    "4"        "4: Not important at all"                                                                           
    "L"        "L: Logical Skip"                                                                                   
   /FACRANK   
    "1"        "1: Not applicable at this institution"                                                             
    "2"        "2: Not applicable for my position"                                                                 
    "3"        "3: Professor"                                                                                      
    "4"        "4: Associate professor"                                                                            
    "5"        "5: Assistant professor"                                                                            
    "6"        "6: Instructor"                                                                                     
    "7"        "7: Lecturer"                                                                                       
    "8"        "8: Other"                                                                                          
    "L"        "L: Logical Skip"                                                                                   
   /FACRESP   
    "1"        "1: Very important"                                                                                 
    "2"        "2: Somewhat important"                                                                             
    "3"        "3: Somewhat unimportant"                                                                           
    "4"        "4: Not important at all"                                                                           
    "L"        "L: Logical Skip"                                                                                   
   /FACSAL    
    "1"        "1: Very important"                                                                                 
    "2"        "2: Somewhat important"                                                                             
    "3"        "3: Somewhat unimportant"                                                                           
    "4"        "4: Not important at all"                                                                           
    "L"        "L: Logical Skip"                                                                                   
   /FACSEC    
    "1"        "1: Very important"                                                                                 
    "2"        "2: Somewhat important"                                                                             
    "3"        "3: Somewhat unimportant"                                                                           
    "4"        "4: Not important at all"                                                                           
    "L"        "L: Logical Skip"                                                                                   
   /FACSOC    
    "1"        "1: Very important"                                                                                 
    "2"        "2: Somewhat important"                                                                             
    "3"        "3: Somewhat unimportant"                                                                           
    "4"        "4: Not important at all"                                                                           
    "L"        "L: Logical Skip"                                                                                   
   /FNINUS    
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /FSDED     
    "L"        "L: Logical skip"                                                                                   
    "N"        "N: No (Left box blank)"                                                                            
    "Y"        "Y: Yes (Marked box)"                                                                               
   /FSDK      
    "L"        "L: Logical skip"                                                                                   
    "N"        "N: No (Left box blank)"                                                                            
    "Y"        "Y: Yes (Marked box)"                                                                               
   /FSDOD     
    "L"        "L: Logical skip"                                                                                   
    "N"        "N: No (Left box blank)"                                                                            
    "Y"        "Y: Yes (Marked box)"                                                                               
   /FSDOE     
    "L"        "L: Logical skip"                                                                                   
    "N"        "N: No (Left box blank)"                                                                            
    "Y"        "Y: Yes (Marked box)"                                                                               
   /FSHHS     
    "L"        "L: Logical skip"                                                                                   
    "N"        "N: No (Left box blank)"                                                                            
    "Y"        "Y: Yes (Marked box)"                                                                               
   /FSNASA    
    "L"        "L: Logical skip"                                                                                   
    "N"        "N: No (Left box blank)"                                                                            
    "Y"        "Y: Yes (Marked box)"                                                                               
   /FSNIH     
    "L"        "L: Logical skip"                                                                                   
    "N"        "N: No (Left box blank)"                                                                            
    "Y"        "Y: Yes (Marked box)"                                                                               
   /FSNSF     
    "L"        "L: Logical skip"                                                                                   
    "N"        "N: No (Left box blank)"                                                                            
    "Y"        "Y: Yes (Marked box)"                                                                               
   /FSOT      
    "L"        "L: Logical skip"                                                                                   
    "N"        "N: No (Left box blank)"                                                                            
    "Y"        "Y: Yes (Marked box)"                                                                               
   /FTPRET    
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /GENDER    
    "F"        "F: Female"                                                                                         
    "M"        "M: Male"                                                                                           
   /GOVSUP    
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /HCAPIN    
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /HDAY5P    
    1965                  "1965: 1960 to 1969"                                                                                
    1970                  "1970: 1970 to 1974"                                                                                
    1975                  "1975: 1975 to 1979"                                                                                
    1980                  "1980: 1980 to 1984"                                                                                
    1985                  "1985: 1985 to 1989"                                                                                
    1990                  "1990: 1990 to 1994"                                                                                
    1995                  "1995: 1995 to 1999"                                                                                
    2000                  "2000: 2000 to 2004"                                                                                
    2005                  "2005: 2005 to 2009"                                                                                
    2010                  "2010: 2010 or later"                                                                               
   /HDDGRUS   
    "N"        "N: Non-U.S."                                                                                       
    "Y"        "Y: U.S."                                                                                           
   /HDPBPR    
    "1"        "1: Publicly controlled"                                                                            
    "2"        "2: Privately controlled"                                                                           
    "M"        "M: Public/Private status information is not available"                                             
   /HDRGNP    
    "01"       "01: West"                                                                                          
    "02"       "02: Midwest"                                                                                       
    "03"       "03: Northeast"                                                                                     
    "04"       "04: South"                                                                                         
    "05"       "05: Abroad, not specified"                                                                         
   /HRSWKP    
    1                     "1: 20 or less"                                                                                     
    2                     "2: 21 - 35"                                                                                        
    3                     "3: 36 - 40"                                                                                        
    4                     "4: Greater than 40"                                                                                
    98                    "98: Logical Skip"                                                                                  
   /JOBINS    
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /JOBPENS   
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /JOBPROFT  
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /JOBSATIS  
    "1"        "1: Very satisfied"                                                                                 
    "2"        "2: Somewhat satisfied"                                                                             
    "3"        "3: Somewhat dissatisfied"                                                                          
    "4"        "4: Very dissatisfied"                                                                              
    "L"        "L: Logical Skip"                                                                                   
   /JOBVAC    
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /LFSTAT    
    "1"        "1: Employed"                                                                                       
    "2"        "2: Unemployed"                                                                                     
    "3"        "3: Not In Labor Force"                                                                             
   /LOOKWK    
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /MARIND    
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /MARSTA    
    "1"        "1: Married"                                                                                        
    "2"        "2: Living in a marriage-like relationship"                                                         
    "3"        "3: Widowed"                                                                                        
    "4"        "4: Separated"                                                                                      
    "5"        "5: Divorced"                                                                                       
    "6"        "6: Never married"                                                                                  
   /MGRNAT    
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /MGROTH    
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /MGRSOC    
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /MINRTY    
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /MR5YRP    
    1965                  "1965: 1960 to 1969"                                                                                
    1970                  "1970: 1970 to 1974"                                                                                
    1975                  "1975: 1975 to 1979"                                                                                
    1980                  "1980: 1980 to 1984"                                                                                
    1985                  "1985: 1985 to 1989"                                                                                
    1990                  "1990: 1990 to 1994"                                                                                
    1995                  "1995: 1995 to 1999"                                                                                
    2000                  "2000: 2000 to 2004"                                                                                
    2005                  "2005: 2005 to 2009"                                                                                
    2010                  "2010: 2010 or later"                                                                               
   /MRADV     
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /MRCAR     
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /MRCHG     
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /MRDG      
    "1"        "1: Bachelor''s"                                                                                    
    "2"        "2: Master''s"                                                                                      
    "3"        "3: Doctorate"                                                                                      
    "4"        "4: Professional"                                                                                   
    "5"        "5: Other"                                                                                          
   /MRDGRUS   
    "M"        "M: Missing"                                                                                        
    "N"        "N: Non-U.S."                                                                                       
    "Y"        "Y: U.S."                                                                                           
   /MRINT     
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /MRLIC     
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /MROTP     
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No (Left box blank)"                                                                            
    "Y"        "Y: Yes (Marked ''Graduate School'', ''Employer-required'' or ''Other'' box)"                       
   /MRPBPR    
    "1"        "1: Publicly controlled"                                                                            
    "2"        "2: Privately controlled"                                                                           
    "L"        "L: Logical Skip"                                                                                   
    "M"        "M: Public/Private status information is not available"                                             
   /MRRGNP    
    "01"       "01: West"                                                                                          
    "02"       "02: Midwest"                                                                                       
    "03"       "03: Northeast"                                                                                     
    "04"       "04: South"                                                                                         
    "05"       "05: Abroad, not specified"                                                                         
    "M"        "M: Missing"                                                                                        
   /MRSKL     
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /N2OCMLST  
    "1"        "1: Computer and mathematical scientists"                                                           
    "2"        "2: Biological, agricultural and other life scientists"                                             
    "3"        "3: Physical and related scientists"                                                                
    "4"        "4: Social and related scientists"                                                                  
    "5"        "5: Engineers"                                                                                      
    "6"        "6: S&E related occupations"                                                                        
    "7"        "7: Non-S&E Occupations"                                                                            
    "8"        "8: Logical Skip"                                                                                   
   /N2OCPRMG  
    "1"        "1: Computer and mathematical scientists"                                                           
    "2"        "2: Biological, agricultural and other life scientists"                                             
    "3"        "3: Physical and related scientists"                                                                
    "4"        "4: Social and related scientists"                                                                  
    "5"        "5: Engineers"                                                                                      
    "6"        "6: S&E related occupations"                                                                        
    "7"        "7: Non-S&E Occupations"                                                                            
    "8"        "8: Logical Skip"                                                                                   
   /N2OCPRNG  
    "11"       "11: Computer and information scientists"                                                           
    "12"       "12: Mathematical scientists"                                                                       
    "18"       "18: Postsecondary teachers - computer and math sciences"                                           
    "21"       "21: Agricultural & food scientists"                                                                
    "22"       "22: Biological and medical scientists"                                                             
    "23"       "23: Environmental life scientists"                                                                 
    "28"       "28: Postsecondary teachers - life and related sciences"                                            
    "31"       "31: Chemists, except biochemists"                                                                  
    "32"       "32: Earth scientists, geologists and oceanographers"                                               
    "33"       "33: Physicists and astronomers"                                                                    
    "34"       "34: Other physical & related scientists"                                                           
    "38"       "38: Postsecondary teachers - physical and related sciences"                                        
    "41"       "41: Economists"                                                                                    
    "42"       "42: Political scientists"                                                                          
    "43"       "43: Psychologists"                                                                                 
    "44"       "44: Sociologists and anthropologists"                                                              
    "45"       "45: Other social and related scientists"                                                           
    "48"       "48: Postsecondary teachers - social and related sciences"                                          
    "51"       "51: Aerospace, aeronautical or astronautical engineers"                                            
    "52"       "52: Chemical engineers"                                                                            
    "53"       "53: Civil, architectural or sanitary engineers"                                                    
    "54"       "54: Electrical or computer hardware engineers"                                                     
    "55"       "55: Industrial engineers"                                                                          
    "56"       "56: Mechanical engineers"                                                                          
    "57"       "57: Other engineers"                                                                               
    "58"       "58: Postsecondary teachers - engineering"                                                          
    "61"       "61: Health-related occupations"                                                                    
    "62"       "62: S&E managers"                                                                                  
    "63"       "63: S&E Pre-college Teachers"                                                                      
    "64"       "64: S&E technicians and technologists"                                                             
    "65"       "65: Other S&E-related occupations"                                                                 
    "71"       "71: Non-S&E Managers"                                                                              
    "72"       "72: Management-related occupations"                                                                
    "73"       "73: Non-S&E precollege teachers"                                                                   
    "74"       "74: Non-S&E postsecondary teachers"                                                                
    "75"       "75: Social services and related occupations"                                                       
    "76"       "76: Sales and marketing occupations"                                                               
    "77"       "77: Art, humanities and related occupations"                                                       
    "78"       "78: Other non-S&E occupations"                                                                     
    "98"       "98: Logical Skip"                                                                                  
   /NACEDMG   
    "1"        "1: Computer and mathematical sciences"                                                             
    "2"        "2: Biological, agricultural and environmental life sciences"                                       
    "3"        "3: Physical and related sciences"                                                                  
    "4"        "4: Social and related sciences"                                                                    
    "5"        "5: Engineering"                                                                                    
    "6"        "6: S&E-Related Fields"                                                                             
    "7"        "7: Non-S&E Fields"                                                                                 
    "8"        "8: Logical Skip"                                                                                   
   /NBAMEMG   
    "1"        "1: Computer and mathematical sciences"                                                             
    "2"        "2: Biological, agricultural and environmental life sciences"                                       
    "3"        "3: Physical and related sciences"                                                                  
    "4"        "4: Social and related sciences"                                                                    
    "5"        "5: Engineering"                                                                                    
    "6"        "6: S&E-Related Fields"                                                                             
    "7"        "7: Non-S&E Fields"                                                                                 
    "8"        "8: Logical Skip"                                                                                   
   /NBAMENGP  
    "11"       "11: Computer and information sciences"                                                             
    "12"       "12: Mathematics and statistics"                                                                    
    "21"       "21: Agricultural and food sciences"                                                                
    "22"       "22: Biological sciences"                                                                           
    "23"       "23: Environmental life sciences"                                                                   
    "31"       "31: Chemistry, except biochemistry"                                                                
    "32"       "32: Earth, atmospheric and ocean sciences"                                                         
    "33"       "33: Physics and astronomy"                                                                         
    "34"       "34: Other physical sciences"                                                                       
    "41"       "41: Economics"                                                                                     
    "42"       "42: Political and related sciences"                                                                
    "43"       "43: Psychology"                                                                                    
    "44"       "44: Sociology and anthropology"                                                                    
    "45"       "45: Other social sciences"                                                                         
    "51"       "51: Aerospace, aeronautical and astronautical engineering"                                         
    "52"       "52: Chemical engineering"                                                                          
    "53"       "53: Civil and architectural engineering"                                                           
    "54"       "54: Electrical and computer engineering"                                                           
    "55"       "55: Industrial engineering"                                                                        
    "56"       "56: Mechanical engineering"                                                                        
    "57"       "57: Other engineering"                                                                             
    "60"       "60: S&E related fields"                                                                            
    "70"       "70: Non-S&E fields"                                                                                
    "98"       "98: Logical Skip"                                                                                  
   /ND2MEMG   
    "1"        "1: Computer and mathematical sciences"                                                             
    "2"        "2: Biological, agricultural and environmental life sciences"                                       
    "3"        "3: Physical and related sciences"                                                                  
    "4"        "4: Social and related sciences"                                                                    
    "5"        "5: Engineering"                                                                                    
    "6"        "6: S&E-Related Fields"                                                                             
    "7"        "7: Non-S&E Fields"                                                                                 
    "8"        "8: Logical Skip"                                                                                   
   /ND3MEMG   
    "1"        "1: Computer and mathematical sciences"                                                             
    "2"        "2: Biological, agricultural and environmental life sciences"                                       
    "3"        "3: Physical and related sciences"                                                                  
    "4"        "4: Social and related sciences"                                                                    
    "5"        "5: Engineering"                                                                                    
    "6"        "6: S&E-Related Fields"                                                                             
    "7"        "7: Non-S&E Fields"                                                                                 
    "8"        "8: Logical Skip"                                                                                   
   /NDGMEMG   
    "1"        "1: Computer and mathematical sciences"                                                             
    "2"        "2: Biological, agricultural and environmental life sciences"                                       
    "3"        "3: Physical and related sciences"                                                                  
    "4"        "4: Social and related sciences"                                                                    
    "5"        "5: Engineering"                                                                                    
    "6"        "6: S&E-Related Fields"                                                                             
    "7"        "7: Non-S&E Fields"                                                                                 
   /NDGMENGP  
    "11"       "11: Computer and information sciences"                                                             
    "12"       "12: Mathematics and statistics"                                                                    
    "21"       "21: Agricultural and food sciences"                                                                
    "22"       "22: Biological sciences"                                                                           
    "23"       "23: Environmental life sciences"                                                                   
    "31"       "31: Chemistry, except biochemistry"                                                                
    "32"       "32: Earth, atmospheric and ocean sciences"                                                         
    "33"       "33: Physics and astronomy"                                                                         
    "34"       "34: Other physical sciences"                                                                       
    "41"       "41: Economics"                                                                                     
    "42"       "42: Political and related sciences"                                                                
    "43"       "43: Psychology"                                                                                    
    "44"       "44: Sociology and anthropology"                                                                    
    "45"       "45: Other social sciences"                                                                         
    "51"       "51: Aerospace, aeronautical and astronautical engineering"                                         
    "52"       "52: Chemical engineering"                                                                          
    "53"       "53: Civil and architectural engineering"                                                           
    "54"       "54: Electrical and computer engineering"                                                           
    "55"       "55: Industrial engineering"                                                                        
    "56"       "56: Mechanical engineering"                                                                        
    "57"       "57: Other engineering"                                                                             
    "60"       "60: S&E related fields"                                                                            
    "70"       "70: Non-S&E fields"                                                                                
   /NEDTPP    
    "1"        "1: Self-employed, not incorp. bus., profess. practice, or farm"                                    
    "2"        "2: Self-employed, incorp. business, profess. practice, or farm"                                    
    "3"        "3: Priv.-for-profit co./bus./indv., wrkg for wages/sal./commis."                                   
    "4"        "4: Private not-for-profit, tax-exempt/charitable organ."                                           
    "5"        "5: Local government (city, county, etc.)"                                                          
    "6"        "6: State government"                                                                               
    "8"        "8: U.S. government (civilian employee)"                                                            
    "9"        "9: Other employer type"                                                                            
    "10"       "10: Non-US government (any type)"                                                                  
    "L"        "L: Logical Skip"                                                                                   
   /NEWBUS    
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /NMRMEMG   
    "1"        "1: Computer and mathematical sciences"                                                             
    "2"        "2: Biological, agricultural and environmental life sciences"                                       
    "3"        "3: Physical and related sciences"                                                                  
    "4"        "4: Social and related sciences"                                                                    
    "5"        "5: Engineering"                                                                                    
    "6"        "6: S&E-Related Fields"                                                                             
    "7"        "7: Non-S&E Fields"                                                                                 
   /NMRMENGP  
    "11"       "11: Computer and information sciences"                                                             
    "12"       "12: Mathematics and statistics"                                                                    
    "21"       "21: Agricultural and food sciences"                                                                
    "22"       "22: Biological sciences"                                                                           
    "23"       "23: Environmental life sciences"                                                                   
    "31"       "31: Chemistry, except biochemistry"                                                                
    "32"       "32: Earth, atmospheric and ocean sciences"                                                         
    "33"       "33: Physics and astronomy"                                                                         
    "34"       "34: Other physical sciences"                                                                       
    "41"       "41: Economics"                                                                                     
    "42"       "42: Political and related sciences"                                                                
    "43"       "43: Psychology"                                                                                    
    "44"       "44: Sociology and anthropology"                                                                    
    "45"       "45: Other social sciences"                                                                         
    "51"       "51: Aerospace, aeronautical and astronautical engineering"                                         
    "52"       "52: Chemical engineering"                                                                          
    "53"       "53: Civil and architectural engineering"                                                           
    "54"       "54: Electrical and computer engineering"                                                           
    "55"       "55: Industrial engineering"                                                                        
    "56"       "56: Mechanical engineering"                                                                        
    "57"       "57: Other engineering"                                                                             
    "60"       "60: S&E related fields"                                                                            
    "70"       "70: Non-S&E fields"                                                                                
   /NRCHG     
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /NRCON     
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /NRFAM     
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /NRLOC     
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /NROCNA    
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /NROT      
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /NRPAY     
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /NRREA     
    "1"        "1: Pay, promotion opportunities"                                                                   
    "2"        "2: Working conditions (hours,equip.,working envir.)"                                               
    "3"        "3: Job location"                                                                                   
    "4"        "4: Change in career or professional interests"                                                     
    "5"        "5: Family-related reasons"                                                                         
    "6"        "6: Job in doctoral degree field not available"                                                     
    "7"        "7: Other reason for not working"                                                                   
    "L"        "L: Logical Skip"                                                                                   
   /NRSEC     
    "0"        "0: No second most important reason"                                                                
    "1"        "1: Pay, promotion opportunities"                                                                   
    "2"        "2: Working conditions (hours,equip.,working envir.)"                                               
    "3"        "3: Job location"                                                                                   
    "4"        "4: Change in career or professional interests"                                                     
    "5"        "5: Family-related reasons"                                                                         
    "6"        "6: Job in doctoral degree field not available"                                                     
    "7"        "7: Other reason for not working"                                                                   
    "L"        "L: Logical Skip"                                                                                   
   /NSDRMEM   
    "1"        "1: Biological, agricultural and environmental life sciences"                                       
    "2"        "2: Computer and information sciences"                                                              
    "3"        "3: Mathematics and statistics"                                                                     
    "4"        "4: Physical sciences"                                                                              
    "5"        "5: Psychology"                                                                                     
    "6"        "6: Social sciences"                                                                                
    "7"        "7: Engineering"                                                                                    
    "8"        "8: Health"                                                                                         
   /NSDRMEN   
    "11"       "11: Agricultural and food sciences"                                                                
    "12"       "12: Biochemistry and biophysics"                                                                   
    "13"       "13: Cell and molecular biology"                                                                    
    "14"       "14: Microbiology"                                                                                  
    "15"       "15: Zoology"                                                                                       
    "16"       "16: Other biological sciences"                                                                     
    "17"       "17: Environmental life sciences"                                                                   
    "21"       "21: Computer and information sciences"                                                             
    "31"       "31: Mathematics and statistics"                                                                    
    "41"       "41: Astronomy and astrophysics"                                                                    
    "42"       "42: Chemistry, except biochemistry"                                                                
    "43"       "43: Earth, atmospheric and ocean sciences"                                                         
    "44"       "44: Physics"                                                                                       
    "51"       "51: Psychology"                                                                                    
    "61"       "61: Economics"                                                                                     
    "62"       "62: Political sciences"                                                                            
    "63"       "63: Sociology"                                                                                     
    "64"       "64: Other social sciences"                                                                         
    "71"       "71: Aerospace, aeronautical and astronautical engineering"                                         
    "72"       "72: Chemical engineering"                                                                          
    "73"       "73: Civil engineering"                                                                             
    "74"       "74: Electrical and computer engineering"                                                           
    "75"       "75: Materials and metallurgical engineering"                                                       
    "76"       "76: Mechanical engineering"                                                                        
    "77"       "77: Other engineering"                                                                             
    "81"       "81: Health"                                                                                        
   /NWFAM     
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /NWLAY     
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /NWNOND    
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /NWOCNA    
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /NWOTP     
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No (Left box blank)"                                                                            
    "Y"        "Y: Yes (Marked ''Illness'', ''Retired'' or ''Other'' box)"                                         
   /NWSTU     
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /OCEDRLP   
    "1"        "1: Closely related"                                                                                
    "2"        "2: Somewhat related"                                                                               
    "3"        "3: Not related"                                                                                    
    "L"        "L: Logical Skip"                                                                                   
   /PDEMPL    
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /PDEXPECT  
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /PDIX      
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /PDOTHER   
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /PDPERPL   
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /PDPRI     
    "1"        "1: Additional training in Phd field"                                                               
    "2"        "2: Training in an area outside of PhD field"                                                       
    "3"        "3: Work with a specific person or place"                                                           
    "4"        "4: Other employment not available"                                                                 
    "5"        "5: Postdoc generally expected for career in this field"                                            
    "6"        "6: Other"                                                                                          
    "L"        "L: Logical Skip"                                                                                   
   /PDSEC     
    "0"        "0: No Second Reason"                                                                               
    "1"        "1: Additional training in Phd field"                                                               
    "2"        "2: Training in an area outside of PhD field"                                                       
    "3"        "3: Work with a specific person or place"                                                           
    "4"        "4: Other employment not available"                                                                 
    "5"        "5: Postdoc generally expected for career in this field"                                            
    "6"        "6: Other"                                                                                          
    "L"        "L: Logical Skip"                                                                                   
   /PDTRAIN   
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /PDTROUT   
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /PDUSFOR   
    "1"        "1: U.S. location"                                                                                  
    "2"        "2: Non-U.S. location"                                                                              
    "M"        "M: Missing/Unknown"                                                                                
   /PJFAM     
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /PJHAJ     
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /PJNOND    
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /PJOCNA    
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /PJOT      
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /PJRET     
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /PJSTU     
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /PJWTFT    
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /PRMBRPB   
    0                     "0: No memberships"                                                                                 
    1                     "1: 1 membership"                                                                                   
    2                     "2: 2 memberships"                                                                                  
    3                     "3: 3 memberships"                                                                                  
    4                     "4: 4 memberships"                                                                                  
    5                     "5: 5 memberships"                                                                                  
    6                     "6: 6 or more memberships"                                                                          
    98                    "98: Logical Skip"                                                                                  
   /PROMTGI   
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /PUBPRI    
    "1"        "1: Publicly controlled"                                                                            
    "2"        "2: Privately controlled"                                                                           
    "L"        "L: Logical Skip"                                                                                   
    "M"        "M: Public/Private status information is not available"                                             
   /RACETHMP  
    "1"        "1: Asian, non-Hispanic ONLY"                                                                       
    "3"        "3: Black, non-Hispanic ONLY"                                                                       
    "4"        "4: Hispanic, any race"                                                                             
    "5"        "5: White, non-Hispanic ONLY"                                                                       
    "7"        "7: Under-represented Minorities"                                                                   
   /SATADV    
    "1"        "1: Very satisfied"                                                                                 
    "2"        "2: Somewhat satisfied"                                                                             
    "3"        "3: Somewhat dissatisfied"                                                                          
    "4"        "4: Very dissatisfied"                                                                              
    "L"        "L: Logical Skip"                                                                                   
   /SATBEN    
    "1"        "1: Very satisfied"                                                                                 
    "2"        "2: Somewhat satisfied"                                                                             
    "3"        "3: Somewhat dissatisfied"                                                                          
    "4"        "4: Very dissatisfied"                                                                              
    "L"        "L: Logical Skip"                                                                                   
   /SATCHAL   
    "1"        "1: Very satisfied"                                                                                 
    "2"        "2: Somewhat satisfied"                                                                             
    "3"        "3: Somewhat dissatisfied"                                                                          
    "4"        "4: Very dissatisfied"                                                                              
    "L"        "L: Logical Skip"                                                                                   
   /SATIND    
    "1"        "1: Very satisfied"                                                                                 
    "2"        "2: Somewhat satisfied"                                                                             
    "3"        "3: Somewhat dissatisfied"                                                                          
    "4"        "4: Very dissatisfied"                                                                              
    "L"        "L: Logical Skip"                                                                                   
   /SATLOC    
    "1"        "1: Very satisfied"                                                                                 
    "2"        "2: Somewhat satisfied"                                                                             
    "3"        "3: Somewhat dissatisfied"                                                                          
    "4"        "4: Very dissatisfied"                                                                              
    "L"        "L: Logical Skip"                                                                                   
   /SATRESP   
    "1"        "1: Very satisfied"                                                                                 
    "2"        "2: Somewhat satisfied"                                                                             
    "3"        "3: Somewhat dissatisfied"                                                                          
    "4"        "4: Very dissatisfied"                                                                              
    "L"        "L: Logical Skip"                                                                                   
   /SATSAL    
    "1"        "1: Very satisfied"                                                                                 
    "2"        "2: Somewhat satisfied"                                                                             
    "3"        "3: Somewhat dissatisfied"                                                                          
    "4"        "4: Very dissatisfied"                                                                              
    "L"        "L: Logical Skip"                                                                                   
   /SATSEC    
    "1"        "1: Very satisfied"                                                                                 
    "2"        "2: Somewhat satisfied"                                                                             
    "3"        "3: Somewhat dissatisfied"                                                                          
    "4"        "4: Very dissatisfied"                                                                              
    "L"        "L: Logical Skip"                                                                                   
   /SATSOC    
    "1"        "1: Very satisfied"                                                                                 
    "2"        "2: Somewhat satisfied"                                                                             
    "3"        "3: Somewhat dissatisfied"                                                                          
    "4"        "4: Very dissatisfied"                                                                              
    "L"        "L: Logical Skip"                                                                                   
   /SDR5YRP   
    1965                  "1965: 1960 to 1969"                                                                                
    1970                  "1970: 1970 to 1974"                                                                                
    1975                  "1975: 1975 to 1979"                                                                                
    1980                  "1980: 1980 to 1984"                                                                                
    1985                  "1985: 1985 to 1989"                                                                                
    1990                  "1990: 1990 to 1994"                                                                                
    1995                  "1995: 1995 to 1999"                                                                                
    2000                  "2000: 2000 to 2004"                                                                                
    2005                  "2005: 2005 to 2009"                                                                                
    2010                  "2010: 2010 to 2014"                                                                                
   /SDRPBPR   
    "1"        "1: Publicly controlled"                                                                            
    "2"        "2: Privately controlled"                                                                           
    "M"        "M: Public/Private status information is not available"                                             
   /SDRRGNP   
    "01"       "01: West"                                                                                          
    "02"       "02: Midwest"                                                                                       
    "03"       "03: Northeast"                                                                                     
    "04"       "04: South"                                                                                         
   /SEH       
    "1"        "1: Science"                                                                                        
    "7"        "7: Engineering"                                                                                    
    "8"        "8: Health"                                                                                         
   /SPNAT     
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /SPOT      
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /SPOWK     
    "1"        "1: Yes, full-time"                                                                                 
    "2"        "2: Yes, part-time"                                                                                 
    "3"        "3: No"                                                                                             
    "L"        "L: Logical Skip"                                                                                   
   /SPSOC     
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /SRVMODE   
    "1"        "1: Mail"                                                                                           
    "2"        "2: CATI"                                                                                           
    "4"        "4: World Wide Web"                                                                                 
   /SUPWK     
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /SURID     
    2                     "2: SDR"                                                                                            
   /TCDGCMP   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /TENI      
    "1"        "1: Not applicable"                                                                                 
    "2"        "2: Not tenured"                                                                                    
    "3"        "3: Tenured"                                                                                        
    "L"        "L: Logical Skip"                                                                                   
   /TENSTA    
    "1"        "1: Not applicable: no tenure system at this institution"                                           
    "2"        "2: Not applicable: no tenure system for my position"                                               
    "3"        "3: Tenured"                                                                                        
    "4"        "4: On tenure-track but not tenured"                                                                
    "5"        "5: Not on tenure track"                                                                            
    "L"        "L: Logical Skip"                                                                                   
   /WAACC     
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /WAAPRSH   
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /WABRSH    
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /WACOM     
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /WADEV     
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /WADSN     
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /WAEMRL    
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /WAMGMT    
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /WAOT      
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /WAPRI     
    "01"       "01: Accounting, finance, contracts"                                                                
    "02"       "02: Basic res.-study to gain sci. knwldg prima. for its own sake"                                  
    "03"       "03: Apld. res.-study to gain sci. knwldg to meet recognized need"                                  
    "04"       "04: Dev.-knowledge from res. for the prod. of materials, devices"                                  
    "05"       "05: Design of equipment, processes, structures, models"                                            
    "06"       "06: Computer applications, programming, systems development"                                       
    "07"       "07: Human Resources - inc. recruiting, personnel dev, training"                                    
    "08"       "08: Managing or supervising people or projects"                                                    
    "09"       "09: Production, operations, maintenance (e.g., chip production)"                                   
    "10"       "10: Prof. services (healthcare, fin. serv., legal serv., etc.)"                                    
    "11"       "11: Sales, purchasing, marketing"                                                                  
    "12"       "12: Quality or productivity management"                                                            
    "13"       "13: Teaching"                                                                                      
    "14"       "14: Other work activity"                                                                           
    "L"        "L: Logical Skip"                                                                                   
   /WAPROD    
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /WAPRSM    
    "1"        "1: Research and Development"                                                                       
    "2"        "2: Teaching"                                                                                       
    "3"        "3: Management and Administration"                                                                  
    "4"        "4: Computer Applications"                                                                          
    "5"        "5: Other"                                                                                          
    "L"        "L: Logical Skip"                                                                                   
   /WAQM      
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /WASALE    
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /WASCSM    
    "1"        "1: Research and Development"                                                                       
    "2"        "2: Teaching"                                                                                       
    "3"        "3: Management and Administration"                                                                  
    "4"        "4: Computer Applications"                                                                          
    "5"        "5: Other"                                                                                          
    "6"        "6: No Secondary Activity"                                                                          
    "L"        "L: Logical Skip"                                                                                   
   /WASEC     
    "00"       "00: No Secondary Activity"                                                                         
    "01"       "01: Accounting, finance, contracts"                                                                
    "02"       "02: Basic res.-study to gain sci. knwldg prima. for its own sake"                                  
    "03"       "03: Apld. res.-study to gain sci. knwldg to meet recognized need"                                  
    "04"       "04: Dev.-knowledge from res. for the prod. of materials, devices"                                  
    "05"       "05: Design of equipment, processes, structures, models"                                            
    "06"       "06: Computer applications, programming, systems development"                                       
    "07"       "07: Human Resources - inc. recruiting, personnel dev, training"                                    
    "08"       "08: Managing or supervising people or projects"                                                    
    "09"       "09: Production, operations, maintenance (e.g., chip production)"                                   
    "10"       "10: Prof. services (healthcare, fin. serv., legal serv., etc.)"                                    
    "11"       "11: Sales, purchasing, marketing"                                                                  
    "12"       "12: Quality or productivity management"                                                            
    "13"       "13: Teaching"                                                                                      
    "14"       "14: Other work activity"                                                                           
    "L"        "L: Logical Skip"                                                                                   
   /WASVC     
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /WATEA     
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /WKSYR     
    "1"        "1: Work 52 weeks per year"                                                                         
    "2"        "2: Less than 52 weeks per year"                                                                    
    "L"        "L: Logical Skip"                                                                                   
   /WKTRNI    
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /WRKG      
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /WRKGP     
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /WTRCHOC   
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /WTREASN   
    "1"        "1: To improve skills or knowledge in your current occupational field"                              
    "2"        "2: To increase opportunities for promo/advance in current occupational field"                      
    "3"        "3: For licensure/certification in your current occupational field"                                 
    "4"        "4: To facilitate a change to a different occupational field"                                       
    "5"        "5: Required or expected by employer"                                                               
    "6"        "6: For leisure or personal interest"                                                               
    "7"        "7: other reason for training"                                                                      
    "L"        "L: Logical Skip"                                                                                   
   /WTREM     
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /WTRLIC    
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /WTROPPS   
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /WTROT     
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /WTRPERS   
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
   /WTRSKL    
    "L"        "L: Logical Skip"                                                                                   
    "N"        "N: No"                                                                                             
    "Y"        "Y: Yes"                                                                                            
  /
.
EXECUTE .
SAVE OUTFILE = 'epsd15.SAV' /COMPRESSED .
