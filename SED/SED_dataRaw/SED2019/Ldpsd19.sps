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
FILE HANDLE DATA / NAME='EPSD19.DAT' LRECL= 00343  .
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
    BAAYR5P        00029    - 00033         
    BADGRUS        00034    - 00035 (A)     
    BARGNP         00036    - 00037 (A)     
    BTHUS          00038    - 00039 (A)     
    CH1218IN       00040    - 00040 (A)     
    CH19IN         00041    - 00041 (A)     
    CH25IN         00042    - 00042 (A)     
    CH611IN        00043    - 00043 (A)     
    CH6IN          00044    - 00044 (A)     
    CHCHG          00045    - 00045 (A)     
    CHCON          00046    - 00046 (A)     
    CHFAM          00047    - 00047 (A)     
    CHLAY          00048    - 00048 (A)     
    CHLOC          00049    - 00049 (A)     
    CHLVIN         00050    - 00050 (A)     
    CHOT           00051    - 00051 (A)     
    CHPAY          00052    - 00052 (A)     
    CHRET          00053    - 00053 (A)     
    CHSCH          00054    - 00054 (A)     
    CHTOTPB        00055    - 00056 (A)     
    CHU2IN         00057    - 00057 (A)     
    CHUN12         00058    - 00058 (A)     
    COHORT         00059    - 00059 (A)     
    CTZFOR         00060    - 00060 (A)     
    CTZN           00061    - 00061 (A)     
    CTZN_DRF       00062    - 00062 (A)     
    CTZUS          00063    - 00063 (A)     
    CTZUSIN        00064    - 00064 (A)     
    D25YRP         00065    - 00070         
    D2DG           00071    - 00071 (A)     
    D2DGRUS        00072    - 00073 (A)     
    D2RGNP         00074    - 00075 (A)     
    D35YRP         00076    - 00081         
    D3DG           00082    - 00082 (A)     
    D3DGRUS        00083    - 00084 (A)     
    D3RGNP         00085    - 00086 (A)     
    DIFAGEGR       00087    - 00089         
    DIFBIR         00090    - 00090 (A)     
    DIFNO          00091    - 00091 (A)     
    EARNP          00092    - 00100         
    EDDAD          00101    - 00101 (A)     
    EDMOM          00102    - 00102 (A)     
    EDTP           00103    - 00103 (A)     
    EMED           00104    - 00104 (A)     
    EMRGP          00105    - 00106 (A)     
    EMSECDT        00107    - 00108 (A)     
    EMSECSM        00109    - 00109 (A)     
    EMSIZE         00110    - 00110 (A)     
    EMSMI          00111    - 00111 (A)     
    EMTPP          00112    - 00113 (A)     
    EMUS           00114    - 00115 (A)     
    FACADV         00116    - 00116 (A)     
    FACBEN         00117    - 00117 (A)     
    FACCHAL        00118    - 00118 (A)     
    FACIND         00119    - 00119 (A)     
    FACLOC         00120    - 00120 (A)     
    FACRANK        00121    - 00121 (A)     
    FACRESP        00122    - 00122 (A)     
    FACSAL         00123    - 00123 (A)     
    FACSEC         00124    - 00124 (A)     
    FACSOC         00125    - 00125 (A)     
    FNINUS         00126    - 00126 (A)     
    FSDED          00127    - 00127 (A)     
    FSDK           00128    - 00128 (A)     
    FSDOD          00129    - 00129 (A)     
    FSDOE          00130    - 00130 (A)     
    FSHHS          00131    - 00131 (A)     
    FSNASA         00132    - 00132 (A)     
    FSNIH          00133    - 00133 (A)     
    FSNSF          00134    - 00134 (A)     
    FSOT           00135    - 00135 (A)     
    FTPRET         00136    - 00136 (A)     
    GENDER         00137    - 00137 (A)     
    GOVSUP         00138    - 00138 (A)     
    HCAPIN         00139    - 00139 (A)     
    HDAY5P         00140    - 00144         
    HDDGRUS        00145    - 00146 (A)     
    HDRGNP         00147    - 00148 (A)     
    HRSWKP         00149    - 00151         
    JOBINS         00152    - 00152 (A)     
    JOBPENS        00153    - 00153 (A)     
    JOBPROFT       00154    - 00154 (A)     
    JOBSATIS       00155    - 00155 (A)     
    JOBVAC         00156    - 00156 (A)     
    LFSTAT         00157    - 00157 (A)     
    LOOKWK         00158    - 00158 (A)     
    MARIND         00159    - 00159 (A)     
    MARSTA         00160    - 00160 (A)     
    MGRNAT         00161    - 00161 (A)     
    MGROTH         00162    - 00162 (A)     
    MGRSOC         00163    - 00163 (A)     
    MINRTY         00164    - 00164 (A)     
    MR5YRP         00165    - 00169         
    MRADV          00170    - 00170 (A)     
    MRCAR          00171    - 00171 (A)     
    MRCHG          00172    - 00172 (A)     
    MRDG           00173    - 00173 (A)     
    MRDGRUS        00174    - 00175 (A)     
    MRINT          00176    - 00176 (A)     
    MRLIC          00177    - 00177 (A)     
    MROTP          00178    - 00178 (A)     
    MRRGNP         00179    - 00180 (A)     
    MRSKL          00181    - 00181 (A)     
    N2OCMLST       00182    - 00182 (A)     
    N2OCPRMG       00183    - 00183 (A)     
    N2OCPRNG       00184    - 00185 (A)     
    NACEDMG        00186    - 00186 (A)     
    NBAMEMG        00187    - 00187 (A)     
    NBAMENGP       00188    - 00189 (A)     
    ND2MEMG        00190    - 00190 (A)     
    ND3MEMG        00191    - 00191 (A)     
    NDGMEMG        00192    - 00192 (A)     
    NDGMENGP       00193    - 00194 (A)     
    NEDTPP         00195    - 00196 (A)     
    NEWBUS         00197    - 00197 (A)     
    NMRMEMG        00198    - 00198 (A)     
    NMRMENGP       00199    - 00200 (A)     
    NRCHG          00201    - 00201 (A)     
    NRCON          00202    - 00202 (A)     
    NRFAM          00203    - 00203 (A)     
    NRLOC          00204    - 00204 (A)     
    NROCNA         00205    - 00205 (A)     
    NROT           00206    - 00206 (A)     
    NRPAY          00207    - 00207 (A)     
    NRREA          00208    - 00208 (A)     
    NRSEC          00209    - 00209 (A)     
    NSDRMEMTOD     00210    - 00210 (A)     
    NSDRMENTOD     00211    - 00212 (A)     
    NWFAM          00213    - 00213 (A)     
    NWLAY          00214    - 00214 (A)     
    NWNOND         00215    - 00215 (A)     
    NWOCNA         00216    - 00216 (A)     
    NWOTP          00217    - 00217 (A)     
    NWSTU          00218    - 00218 (A)     
    OBSNUM         00219    - 00226 (A)     
    OCEDRLP        00227    - 00227 (A)     
    PDEMPL         00228    - 00228 (A)     
    PDEXPECT       00229    - 00229 (A)     
    PDIX           00230    - 00230 (A)     
    PDOTHER        00231    - 00231 (A)     
    PDPERPL        00232    - 00232 (A)     
    PDPRI          00233    - 00233 (A)     
    PDSEC          00234    - 00234 (A)     
    PDTRAIN        00235    - 00235 (A)     
    PDTROUT        00236    - 00236 (A)     
    PDUSFOR        00237    - 00238 (A)     
    PJFAM          00239    - 00239 (A)     
    PJHAJ          00240    - 00240 (A)     
    PJNOND         00241    - 00241 (A)     
    PJOCNA         00242    - 00242 (A)     
    PJOT           00243    - 00243 (A)     
    PJRET          00244    - 00244 (A)     
    PJSTU          00245    - 00245 (A)     
    PJWTFT         00246    - 00246 (A)     
    PRMBRPB        00247    - 00249         
    PROMTGI        00250    - 00250 (A)     
    RACETHMP       00251    - 00251 (A)     
    REFYR          00252    - 00256         
    SALARYP        00257    - 00265         
    SATADV         00266    - 00266 (A)     
    SATBEN         00267    - 00267 (A)     
    SATCHAL        00268    - 00268 (A)     
    SATIND         00269    - 00269 (A)     
    SATLOC         00270    - 00270 (A)     
    SATRESP        00271    - 00271 (A)     
    SATSAL         00272    - 00272 (A)     
    SATSEC         00273    - 00273 (A)     
    SATSOC         00274    - 00274 (A)     
    SDR5YRP        00275    - 00280         
    SDRRGNP        00281    - 00282 (A)     
    SEHTOD         00283    - 00283 (A)     
    SPNAT          00284    - 00284 (A)     
    SPOT           00285    - 00285 (A)     
    SPOWK          00286    - 00286 (A)     
    SPSOC          00287    - 00287 (A)     
    SRVMODE        00288    - 00288 (A)     
    SUPWK          00289    - 00289 (A)     
    SURID          00290    - 00291         
    TCDGCMP        00292    - 00292 (A)     
    TENI           00293    - 00293 (A)     
    TENSTA         00294    - 00294 (A)     
    WAACC          00295    - 00295 (A)     
    WAAPRSH        00296    - 00296 (A)     
    WABRSH         00297    - 00297 (A)     
    WACOM          00298    - 00298 (A)     
    WADEV          00299    - 00299 (A)     
    WADSN          00300    - 00300 (A)     
    WAEMRL         00301    - 00301 (A)     
    WAMGMT         00302    - 00302 (A)     
    WAOT           00303    - 00303 (A)     
    WAPRI          00304    - 00305 (A)     
    WAPROD         00306    - 00306 (A)     
    WAPRSM         00307    - 00307 (A)     
    WAQM           00308    - 00308 (A)     
    WASALE         00309    - 00309 (A)     
    WASCSM         00310    - 00310 (A)     
    WASEC          00311    - 00312 (A)     
    WASVC          00313    - 00313 (A)     
    WATEA          00314    - 00314 (A)     
    WKSLYR         00315    - 00317         
    WKSWK          00318    - 00320         
    WKSYR          00321    - 00321 (A)     
    WKTRNI         00322    - 00322 (A)     
    WRKG           00323    - 00323 (A)     
    WRKGP          00324    - 00324 (A)     
    WTRCHOC        00325    - 00325 (A)     
    WTREASN        00326    - 00326 (A)     
    WTREM          00327    - 00327 (A)     
    WTRLIC         00328    - 00328 (A)     
    WTROPPS        00329    - 00329 (A)     
    WTROT          00330    - 00330 (A)     
    WTRPERS        00331    - 00331 (A)     
    WTRSKL         00332    - 00332 (A)     
    WTSURVY        00333    - 00343         
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
    D2RGNP         "P_ED_2ND_HD_SCHOOL_REGION_PUB"
    D35YRP         "Q_ED_3RD_HD_DEGREE_AWARD_YR_5_YR_GROUPING_PUB"
    D3DG           "Q_ED_3RD_HD_DEGREE_TYPE"
    D3DGRUS        "Q_ED_3RD_HD_SCHOOL_REGION_US_NONUS"
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
    NSDRMEMTOD     "T_ED_USDOC_MAJOR_ED_GRP_MAJOR_NEW_TOD"
    NSDRMENTOD     "T_ED_USDOC_MAJOR_ED_GRP_MINOR_NEW_TOD"
    NWFAM          "A_JOB_NOT_WRKNG_REAS_FAMILY"
    NWLAY          "A_JOB_NOT_WRKNG_REAS_LAYOFF"
    NWNOND         "A_JOB_NOT_WRKNG_REAS_NO_NEED"
    NWOCNA         "A_JOB_NOT_WRKNG_REAS_JOB_NOT_AVAIL"
    NWOTP          "A_JOB_NOT_WRKNG_REAS_OTHR_PUB"
    NWSTU          "A_JOB_NOT_WRKNG_REAS_STUDENT"
    OBSNUM         "Z_OBSERVATION_NUMBER"
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
    RACETHMP       "U_DEM_MULTIPLE_RACE_ETHNICITY_CAT_PUB"
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
    SDRRGNP        "T_ED_USDOC_SCHOOL_REGION_PUB"
    SEHTOD         "T_ED_USDOC_SEH_TOD"
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
    "M"        "M: Missing"                                                                                        
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
    "Y"        "Y: Yes (Marked ''Yes'' to ''Graduate School'', ''Employer-required'' or ''Other'')"                
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
   /BADGRUS   
    "L"        "L: Logical Skip"                                                                                   
    "M"        "M: Missing"                                                                                        
    "N"        "N: Non-U.S."                                                                                       
    "Y"        "Y: U.S."                                                                                           
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
    "6"        "6: Non-U.S. citizen, unspecified"                                                                  
    "M"        "M: Missing"                                                                                        
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
    "N"        "N: Non-U.S. citizen"                                                                               
    "Y"        "Y: U.S. citizen"                                                                                   
   /D25YRP    
    1965                  "1965: 1965 to 1969"                                                                                
    1970                  "1970: 1970 to 1974"                                                                                
    1975                  "1975: 1975 to 1979"                                                                                
    1980                  "1980: 1980 to 1984"                                                                                
    1985                  "1985: 1985 to 1989"                                                                                
    1990                  "1990: 1990 to 1994"                                                                                
    1995                  "1995: 1995 to 1999"                                                                                
    2000                  "2000: 2000 to 2004"                                                                                
    2005                  "2005: 2005 to 2009"                                                                                
    2010                  "2010: 2010 to 2014"                                                                                
    2015                  "2015: 2015 or later"                                                                               
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
   /D2RGNP    
    "01"       "01: West"                                                                                          
    "02"       "02: Midwest"                                                                                       
    "03"       "03: Northeast"                                                                                     
    "04"       "04: South"                                                                                         
    "05"       "05: Abroad, not specified"                                                                         
    "L"        "L: Logical Skip"                                                                                   
    "M"        "M: Missing"                                                                                        
   /D35YRP    
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
    "3"        "3: Doctorate"                                                                                      
    "4"        "4: Professional"                                                                                   
    "5"        "5: Other"                                                                                          
    "L"        "L: Logical Skip"                                                                                   
    "M"        "M: Missing"                                                                                        
   /D3DGRUS   
    "L"        "L: Logical Skip"                                                                                   
    "M"        "M: Missing"                                                                                        
    "N"        "N: Non-U.S."                                                                                       
    "Y"        "Y: U.S."                                                                                           
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
    "10"       "10: Private for-profit (non-educational institution)"                                              
    "11"       "11: Private non-profit (non-educational institution)"                                              
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
    "N"        "N: Not living in U.S."                                                                             
    "Y"        "Y: Living in U.S."                                                                                 
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
    1970                  "1970: 1970 to 1974"                                                                                
    1975                  "1975: 1975 to 1979"                                                                                
    1980                  "1980: 1980 to 1984"                                                                                
    1985                  "1985: 1985 to 1989"                                                                                
    1990                  "1990: 1990 to 1994"                                                                                
    1995                  "1995: 1995 to 1999"                                                                                
    2000                  "2000: 2000 to 2004"                                                                                
    2005                  "2005: 2005 to 2009"                                                                                
    2010                  "2010: 2010 to 2014"                                                                                
    2015                  "2015: 2015 or later"                                                                               
   /HDDGRUS   
    "N"        "N: Non-U.S."                                                                                       
    "Y"        "Y: U.S."                                                                                           
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
    "N"        "N: Not married"                                                                                    
    "Y"        "Y: Married"                                                                                        
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
    "N"        "N: Not URM"                                                                                        
    "Y"        "Y: URM"                                                                                            
   /MR5YRP    
    1970                  "1970: 1970 to 1974"                                                                                
    1975                  "1975: 1975 to 1979"                                                                                
    1980                  "1980: 1980 to 1984"                                                                                
    1985                  "1985: 1985 to 1989"                                                                                
    1990                  "1990: 1990 to 1994"                                                                                
    1995                  "1995: 1995 to 1999"                                                                                
    2000                  "2000: 2000 to 2004"                                                                                
    2005                  "2005: 2005 to 2009"                                                                                
    2010                  "2010: 2010 to 2014"                                                                                
    2015                  "2015: 2015 or later"                                                                               
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
    "Y"        "Y: Yes (Marked ''Yes'' to ''Graduate School'', ''Employer-required'' or ''Other'')"                
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
    "0"        "0: No second most important reason"                                                                
    "1"        "1: Pay, promotion opportunities"                                                                   
    "2"        "2: Working conditions (hours,equip.,working envir.)"                                               
    "3"        "3: Job location"                                                                                   
    "4"        "4: Change in career or professional interests"                                                     
    "5"        "5: Family-related reasons"                                                                         
    "6"        "6: Job in doctoral degree field not available"                                                     
    "7"        "7: Other reason for working out of field"                                                          
    "L"        "L: Logical Skip"                                                                                   
   /NRSEC     
    "0"        "0: No second most important reason"                                                                
    "1"        "1: Pay, promotion opportunities"                                                                   
    "2"        "2: Working conditions (hours,equip.,working envir.)"                                               
    "3"        "3: Job location"                                                                                   
    "4"        "4: Change in career or professional interests"                                                     
    "5"        "5: Family-related reasons"                                                                         
    "6"        "6: Job in doctoral degree field not available"                                                     
    "7"        "7: Other reason for working out of field"                                                          
    "L"        "L: Logical Skip"                                                                                   
   /NSDRMEMTOD
    "1"        "1: Biological, agricultural, and environmental life sciences"                                      
    "2"        "2: Computer and information sciences"                                                              
    "3"        "3: Mathematics and statistics"                                                                     
    "4"        "4: Physical sciences, Geosciences, Atmospheric, and Ocean Sciences"                                
    "5"        "5: Psychology"                                                                                     
    "6"        "6: Social sciences"                                                                                
    "7"        "7: Engineering"                                                                                    
    "8"        "8: Health"                                                                                         
   /NSDRMENTOD
    "11"       "11: Agricultural and Food Sciences"                                                                
    "12"       "12: Biochemistry and Biophysics"                                                                   
    "13"       "13: Cell, Cellular Biology, and Molecular Biology"                                                 
    "14"       "14: Microbiological Sciences and Immunology"                                                       
    "15"       "15: Natural Resources and Conservation"                                                            
    "16"       "16: Zoology"                                                                                       
    "17"       "17: Other Biological Sciences"                                                                     
    "21"       "21: Computer and Information Sciences"                                                             
    "31"       "31: Mathematics and Statistics"                                                                    
    "41"       "41: Astronomy and Astrophysics"                                                                    
    "42"       "42: Chemistry, except Biochemistry"                                                                
    "43"       "43: Geosciences, Atmospheric, and Ocean Sciences"                                                  
    "44"       "44: Physics"                                                                                       
    "51"       "51: Psychology"                                                                                    
    "61"       "61: Economics"                                                                                     
    "62"       "62: Political Science and Government"                                                              
    "63"       "63: Sociology, Demography, and Population Studies"                                                 
    "64"       "64: Other Social Sciences"                                                                         
    "71"       "71: Aerospace, Aeronautical, and Astronautical Engineering"                                        
    "72"       "72: Chemical Engineering"                                                                          
    "73"       "73: Civil Engineering"                                                                             
    "74"       "74: Electrical and Computer Engineering"                                                           
    "75"       "75: Mechanical Engineering"                                                                        
    "76"       "76: Metallurgical and Materials Engineering"                                                       
    "77"       "77: Other Engineering"                                                                             
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
    "Y"        "Y: Yes (Marked ''Yes'' to ''Illness'', ''Retired'' or ''Other'')"                                  
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
    "0"        "0: No Second Reason"                                                                               
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
   /RACETHMP  
    "1"        "1: Asian ONLY, non-Hispanic"                                                                       
    "3"        "3: Black ONLY, non-Hispanic"                                                                       
    "4"        "4: Hispanic, any race"                                                                             
    "5"        "5: White ONLY, non-Hispanic"                                                                       
    "7"        "7: Other races including multiracial individuals, non-Hispanic"                                    
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
    1970                  "1970: 1970 to 1974"                                                                                
    1975                  "1975: 1975 to 1979"                                                                                
    1980                  "1980: 1980 to 1984"                                                                                
    1985                  "1985: 1985 to 1989"                                                                                
    1990                  "1990: 1990 to 1994"                                                                                
    1995                  "1995: 1995 to 1999"                                                                                
    2000                  "2000: 2000 to 2004"                                                                                
    2005                  "2005: 2005 to 2009"                                                                                
    2010                  "2010: 2010 to 2014"                                                                                
    2015                  "2015: 2015 or later"                                                                               
   /SDRRGNP   
    "01"       "01: West"                                                                                          
    "02"       "02: Midwest"                                                                                       
    "03"       "03: Northeast"                                                                                     
    "04"       "04: South"                                                                                         
   /SEHTOD    
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
    "5"        "5: Telephone interview using web instrument"                                                       
    "6"        "6: Telephone interview using paper questionnaire"                                                  
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
    "6"        "6: No Secondary Activity"                                                                          
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
    "7"        "7: Other reason for training"                                                                      
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
SAVE OUTFILE = 'epsd19.SAV' /COMPRESSED .
