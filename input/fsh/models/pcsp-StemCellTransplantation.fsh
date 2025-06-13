// -------------------------------------------------------------------------------				
//  Logical Model				pcsp-StemCellTransplantation.fsh
// -------------------------------------------------------------------------------				
Logical: StemCellTransplantation				
Id: StemCellTransplantation				
Title: "Stem Cell Transplantation"				
Description:  """Stem Cell Transplantation."""				
* identifier 1..* Identifier "SCT Identifier" """Progressive SCT number"""				
* relatedDiagnosis 1..* Identifier "Progressive number of diagnosis" """Progressive number of diagnosis"""				
* relatedRelapse 1..* Identifier "Progressive number of relapse/progression (after FLT)" """Progressive number of relapse/progression (after FLT)"""				
* istitutionOfTreatment 0..1 BackboneElement "Institution of treatment" """Please Identify the institution were the procedure was performed"""				
* istitutionOfTreatment.description 0..1 string "Institution description" """Institution description"""				
* istitutionOfTreatment.name 0..1 string "Institution name" """Institution name"""				
* istitutionOfTreatment.address 0..1 BackboneElement "Institution address" """Institution address"""				
* istitutionOfTreatment.address.name 0..1 string "Institution city" """Institution city"""				
* istitutionOfTreatment.address.country 0..1 string "Institution country" """Institution country"""				
* date 0..* dateTime "Date of transplant" """Date of the reinfusion of hematopoietic stem cells. If the date is unkown or partially missed insert the year at the best of your knowledge."""				
* transplantType 0..1 CodeableConcept "Type of transplant" """Indicate if the transplant was autologous or allogeneic.
1 = Autologous
2 = Allogeneic
-9922 = NK"""				
* donorType 0..1 CodeableConcept "Type of donor" """Define the type of donor 
in case of allogenic transplant,
1 = matched related
2 = matched unrelated
3 = mismatch related
4 = mismatch unrelated
5 = haplo-identical
-9922 = NK

1 = matched related ? sibling
2 = matched related ? parent
3 = matched related ? other (e.g. cousin)
-9922 = NK"""				
* cellSource 0..1 CodeableConcept "Source of cells" """Indicate the source of cells
1 = PBSC 
2 = Bone marrow
3 = Cord
-9922 = NK"""				
* conditioningRegimen 0..1 string "Conditioning regimen: drugs used" """Please list the drugs (name) and radiotherapy used or the conditioning regimen.  These drugs contribute to the calculation of cumulative doses received by the patient reported in the chemotherapy section.  Here it is requested only the names of the drugs and if possible the dosage used (only for possible information in the future).
No calculations are made on these data."""				
* gvhd 0..1 BackboneElement "Graft Versus Host Disease" """Graft Versus Host Disease"""				
* gvhd.prophylaxis 0..1 CodeableConcept "GVHD prophylaxis" """State if any GVHD prophylaxis was given. Details on the drug names used for GVHD prophylaxis should be listed in the chemotherapy section under 'immunotherapy').
1 => Yes
2 => No
-9922 => NK   """				
* gvhd.acute 0..1 BackboneElement "GVHD Acute" """GVHD Acute """				
* gvhd.acute.status 1..1 CodeableConcept "GVHD Acutestatus" """Please State if acute GVHD occurred
1 => Yes
2 => No
-9922 => NK """				
* gvhd.acute.grade 1..1 CodeableConcept "Grade" """If yes, state the maximum grade of acute GVHD.

1 => 1
2 => 2
3 => 3
4 => 4
-9922 => NK """				
* gvhd.acute.startDate 0..1 date "Start date" """Define the starting date of GVHD. If the date is unkown or partially missed insert the year at the best of your knowledge."""				
* gvhd.acute.endDate 0..1 date "End date" """Define the ending date of GVHD. If the date is unkown or partially missed insert the year at the best of your knowledge."""				
* gvhd.chronic 0..1 BackboneElement "GVHD Chronic" """GVHD Chronic """				
* gvhd.chronic.status 1..1 CodeableConcept "GVHD Chronicstatus" """Please State if chronic GVHD occurred
1 => Yes
2 => No
-9922 => NK """				
* gvhd.chronic.grade 1..1 CodeableConcept "Grade" """ If yes, state the maximum grade of chronic GVHD
1 => Limited
2 => Extensive
-9922 => NK"""				
* gvhd.chronic.startDate 0..1 date "Start date" """Please Define the starting date of GVHD. If the date is unkown or partially missed insert the year at the best of your knowledge."""				
* gvhd.chronic.endDate 0..1 date "End date" """Please Define the ending date of GVHD. If the date is unkown or partially missed insert the year at the best of your knowledge."""				
* gvhd.organAffected 0..* string "Organs affected" """Please List organs affected by GVHD"""				
* bloodBeforeTransplant 0..1 BackboneElement "Blood before transplant" """Blood before transplant """				
* bloodBeforeTransplant.type 1..1 CodeableConcept "Blood type" """Blood type before transplant 
1 => A
2 => B
3 => AB
4 => O 
-9922 => NK"""				
* bloodBeforeTransplant.rh 1..1 CodeableConcept "Rh" """Rh factor before transplant
1 => +
2 => -
-9922 => NK """				
* bloodAfterTransplant 0..1 BackboneElement "Blood after transplant" """Blood after transplant """				
* bloodAfterTransplant.type 1..1 CodeableConcept "Blood type" """Blood type after transplant 
1 => A
2 => B
3 => AB
4 => O 
-9922 => NK"""				
* bloodAfterTransplant.rh 1..1 CodeableConcept "Rh" """Rh factor after transplant
1 => +
2 => -
-9922 => NK """				
* endOfTreatment 0..1 date "Date of end of immunosuppressive treatmentafter HSCT" """Date of end of immunosuppressive treatment. If the date is unkown or partially missed insert the year at the best of your knowledge."""				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
// -------------------------------------------------------------------------------				
//  Map to FHIR R4				
// -------------------------------------------------------------------------------				
Mapping: Sct2Fhir				
Id: fhir				
Title: "StemCellTransplantation model to PCSP HL7 FHIR R4 Profiles"				
Source: StemCellTransplantation				
Target: "hl7.org/fhir/r4"				
				
* . -> "Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-sct-eu-pcsp')"				
* identifier -> ".identifier"				
* relatedDiagnosis -> ".reasonReference"				
* relatedRelapse -> ".reasonReference"				
* istitutionOfTreatment -> "location.resolve().conformsTo(http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Location-eu-pcsp)"				
* istitutionOfTreatment.description -> "Location.description"				
* istitutionOfTreatment.name -> "Location.name"				
* istitutionOfTreatment.address -> "Location.address.city"				
// no map				
* istitutionOfTreatment.address.country -> "Location.address.country"				
* date -> ".performedDateTime"				
* transplantType -> ".code"				
* donorType -> "BiologicallyDerivedProduct .conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/BiologicallyDerivedProduct-sct-eu-pcsp').extension('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/sct-donor-type').valueCodeableConcept"				
* cellSource -> "BiologicallyDerivedProduct .conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/BiologicallyDerivedProduct-sct-eu-pcsp').extension('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/sct-source-type').valueCodeableConcept"				
* conditioningRegimen -> "Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-sct-prophylaxis-eu-pcsp').where(reasonReference.resolve().conformTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-sct-eu-pcsp') ).text"				
* gvhd -> "Condition.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Condition-gvdh-eu-pcsp')"				
* gvhd.prophylaxis -> "Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-sct-prophylaxis-eu-pcsp').where(code = $sct#868254008 'GVHD (graft versus host disease) prophylaxis').exists()"				
* gvhd.acute -> ".where(code = http://snomed.info/sct#402355000 'Acute graft-versus-host disease')"				
* gvhd.acute.status -> ".where(code = http://snomed.info/sct#402355000 'Acute graft-versus-host disease').exists()"				
* gvhd.acute.grade -> ".stage.summary"				
* gvhd.acute.startDate -> ".onsetDateTime"				
* gvhd.acute.endDate -> ".abatementDateTime"				
* gvhd.chronic -> ".where(code = http://snomed.info/sct#402356004 'Chronic graft-versus-host disease')"				
* gvhd.chronic.status -> ".where(code = http://snomed.info/sct#402356004 'Chronic graft-versus-host disease').exists()"				
* gvhd.chronic.grade -> ".stage.summary"				
* gvhd.chronic.startDate -> ".onsetDateTime"				
* gvhd.chronic.endDate -> ".abatementDateTime"				
* gvhd.organAffected -> ".bodySite"				
* bloodBeforeTransplant -> "Observation.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Observation-bld-abo-rh-eu-pcsp').where(effectiveTiming.code = #before-procedure)"				
* bloodBeforeTransplant.type -> "component.where(code = $loinc#883-9	'ABO group [Type] in Blood').value"				
* bloodBeforeTransplant.rh -> "component.where(code = $loinc#10331-7 'Rh [Type] in Blood').value"				
* bloodAfterTransplant -> "Observation.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Observation-bld-abo-rh-eu-pcsp').where(effectiveTiming.code = #after-procedure)"				
* bloodAfterTransplant.type -> "component.where(code = $loinc#883-9	'ABO group [Type] in Blood').value"				
* bloodAfterTransplant.rh -> "component.where(code = $loinc#10331-7 'Rh [Type] in Blood').value"				
* endOfTreatment -> "Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-sct-prophylaxis-eu-pcsp').where(category = $sct#416608005 'Drug therapy' ).performedPeriod.end"				
// --END				
// --END				
// --END				
