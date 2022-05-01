
CALL :buildFshFiles input\fsh\models\treatmentSum
REM CALL :buildFshFiles input\fsh\models\minimalTS
CALL :buildFshFiles input\fsh\models\subject
CALL :buildFshFiles input\fsh\models\radio
CALL :buildFshFiles input\fsh\models\chemo
CALL :buildFshFiles input\fsh\models\diag
CALL :buildFshFiles input\fsh\models\surg
CALL :buildFshFiles input\fsh\models\sct
CALL :buildFshFiles input\fsh\models\flt
CALL :buildFshFiles input\fsh\models\relapseFlt
CALL :buildFshFiles input\fsh\models\other


REM CALL :buildFshFiles input\fsh\models\minChemio
REM CALL :addItems

for /R input\fsh\models %%f in (*.fsh) do (
	echo %%f
 CALL :processFshFile %%f  
)

 REM  =====================

 REM fart -C input\fsh\immunization.fsh  "* differential.element[8].type.code = #http://iso.org/fhir/ts-5384/StructureDefinition/Subject" "* differential.element[8].type[0].code = #http://iso.org/fhir/ts-5384/StructureDefinition/Subject \n* differential.element[8].type[1].code = #http://iso.org/fhir/ts-5384/StructureDefinition/Subject-uc1"
 
 REM fart -C input\fsh\immunization.fsh   "* differential.element[28].type.code = #http://iso.org/fhir/ts-5384/StructureDefinition/Forecast" "* differential.element[28].type[0].code = #http://iso.org/fhir/ts-5384/StructureDefinition/Forecast \n* differential.element[28].type[1].code = #http://iso.org/fhir/ts-5384/StructureDefinition/Forecast-uc1"
 
 REM fart -C input\fsh\immunization.fsh "* differential.element[9].type.code = #http://iso.org/fhir/ts-5384/StructureDefinition/Product" "* differential.element[9].type[0].code = #http://iso.org/fhir/ts-5384/StructureDefinition/Product \n* differential.element[9].type[1].code = #http://iso.org/fhir/ts-5384/StructureDefinition/Product-uc1"

 

GOTO :EOF


::--------------------------------------------------------
::-- Function section starts below here
::--------------------------------------------------------

:addItems

 REM fart -C input\fsh\immunization.fsh  "* differential.element[8].type.code = #http://iso.org/fhir/ts-5384/StructureDefinition/Subject" "* differential.element[8].type[0].code = #http://iso.org/fhir/ts-5384/StructureDefinition/Subject \n* differential.element[8].type[1].code = #http://iso.org/fhir/ts-5384/StructureDefinition/Subject-uc1"
 
 fart -C input\fsh\immunization.fsh  "* * differential.element[22].type.code = #integer" "* differential.element[22].type[0].code = #integer \n* differential.element[22].type[0].code = #string"
 
 fart -C input\fsh\immunization.fsh  "* * differential.element[23].type.code = #integer" "* differential.element[22].type[0].code = #integer \n* differential.element[22].type[0].code = #string"

GOTO :EOF

:buildFshFiles
 

  type %~1"-model.txt" > %~1".fsh"

   if exist %~1"-map.txt"  (
   echo //  >> %~1".fsh"
		echo // === MAPPING === >> %~1".fsh"
		echo // >> %~1".fsh"
		type %~1"-map.txt" >> %~1".fsh"
		echo // >> %~1".fsh"
   )

  if exist %~1"-inv.txt" (
    echo // >> %~1".fsh"
	 echo // === INVARIANTS === >> %~1".fsh"
	echo //  >> %~1".fsh"
	type %~1"-inv.txt" >> %~1".fsh"
  ) 

 
 GOTO :EOF

:processFshFile

 fart %~1  \"Description: Description:
  fart %~1  \"Title: Title:
 fart %~1  \"\"\" \"
 fart %~1  \"\" \"
 fart %~1  "\"* " "* "
 
 GOTO :EOF


