// -------------------------------------------------------------------------------				
//  Logical Model				pcsp-OtherInfos.fsh
// -------------------------------------------------------------------------------				
Logical: OtherInfos				
Id: OtherInfos				
Title: "Other info and relevant events"				
Description:  """Other info and relevant events
Maturity Level: 2 - Ready for Review"""				
* identifier 0..1 Identifier "Relevant event number" """Progressive number of relevant event  (1=first; 2= second; 3 = third; ?).
In this field must be reported the ordinal number of relevant event to be described."""				
* relatedDiagnosis 0..1 Identifier "Progressive number of diagnosis" """Progressive number of diagnosis (1=first; 2= second; 3 = third; ?).  
In this field must be reported the ordinal number of the tumor diagnosis in which other info or relevant events occurred"""				
* relatedRelapse 0..1 Identifier "Progressive number of relapse/progression (after FLT)" """Progressive number of relevant event  (1=first; 2= second; 3 = third; ?).
In this field must be reported the ordinal number of relevant event to be described."""				
* severeToxicity 0..10 BackboneElement "Important toxicity during treatment" """Important toxicity during treatment ÿ"""				
* severeToxicity.flag 0..* CodeableConcept "Important toxicity during treatment" """Answwer 'YES' OR 'NO' if non haematologic severe or life threatening (CTCAE grade 3 or 4) toxicity occurred during treatment.  Please note that febrile neutropenia events are not considered as 'severe' unless infection had severly affected important organs (e.g osteomyelitis, pneumonia) 
1 => Yes
2 => No
-9922 => NK """				
* severeToxicity.numberOfToxicity 0..1 integer "Number of toxicity" """Number of toxicity"""				
* severeToxicity.date 1..1 dateTime "Date of event" """Date (dd/mm/yyyy) of the event. If the date is unkown or partially missed insert the year at the best of your knowledge."""				
* severeToxicity.description 1..1 string "Description" """Please describe any significant event (e.g. admission to the intensive care for a metabolic problem, seizures, severe toxic complication) occurring during therapy that might have fully recovered or be still remaining or with sequelae"""				
* severeToxicity.isResolved 0..1 CodeableConcept "Resolved ?" """Please specify if the event is resolved or not"""				
* hypogonadal 0..1 CodeableConcept "Hypogonadal ?" """Please specify if hypogonadal occured during therapy"""				
* growthHormoneDeficiency 0..1 CodeableConcept "Growth hormone deficiency ?" """Please specify if growth hormon deficiency occured during therapy"""				
* hydrocephalus 0..1 CodeableConcept "Hydrocephalus ?" """Please specify if hydrocephalus occured during therapy"""				
* chronicViralHepatitis 0..1 CodeableConcept "Chronic viral hepatitis ?" """Please specify if chronic viral hepatitis occured during therapy"""				
* sinusoidalObstructionSyndrome 0..1 CodeableConcept "Sinusoidal obstruction syndrome ?" """Please specify if sinusoidal obstruction syndrome occured during therapy"""				
* catheter 0..1 BackboneElement "CVC positioning" """Please report if at least one central venous line (catheter) was positioned"""				
* catheter.isInPlace 0..1 CodeableConcept "If yes" """Report if the CVC is still in place or was removed"""				
* catheter.site 0..1 string "Specify the site" """Report where (in which vein) the CVC was positioned"""				
* catheter.relatedThrombosis 0..1 BackboneElement "Catheter-related thrombosis" """Catheter-related thrombosis"""				
* catheter.relatedThrombosis.occurred 0..1 CodeableConcept "Yes/No/UNK" """Report if there was a catheter-related thrombosis due to a central venous catheter."""				
* catheter.relatedThrombosis.specification 0..1 string "Catheter-related thrombosis specification" """Specify the details of the catheter-related thrombosis, including the location (vessel and laterality), treatment and status at the end of cancer treatment."""				
* transfusion 0..1 BackboneElement "Transfusion" """Transfusion ÿ"""				
* transfusion.occured 0..1 CodeableConcept "Yes/No/UNK" """Please state if at least one blood (any component) transfusion was made"""				
* transfusion.last 0..1 string "Last transfusion date" """Please  report the date of the last transfusion given. If the date is unkown or partially missed insert the year at the best of your knowledge."""				
* transfusion.moreThan10 0..1 CodeableConcept ">= 10 Transfusions ?" """Please specify if patient recieved 10 or more than 10 trasfusions during therapy"""				
* fertilityPreservation 0..1 BackboneElement "Fertility preservation" """Please state if any procedure was performed for fertility preservation"""				
* fertilityPreservation.description 0..1 CodeableConcept "Description" """If fertility preservation was performed,please  describe it"""				
* fertilityPreservation.storage 0..1 string "Storage Institution" """If fertility preservation was performed, describe with details of the institution where either sperm or ovarian tissue/oocytes have been stored"""				
* otherTreatment 0..1 string "Other oncological treatments" """Report here if any other treatment (not included in the chemotherapy, surgery or radiotherapy sections) was adminstered to the survivor"""				
* dischargeLetter 0..1 Attachment "Discharge letter" """Discharge letter"""				
				
				
// -------------------------------------------------------------------------------				
//  Map to FHIR R4				
// -------------------------------------------------------------------------------				
Mapping: OtherInfo2Fhir				
Id: fhir				
Title: "OtherInfos model to PCSP HL7 FHIR R4 Profiles"				
Source: OtherInfos				
Target: "hl7.org/fhir/r4"				
				
* . -> "Procedure"				
* . -> "Condition"				
* identifier -> ".identifier"				
* relatedDiagnosis -> "Procedure.reasonReference"				
* relatedRelapse -> "Procedure.reasonReference"				
* relatedRelapse -> "extension('http://hl7.org/fhir/StructureDefinition/condition-related').valueReference"				
* severeToxicity -> "Condition.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Condition-toxicity-eu-pcsp')"				
* severeToxicity.flag -> ".exists()"				
* severeToxicity.flag -> ".verificationStatus"				
* severeToxicity.numberOfToxicity -> ".identifier"				
* severeToxicity.date -> ".onsetDateTime"				
* severeToxicity.description -> ".text"				
* severeToxicity.description -> ".note"				
* severeToxicity.isResolved -> ".clinicalStatus"				
* hypogonadal -> "Condition.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Condition-otherinfos-eu-pcsp').where(code = http://snomed.info/sct#48130008 'Hypogonadism').exists()"				
* growthHormoneDeficiency -> "Condition.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Condition-otherinfos-eu-pcsp').where(code = http://snomed.info/sct#397827003 'Growth hormone deficiency').exists()"				
* hydrocephalus -> "Condition.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Condition-otherinfos-eu-pcsp').where(code = http://snomed.info/sct#230745008 'Hydrocephalus').exists()"				
* chronicViralHepatitis -> "Condition.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Condition-otherinfos-eu-pcsp').where(code = http://snomed.info/sct#10295004 'Chronic viral hepatitis').exists()"				
* sinusoidalObstructionSyndrome -> "Condition.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Condition-otherinfos-eu-pcsp').where(code = http://snomed.info/sct#65617004 'Veno-occlusive disease of the liver').exists()"				
* catheter -> "Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-cvc-otherinfos-eu-pcsp')"				
* catheter.isInPlace -> ".focalDevice.action"				
* catheter.site -> ".bodySite"				
* catheter.relatedThrombosis -> "Condition.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Condition-otherinfos-eu-pcsp').where(code = http://snomed.info/sct#439127006 'Thrombosis')"				
* catheter.relatedThrombosis.occurred -> ".exists()"				
* catheter.relatedThrombosis.specification -> ".text"				
* transfusion -> "Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-transfusion-otherinfos-eu-pcsp')"				
* transfusion.occured -> ".exists()"				
* transfusion.last -> "extension('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/procedure-performedTiming').valueTiming.event.value.aggregate(iif($total.empty(), $this, iif($this > $total, $this, $total)))"				
* transfusion.last -> "performedDateTime"				
* transfusion.moreThan10 -> "iif(.extension(''http://hl7.eu/fhir/ig/pcsp/StructureDefinition/procedure-performedTiming').valueTiming.repeat.count > 9; true)"				
* transfusion.moreThan10 -> "iif(.extension(''http://hl7.eu/fhir/ig/pcsp/StructureDefinition/procedure-performedTiming').valueTiming.repeat..boundsRange.low > 9; true)"				
* fertilityPreservation -> "Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-cryopreservation-otherinfos-eu-pcsp')"				
* fertilityPreservation.description -> ".text"				
