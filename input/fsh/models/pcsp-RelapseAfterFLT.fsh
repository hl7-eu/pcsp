// -------------------------------------------------------------------------------				
//  Logical Model				pcsp-RelapseAfterFLT.fsh
// -------------------------------------------------------------------------------				
Logical: RelapseAfterFLT				
Id: RelapseAfterFLT				
Title: "Progression-Relapse after FLT"				
Description:  """Progression-Relapse after FLT
Maturity Level: 2 - Ready for Review"""				
* identifier 0..1 Identifier "Progression-relapse after FLT number" """Progressive number of progression/relapse (1=first; 2= second; 3 = third; ?) after the end of treatment.
In this field must be reported the ordinal number of the progression/relapse after the end of treatment."""				
* relatedDiagnosis 0..1 Identifier "Progressive number of diagnosis" """Progressive number of diagnosis (1=first; 2= second; 3 = third; ?).  
In this field must be reported the ordinal number of the tumor diagnosis in which progression/relapse ocuured during front line treatment."""				
* date 0..1 date "date of relapse" """Report here the date (dd/mm/yyyy ) of the relapse/progression. If the date is unkown or partially missed insert the year at the best of your knowledge."""				
* relapseOrProgression 0..1 CodeableConcept "relapse | progression" """Report here if a relapse or progression occurred after the elective end of therapies.
Please note that 'progressions' may occurr since in some cases (e.g. stage 3 unoperable residual neuroblastoma or residual CNS tumor) that were considered as 'non active' may progress
1 => Relapse
2 => Progression
-9922= > NK"""				
* type 0..1 CodeableConcept "local | distant | combined" """Please define if the relapse/progression was local, distant or combined.
"""				
* site 0..1 string "If distant, site of metastases" """Please define if the relapse/progression was local, distant or combined.
"""				
//--- END				
//--- END				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
// -------------------------------------------------------------------------------				
//  Map to FHIR R4				
// -------------------------------------------------------------------------------				
Mapping: RelAfterFLT2Fhir				
Id: fhir				
Title: "RelapseAfterFLT model to PCSP HL7 FHIR R4 Profiles"				
Source: RelapseAfterFLT				
Target: "hl7.org/fhir/r4"				
				
* . -> "Condition.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Condition-primaryCancer-eu-pcsp').where( (extension('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/condition-previousStatus').valueCode = #replaspe or #recurrence) and  ( onsetDateTime >= Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-flt-eu-pcsp').performedPeriod.end) )"				
* identifier -> ".identifier"				
* relatedDiagnosis -> ".extension('http://hl7.org/fhir/StructureDefinition/condition-occurredFollowing')"				
* date -> ".extension('http://hl7.org/fhir/StructureDefinition/condition-assertedDate')"				
* relapseOrProgression -> ".extension('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/condition-previousStatus').valueCodeableConcept OR Condition.where( clinicalStatus = #relapse or clinicalStatus = #recurrence).clinicalStatus"				
* type -> ".extension('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/condition-relapseType').valueCodeableConcept"				
* site -> ".bodySite"				
*  -> ""				
// --END				
// --END				
// --END				
// --END				
