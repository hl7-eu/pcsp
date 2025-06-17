// -------------------------------------------------------------------------------				
//  Logical Model				pcsp-RelapseDuringFLT.fsh
// -------------------------------------------------------------------------------				
Logical: RelapseDuringFLT				
Id: RelapseDuringFLT				
Title: "Progression-Relapse during FLT"				
Description:  """Progression-Relapse during FLT"""				
* identifier 0..1 Identifier "Progression-Relapse during FLT identifier" """Progression-Relapse during FLT identifier"""				
* relatedDiagnosis 0..1 Identifier "Related diagnosis identifier" """Related diagnosis identifier"""				
* date 0..1 dateTime "Date" """Report the date of the event in DD/MM/YYYY format. If the date is unkown or partially missed insert the year at the best of your knowledge."""				
* type 0..1 CodeableConcept "relapse | progression" """The type of event should be reported
1 => Relapse
2 => Progression 
-9922= NK"""				
* qualifier 0..1 CodeableConcept "local | distant | combined" """Please state if the relapse or progression was local, distant,  combined or unk"""				
* site 0..1 string "If distant, site of metastases" """If distant or comobined, specify site  (text)"""				
//--- END				
//--- END				
//--- END				
				
				
				
// -------------------------------------------------------------------------------				
//  Map to FHIR R4				
// -------------------------------------------------------------------------------				
Mapping: RelapseDuringFLT2Fhir				
Id: fhir				
Title: "RelapseDuringFLT model to PCSP HL7 FHIR R4 Profiles"				
Source: RelapseDuringFLT				
Target: "hl7.org/fhir/r4"				
				
* . -> "Condition.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Condition-primaryCancer-eu-pcsp').where( (extension('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/condition-previousStatus').valueCode = #replaspe or #recurrence) and  ( onsetDateTime < Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-flt-eu-pcsp').performedPeriod.end) )"				
* identifier -> ".identifier"				
* relatedDiagnosis -> ".extension('http://hl7.org/fhir/StructureDefinition/condition-occurredFollowing')"				
* date -> ".extension('http://hl7.org/fhir/StructureDefinition/condition-assertedDate')"				
* type -> ".extension('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/condition-previousStatus').where(Condition.clinicalStatus << #inactive).valueCodeableConcept OR Condition.where( clinicalStatus = #relapse OR clinicalStatus = #recurrence).clinicalStatus"				
* qualifier -> ".extension('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/condition-previousStatus').where(Condition.clinicalStatus = #inactive or #relapse or #recurrence).valueCodeableConcept OR Condition.where( clinicalStatus = #relapse OR clinicalStatus = #recurrence).clinicalStatus"				
* site -> "Condition.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Condition-secondaryCancer-eu-pcsp').bodySite"				
// --END				
// --END				
// --END				
