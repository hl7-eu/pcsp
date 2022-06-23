Instance: OtherInfos
InstanceOf: StructureDefinition
Description: "Other info and relevant events
Maturity Level: 2 - Ready for Review"
Title: "Other info and relevant events"
Usage: #definition
* publisher = "PanCareSurPass project"
* status = #draft
* url = "http://hl7.eu/fhir/ig/pcsp/StructureDefinition/OtherInfos"
* name = "OtherInfos"
* title = "Other info and relevant events"
* status = #draft
* experimental = true
* description = "Other info and relevant events
Maturity Level: 2 - Ready for Review"
* version = "0.0.1"
* mapping[0].identity = "fhir"
* mapping[0].uri = "hl7.org/fhir/r4"
* mapping[0].name = "HL7 FHIR"
* kind = #logical
* abstract = true
* type = "OtherInfos"
* baseDefinition = "http://hl7.org/fhir/StructureDefinition/Element"
* derivation = #specialization
* differential.element[0].id = "OtherInfos"
* differential.element[0].path = "OtherInfos"
* differential.element[0].short = "Other info and relevant events"
* differential.element[0].definition = "Other info and relevant events"
* differential.element[0].min = 1
* differential.element[0].max = "1"
* differential.element[1].id = "OtherInfos.identifier"
* differential.element[1].path = "OtherInfos.identifier"
* differential.element[1].short = "Relevant event number"
* differential.element[1].definition = "Progressive number of relevant event  (1=first; 2= second; 3 = third; ?).
In this field must be reported the ordinal number of relevant event to be described."
* differential.element[1].min = 0
* differential.element[1].max = "1"
* differential.element[1].type.code = #Identifier
* differential.element[2].id = "OtherInfos.relatedDiagnosis"
* differential.element[2].path = "OtherInfos.relatedDiagnosis"
* differential.element[2].short = "Progressive number of diagnosis"
* differential.element[2].definition = "Progressive number of diagnosis (1=first; 2= second; 3 = third; ?).  
In this field must be reported the ordinal number of the tumor diagnosis in which other info or relevant events occurred"
* differential.element[2].min = 0
* differential.element[2].max = "1"
* differential.element[2].type.code = #Identifier
* differential.element[3].id = "OtherInfos.relatedRelapse"
* differential.element[3].path = "OtherInfos.relatedRelapse"
* differential.element[3].short = "Progressive number of relapse/progression (after FLT)"
* differential.element[3].definition = "Progressive number of relevant event  (1=first; 2= second; 3 = third; ?).
In this field must be reported the ordinal number of relevant event to be described."
* differential.element[3].min = 0
* differential.element[3].max = "1"
* differential.element[3].type.code = #Identifier
* differential.element[4].id = "OtherInfos.severeToxicity"
* differential.element[4].path = "OtherInfos.severeToxicity"
* differential.element[4].short = "Important toxicity during treatment"
* differential.element[4].definition = "Important toxicity during treatment ÿ"
* differential.element[4].min = 0
* differential.element[4].max = "10"
* differential.element[4].type.code = #BackboneElement
* differential.element[5].id = "OtherInfos.severeToxicity.flag"
* differential.element[5].path = "OtherInfos.severeToxicity.flag"
* differential.element[5].short = "Important toxicity during treatment"
* differential.element[5].definition = "Answwer 'YES' OR 'NO' if non haematologic severe or life threatening (CTCAE grade 3 or 4) toxicity occurred during treatment.  Please note that febrile neutropenia events are not considered as 'severe' unless infection had severly affected important organs (e.g osteomyelitis, pneumonia) 
1 => Yes
2 => No
-9922 => NK "
* differential.element[5].min = 0
* differential.element[5].max = "*"
* differential.element[5].type.code = #CodeableConcept
* differential.element[6].id = "OtherInfos.severeToxicity.numberOfToxicity"
* differential.element[6].path = "OtherInfos.severeToxicity.numberOfToxicity"
* differential.element[6].short = "Number of toxicity"
* differential.element[6].definition = "Number of toxicity"
* differential.element[6].min = 0
* differential.element[6].max = "1"
* differential.element[6].type.code = #integer
* differential.element[7].id = "OtherInfos.severeToxicity.date"
* differential.element[7].path = "OtherInfos.severeToxicity.date"
* differential.element[7].short = "Date of event"
* differential.element[7].definition = "Date (dd/mm/yyyy) of the event. If the date is unkown or partially missed insert the year at the best of your knowledge."
* differential.element[7].min = 1
* differential.element[7].max = "1"
* differential.element[7].type.code = #dateTime
* differential.element[8].id = "OtherInfos.severeToxicity.description"
* differential.element[8].path = "OtherInfos.severeToxicity.description"
* differential.element[8].short = "Description "
* differential.element[8].definition = "Please describe any significant event (e.g. admission to the intensive care for a metabolic problem, seizures, severe toxic complication) occurring during therapy that might have fully recovered or be still remaining or with sequelae"
* differential.element[8].min = 1
* differential.element[8].max = "1"
* differential.element[8].type.code = #string
* differential.element[9].id = "OtherInfos.severeToxicity.isResolved"
* differential.element[9].path = "OtherInfos.severeToxicity.isResolved"
* differential.element[9].short = "Resolved ?"
* differential.element[9].definition = "Please specify if the event is resolved or not"
* differential.element[9].min = 0
* differential.element[9].max = "1"
* differential.element[9].type.code = #CodeableConcept
* differential.element[10].id = "OtherInfos.hypogonadal"
* differential.element[10].path = "OtherInfos.hypogonadal"
* differential.element[10].short = "Hypogonadal ?"
* differential.element[10].definition = "Please specify if hypogonadal occured during therapy"
* differential.element[10].min = 0
* differential.element[10].max = "1"
* differential.element[10].type.code = #CodeableConcept
* differential.element[11].id = "OtherInfos.growthHormoneDeficiency"
* differential.element[11].path = "OtherInfos.growthHormoneDeficiency"
* differential.element[11].short = "Growth hormone deficiency ?"
* differential.element[11].definition = "Please specify if growth hormon deficiency occured during therapy"
* differential.element[11].min = 0
* differential.element[11].max = "1"
* differential.element[11].type.code = #CodeableConcept
* differential.element[12].id = "OtherInfos.hydrocephalus"
* differential.element[12].path = "OtherInfos.hydrocephalus"
* differential.element[12].short = "Hydrocephalus ?"
* differential.element[12].definition = "Please specify if hydrocephalus occured during therapy"
* differential.element[12].min = 0
* differential.element[12].max = "1"
* differential.element[12].type.code = #CodeableConcept
* differential.element[13].id = "OtherInfos.chronicViralHepatitis"
* differential.element[13].path = "OtherInfos.chronicViralHepatitis"
* differential.element[13].short = "Chronic viral hepatitis ?"
* differential.element[13].definition = "Please specify if chronic viral hepatitis occured during therapy"
* differential.element[13].min = 0
* differential.element[13].max = "1"
* differential.element[13].type.code = #CodeableConcept
* differential.element[14].id = "OtherInfos.sinusoidalObstructionSyndrome"
* differential.element[14].path = "OtherInfos.sinusoidalObstructionSyndrome"
* differential.element[14].short = "Sinusoidal obstruction syndrome ?"
* differential.element[14].definition = "Please specify if sinusoidal obstruction syndrome occured during therapy"
* differential.element[14].min = 0
* differential.element[14].max = "1"
* differential.element[14].type.code = #CodeableConcept
* differential.element[15].id = "OtherInfos.catheter"
* differential.element[15].path = "OtherInfos.catheter"
* differential.element[15].short = "CVC positioning"
* differential.element[15].definition = "Please report if at least one central venous line (catheter) was positioned"
* differential.element[15].min = 0
* differential.element[15].max = "1"
* differential.element[15].type.code = #BackboneElement
* differential.element[16].id = "OtherInfos.catheter.isInPlace"
* differential.element[16].path = "OtherInfos.catheter.isInPlace"
* differential.element[16].short = "If yes"
* differential.element[16].definition = "Report if the CVC is still in place or was removed"
* differential.element[16].min = 0
* differential.element[16].max = "1"
* differential.element[16].type.code = #CodeableConcept
* differential.element[17].id = "OtherInfos.catheter.site"
* differential.element[17].path = "OtherInfos.catheter.site"
* differential.element[17].short = "Specify the site"
* differential.element[17].definition = "Report where (in which vein) the CVC was positioned"
* differential.element[17].min = 0
* differential.element[17].max = "1"
* differential.element[17].type.code = #string
* differential.element[18].id = "OtherInfos.catheter.relatedThrombosis"
* differential.element[18].path = "OtherInfos.catheter.relatedThrombosis"
* differential.element[18].short = "Catheter-related thrombosis"
* differential.element[18].definition = "Catheter-related thrombosis"
* differential.element[18].min = 0
* differential.element[18].max = "1"
* differential.element[18].type.code = #BackboneElement
* differential.element[19].id = "OtherInfos.catheter.relatedThrombosis.occurred"
* differential.element[19].path = "OtherInfos.catheter.relatedThrombosis.occurred"
* differential.element[19].short = "Yes/No/UNK"
* differential.element[19].definition = "Report if there was a catheter-related thrombosis due to a central venous catheter."
* differential.element[19].min = 0
* differential.element[19].max = "1"
* differential.element[19].type.code = #CodeableConcept
* differential.element[20].id = "OtherInfos.catheter.relatedThrombosis.specification"
* differential.element[20].path = "OtherInfos.catheter.relatedThrombosis.specification"
* differential.element[20].short = "Catheter-related thrombosis specification"
* differential.element[20].definition = "Specify the details of the catheter-related thrombosis, including the location (vessel and laterality), treatment and status at the end of cancer treatment."
* differential.element[20].min = 0
* differential.element[20].max = "1"
* differential.element[20].type.code = #string
* differential.element[21].id = "OtherInfos.transfusion"
* differential.element[21].path = "OtherInfos.transfusion"
* differential.element[21].short = "Transfusion"
* differential.element[21].definition = "Transfusion ÿ"
* differential.element[21].min = 0
* differential.element[21].max = "1"
* differential.element[21].type.code = #BackboneElement
* differential.element[22].id = "OtherInfos.transfusion.occured"
* differential.element[22].path = "OtherInfos.transfusion.occured"
* differential.element[22].short = "Yes/No/UNK"
* differential.element[22].definition = "Please state if at least one blood (any component) transfusion was made"
* differential.element[22].min = 0
* differential.element[22].max = "1"
* differential.element[22].type.code = #CodeableConcept
* differential.element[23].id = "OtherInfos.transfusion.last"
* differential.element[23].path = "OtherInfos.transfusion.last"
* differential.element[23].short = "Last transfusion date"
* differential.element[23].definition = "Please  report the date of the last transfusion given. If the date is unkown or partially missed insert the year at the best of your knowledge."
* differential.element[23].min = 0
* differential.element[23].max = "1"
* differential.element[23].type.code = #string
* differential.element[24].id = "OtherInfos.transfusion.moreThan10"
* differential.element[24].path = "OtherInfos.transfusion.moreThan10"
* differential.element[24].short = ">= 10 Transfusions ?"
* differential.element[24].definition = "Please specify if patient recieved 10 or more than 10 trasfusions during therapy"
* differential.element[24].min = 0
* differential.element[24].max = "1"
* differential.element[24].type.code = #CodeableConcept
* differential.element[25].id = "OtherInfos.fertilityPreservation"
* differential.element[25].path = "OtherInfos.fertilityPreservation"
* differential.element[25].short = "Fertility preservation"
* differential.element[25].definition = "Please state if any procedure was performed for fertility preservation"
* differential.element[25].min = 0
* differential.element[25].max = "1"
* differential.element[25].type.code = #BackboneElement
* differential.element[26].id = "OtherInfos.fertilityPreservation.description"
* differential.element[26].path = "OtherInfos.fertilityPreservation.description"
* differential.element[26].short = "Description "
* differential.element[26].definition = "If fertility preservation was performed,please  describe it"
* differential.element[26].min = 0
* differential.element[26].max = "1"
* differential.element[26].type.code = #CodeableConcept
* differential.element[27].id = "OtherInfos.fertilityPreservation.storage"
* differential.element[27].path = "OtherInfos.fertilityPreservation.storage"
* differential.element[27].short = "Storage Institution"
* differential.element[27].definition = "If fertility preservation was performed, describe with details of the institution where either sperm or ovarian tissue/oocytes have been stored"
* differential.element[27].min = 0
* differential.element[27].max = "1"
* differential.element[27].type.code = #string
* differential.element[28].id = "OtherInfos.otherTreatment"
* differential.element[28].path = "OtherInfos.otherTreatment"
* differential.element[28].short = "Other oncological treatments"
* differential.element[28].definition = "Report here if any other treatment (not included in the chemotherapy, surgery or radiotherapy sections) was adminstered to the survivor"
* differential.element[28].min = 0
* differential.element[28].max = "1"
* differential.element[28].type.code = #string
* differential.element[29].id = "OtherInfos.dischargeLetter"
* differential.element[29].path = "OtherInfos.dischargeLetter"
* differential.element[29].short = "Discharge letter"
* differential.element[29].definition = "Discharge letter"
* differential.element[29].min = 0
* differential.element[29].max = "1"
* differential.element[29].type.code = #Attachment
// 
//  
// === MAPPING === 
// 
* differential.element[0].mapping[0].identity = "fhir"
* differential.element[0].mapping[0].map = "Procedure"

* differential.element[0].mapping[1].identity = "fhir"
* differential.element[0].mapping[1].map = "Condition"

* differential.element[1].mapping[0].identity = "fhir"
* differential.element[1].mapping[0].map = ".identifier"

* differential.element[2].mapping[0].identity = "fhir"
* differential.element[2].mapping[0].map = "Procedure.reasonReference"

* differential.element[2].mapping[1].identity = "fhir"
* differential.element[2].mapping[1].map = "extension('http://hl7.org/fhir/StructureDefinition/condition-related').valueReference"

* differential.element[3].mapping[0].identity = "fhir"
* differential.element[3].mapping[0].map = "Procedure.reasonReference"

* differential.element[3].mapping[1].identity = "fhir"
* differential.element[3].mapping[1].map = "extension('http://hl7.org/fhir/StructureDefinition/condition-related').valueReference"

* differential.element[4].mapping[0].identity = "fhir"
* differential.element[4].mapping[0].map = "Condition.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Condition-toxicity-eu-pcsp')"

* differential.element[5].mapping[0].identity = "fhir"
* differential.element[5].mapping[0].map = ".exists()"

* differential.element[5].mapping[1].identity = "fhir"
* differential.element[5].mapping[1].map = ".verificationStatus"

* differential.element[6].mapping[0].identity = "fhir"
* differential.element[6].mapping[0].map = ".identifier"

* differential.element[7].mapping[0].identity = "fhir"
* differential.element[7].mapping[0].map = ".onsetDateTime"

* differential.element[8].mapping[0].identity = "fhir"
* differential.element[8].mapping[0].map = ".text"

* differential.element[8].mapping[1].identity = "fhir"
* differential.element[8].mapping[1].map = ".note"

* differential.element[9].mapping[0].identity = "fhir"
* differential.element[9].mapping[0].map = ".clinicalStatus"

* differential.element[10].mapping[0].identity = "fhir"
* differential.element[10].mapping[0].map = "Condition.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Condition-otherinfos-eu-pcsp').where(code = http://snomed.info/sct#48130008 'Hypogonadism').exists()"

* differential.element[11].mapping[0].identity = "fhir"
* differential.element[11].mapping[0].map = "Condition.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Condition-otherinfos-eu-pcsp').where(code = http://snomed.info/sct#397827003 'Growth hormone deficiency').exists()"

* differential.element[12].mapping[0].identity = "fhir"
* differential.element[12].mapping[0].map = "Condition.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Condition-otherinfos-eu-pcsp').where(code = http://snomed.info/sct#230745008 'Hydrocephalus').exists()"

* differential.element[13].mapping[0].identity = "fhir"
* differential.element[13].mapping[0].map = "Condition.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Condition-otherinfos-eu-pcsp').where(code = http://snomed.info/sct#10295004 'Chronic viral hepatitis').exists()"

* differential.element[14].mapping[0].identity = "fhir"
* differential.element[14].mapping[0].map = "Condition.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Condition-otherinfos-eu-pcsp').where(code = http://snomed.info/sct#65617004 'Veno-occlusive disease of the liver').exists()"

* differential.element[15].mapping[0].identity = "fhir"
* differential.element[15].mapping[0].map = "Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-cvc-otherinfos-eu-pcsp')"

* differential.element[16].mapping[0].identity = "fhir"
* differential.element[16].mapping[0].map = ".focalDevice.action"

* differential.element[17].mapping[0].identity = "fhir"
* differential.element[17].mapping[0].map = ".bodySite"

* differential.element[18].mapping[0].identity = "fhir"
* differential.element[18].mapping[0].map = "Condition.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Condition-otherinfos-eu-pcsp').where(code = http://snomed.info/sct#439127006 'Thrombosis')"

* differential.element[19].mapping[0].identity = "fhir"
* differential.element[19].mapping[0].map = ".exists()"

* differential.element[20].mapping[0].identity = "fhir"
* differential.element[20].mapping[0].map = ".text"

* differential.element[21].mapping[0].identity = "fhir"
* differential.element[21].mapping[0].map = "Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-transfusion-otherinfos-eu-pcsp')"

* differential.element[22].mapping[0].identity = "fhir"
* differential.element[22].mapping[0].map = ".exists()"

* differential.element[23].mapping[0].identity = "fhir"
* differential.element[23].mapping[0].map = "extension(''http://hl7.eu/fhir/ig/pcsp/StructureDefinition/procedure-performedTiming').valueTiming.event.value.aggregate(iif($total.empty(), $this, iif($this > $total, $this, $total)))"

* differential.element[23].mapping[1].identity = "fhir"
* differential.element[23].mapping[1].map = "performedDateTime"

* differential.element[24].mapping[0].identity = "fhir"
* differential.element[24].mapping[0].map = "iif(.extension(''http://hl7.eu/fhir/ig/pcsp/StructureDefinition/procedure-performedTiming').valueTiming.repeat.count > 9; true)"

* differential.element[24].mapping[1].identity = "fhir"
* differential.element[24].mapping[1].map = "iif(.extension(''http://hl7.eu/fhir/ig/pcsp/StructureDefinition/procedure-performedTiming').valueTiming.repeat..boundsRange.low > 9; true)"

* differential.element[25].mapping[0].identity = "fhir"
* differential.element[25].mapping[0].map = "Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-cryopreservation-otherinfos-eu-pcsp')"

* differential.element[26].mapping[0].identity = "fhir"
* differential.element[26].mapping[0].map = ".text"

* differential.element[27].mapping[0].identity = "fhir"
* differential.element[27].mapping[0].map = ".location"

* differential.element[28].mapping[0].identity = "fhir"
* differential.element[28].mapping[0].map = "Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-treatment-otherinfos-eu-pcsp')"

* differential.element[29].mapping[0].identity = "fhir"
* differential.element[29].mapping[0].map = "DocumentReference.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/DocumentReference-eu-pcsp')"


// 
