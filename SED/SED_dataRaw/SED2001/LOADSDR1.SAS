****************************************************************************
*                                                                           
* PROGRAM: LOADSDR1.SAS                                                     
* PURPOSE: SAS load 2001 SDR Public Use Extract ASCII file                
*                                                                           
* INPUT:   SDR01.DAT                                                        
*                                                                           
* NOTES:   1) You need to add the path and file name within the INFILE      
*             statement to reflect the 2001 SDR Public Use File           
*             ASCII file location.                                          
*          2) You need to add your dataset name to the DATA statement.      
*                                                                           
****************************************************************************
* GENERATE FORMAT DEFINITIONS                                               
****************************************************************************
*;
%INCLUDE 'FMTSDR01.FMT'; 
****************************************************************************
* SAS LOAD ASCII FILE                                                       
****************************************************************************
*;
DATA '[Your dataset name]';
   INFILE '[location and file name]' RECFM=V LRECL=9999 MISSOVER;
   INPUT @001
         ACTCAP         $CHAR1.                  
         ACTDED         $CHAR1.                  
         ACTMGT         $CHAR1.                  
         ACTRD          $CHAR1.                  
         ACTRDT         $CHAR1.                  
         ACTRES         $CHAR1.                  
         ACTTCH         $CHAR1.                  
         ADQCOMM        $CHAR1.                  
         ADQCOMP        $CHAR1.                  
         ADQCONT        $CHAR1.                  
         ADQETHIC       $CHAR1.                  
         ADQGP          $CHAR1.                  
         ADQKNOW        $CHAR1.                  
         ADQMNG         $CHAR1.                  
         ADQNONE        $CHAR1.                  
         ADQPRI         $CHAR2.                  
         ADQQUA         $CHAR1.                  
         ADQSEC         $CHAR2.                  
         ADQTEACH       $CHAR1.                  
         ADQTEAM        $CHAR1.                  
         ADQWRITE       $CHAR1.                  
         AGEP           3.0                      
         BAAYR5P        5.0                      
         BAMEDP         $CHAR6.                  
         BAMEMG         $CHAR1.                  
         BTHUS          $CHAR2.                  
         CCAFDG         $CHAR1.                  
         CCEP           $CHAR1.                  
         CH1217IN       $CHAR1.                  
         CH18IN         $CHAR1.                  
         CH25IN         $CHAR1.                  
         CH611IN        $CHAR1.                  
         CH6IN          $CHAR1.                  
         CHTOTPB        $CHAR1.                  
         CHU2IN         $CHAR1.                  
         CHUN12         $CHAR1.                  
         CTZUSIN        $CHAR1.                  
         DGRDG          $CHAR1.                  
         DGRMEDP        $CHAR6.                  
         DGRMEMG        $CHAR1.                  
         EMBUS          $CHAR2.                  
         EMSECPB        $CHAR1.                  
         EMSIZE         $CHAR1.                  
         EMSMI          $CHAR1.                  
         FACTEN         $CHAR1.                  
         FPTIND         $CHAR1.                  
         FSAGR          $CHAR1.                  
         FSDED          $CHAR1.                  
         FSDK           $CHAR1.                  
         FSDOD          $CHAR1.                  
         FSDOE          $CHAR1.                  
         FSDOT          $CHAR1.                  
         FSEPA          $CHAR1.                  
         FSHHS          $CHAR1.                  
         FSNASA         $CHAR1.                  
         FSNIH          $CHAR1.                  
         FSNSF          $CHAR1.                  
         FSOT           $CHAR1.                  
         FTPRET         $CHAR1.                  
         GENDER         $CHAR1.                  
         GOVSUP         $CHAR1.                  
         HDAY5P         5.0                      
         HRSWKP         3.0                      
         LFSTAT         $CHAR1.                  
         LOOKWK         $CHAR1.                  
         MGRNAT         $CHAR1.                  
         MGROTH         $CHAR1.                  
         MGRSOC         $CHAR1.                  
         MINRTY         $CHAR1.                  
         MR5YRP         5.0                      
         MRDG           $CHAR1.                  
         MRMEDP         $CHAR6.                  
         MRMEMG         $CHAR1.                  
         NEWBUS         $CHAR1.                  
         NRCHG          $CHAR1.                  
         NRCON          $CHAR1.                  
         NRFAM          $CHAR1.                  
         NRLOC          $CHAR1.                  
         NROCNA         $CHAR1.                  
         NROT           $CHAR1.                  
         NRPAY          $CHAR1.                  
         NRREA          $CHAR1.                  
         NRSEC          $CHAR1.                  
         NWFAM          $CHAR1.                  
         NWILL          $CHAR1.                  
         NWLAY          $CHAR1.                  
         NWNOND         $CHAR1.                  
         NWOCNA         $CHAR1.                  
         NWOT           $CHAR1.                  
         NWRET          $CHAR1.                  
         NWSTU          $CHAR1.                  
         OCEDRLP        $CHAR1.                  
         OCMLST         $CHAR1.                  
         OCPRMG         $CHAR1.                  
         OCPRPB         $CHAR6.                  
         OCSEDRL        $CHAR1.                  
         OCSI           $CHAR1.                  
         OCSMG          $CHAR1.                  
         PATHDC         $CHAR1.                  
         PATHEP         $CHAR1.                  
         PATHFA         $CHAR1.                  
         PATHIC         $CHAR1.                  
         PATHMOS        4.0                      
         PATHNA         $CHAR1.                  
         PATHNP         $CHAR1.                  
         PATHOT         $CHAR1.                  
         PATHPJ         $CHAR1.                  
         PATHPM         $CHAR1.                  
         PATHPO         $CHAR1.                  
         PATHPR         $CHAR1.                  
         PATHPRI        $CHAR2.                  
         PATHSEC        $CHAR2.                  
         PFMAEDGR       $CHAR1.                  
         PHDDEBT        $CHAR1.                  
         PHDFAM         $CHAR1.                  
         PHDMOVE        $CHAR1.                  
         PHDNA          $CHAR1.                  
         PHDPAJB        $CHAR1.                  
         PHDPTHO        $CHAR1.                  
         PHDRCNT        $CHAR1.                  
         PHDSATIS       $CHAR1.                  
         PHDSP          $CHAR1.                  
         PRMBRPB        3.0                      
         PROMTGI        $CHAR1.                  
         PTFAM          $CHAR1.                  
         PTILL          $CHAR1.                  
         PTNOND         $CHAR1.                  
         PTOCNA         $CHAR1.                  
         PTOT           $CHAR1.                  
         PTRET          $CHAR1.                  
         PTSTU          $CHAR1.                  
         PTWTFT         $CHAR1.                  
         RACETHP        $CHAR1.                  
         REFID          $CHAR9.                  
         REFYR          5.0                      
         SALARP         7.0                      
         SUPWK          $CHAR1.                  
         SURID          $CHAR1.                  
         TCADV          $CHAR1.                  
         TCCAR          $CHAR1.                  
         TCCHG          $CHAR1.                  
         TCDGCMP        $CHAR1.                  
         TCEM           $CHAR1.                  
         TCGRD          $CHAR1.                  
         TCINT          $CHAR1.                  
         TCLIC          $CHAR1.                  
         TCOT           $CHAR1.                  
         TCSKL          $CHAR1.                  
         WAACC          $CHAR1.                  
         WAAPRSH        $CHAR1.                  
         WABRSH         $CHAR1.                  
         WACOM          $CHAR1.                  
         WADEV          $CHAR1.                  
         WADSN          $CHAR1.                  
         WAEMRL         $CHAR1.                  
         WAMGMT         $CHAR1.                  
         WAOT           $CHAR1.                  
         WAPRI          $CHAR2.                  
         WAPROD         $CHAR1.                  
         WAPRSM         $CHAR1.                  
         WAQM           $CHAR1.                  
         WASALE         $CHAR1.                  
         WASCSM         $CHAR1.                  
         WASEC          $CHAR2.                  
         WASVC          $CHAR1.                  
         WATEA          $CHAR1.                  
         WKSWKP         $CHAR1.                  
         WKTRNI         $CHAR1.                  
         WRKG           $CHAR1.                  
         WRKGP          $CHAR1.                  
         WTAPRF         $CHAR1.                  
         WTMGT          $CHAR1.                  
         WTOT           $CHAR1.                  
         WTRADV         $CHAR1.                  
         WTRCHG         $CHAR1.                  
         WTREM          $CHAR1.                  
         WTRLIC         $CHAR1.                  
         WTRNEW         $CHAR1.                  
         WTROT          $CHAR1.                  
         WTRSKL         $CHAR1.                  
         WTRSN          $CHAR1.                  
         WTSURVY        10.4                     
         WTTECH         $CHAR1.                  
   ;
   %INCLUDE 'FMTSDR01.TXT'; 
   %INCLUDE 'LABSDR01.TXT'; 
RUN;
