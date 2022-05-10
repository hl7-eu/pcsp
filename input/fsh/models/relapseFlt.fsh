Instance: RelapseDuringFLT
InstanceOf: StructureDefinition
Description: "Progression-Relapse during FLT
Maturity Level: 2 - Ready for Review"
Title: "Progression-Relapse during FLT"
Usage: #definition
* publisher = "PanCareSurPass project"
* status = #draft
* url = "http://hl7.eu/fhir/ig/pcsp/StructureDefinition/RelapseDuringFLT"
* name = "RelapseDuringFLT"
* title = "Progression-Relapse during FLT"
* status = #draft
* experimental = true
* description = "Progression-Relapse during FLT
Maturity Level: 2 - Ready for Review"
* version = "0.0.1"
* mapping[0].identity = "fhir"
* mapping[0].uri = "hl7.org/fhir/r4"
* mapping[0].name = "FHIR"
* kind = #logical
* abstract = true
* type = "RelapseDuringFLT"
* baseDefinition = "http://hl7.org/fhir/StructureDefinition/Element"
* derivation = #specialization
* differential.element[0].id = "RelapseDuringFLT"
* differential.element[0].path = "RelapseDuringFLT"
* differential.element[0].short = "Progression-Relapse during FLT"
* differential.element[0].definition = "Progression-Relapse during FLT"
* differential.element[0].min = 1
* differential.element[0].max = "1"
* differential.element[1].id = "RelapseDuringFLT.identifier"
* differential.element[1].path = "RelapseDuringFLT.identifier"
* differential.element[1].short = "Progression-Relapse during FLT identifier"
* differential.element[1].definition = "Progression-Relapse during FLT identifier"
* differential.element[1].min = 0
* differential.element[1].max = "1"
* differential.element[1].type.code = #Identifier


* differential.element[2].id = "RelapseDuringFLT.relatedDiagnosis"
* differential.element[2].path = "RelapseDuringFLT.relatedDiagnosis"
* differential.element[2].short = "Related diagnosis identifier"
* differential.element[2].definition = "Related diagnosis identifier"
* differential.element[2].min = 0
* differential.element[2].max = "1"
* differential.element[2].type.code = #Identifier


* differential.element[4].id = "RelapseDuringFLT.date"
* differential.element[4].path = "RelapseDuringFLT.date"
* differential.element[4].short = "Date"
* differential.element[4].definition = "Report the date of the event in DD/MM/YYYY format. If the date is unkown or partially missed insert the year at the best of your knowledge."
* differential.element[4].min = 0
* differential.element[4].max = "1"
* differential.element[4].type.code = #dateTime


* differential.element[3].id = "RelapseDuringFLT.type"
* differential.element[3].path = "RelapseDuringFLT.type"
* differential.element[3].short = "relapse | progression"
* differential.element[3].definition = "The type of event should be reported
1 => Relapse
2 => Progression 
-9922= NK"
* differential.element[3].min = 0
* differential.element[3].max = "1"
* differential.element[3].type.code = #CodeableConcept


* differential.element[5].id = "RelapseDuringFLT.qualifier"
* differential.element[5].path = "RelapseDuringFLT.qualifier"
* differential.element[5].short = "local | distant | combined"
* differential.element[5].definition = "Please state if the relapse or progression was local, distant,  combined or unk"
* differential.element[5].min = 0
* differential.element[5].max = "1"
* differential.element[5].type.code = #CodeableConcept


* differential.element[6].id = "RelapseDuringFLT.site"
* differential.element[6].path = "RelapseDuringFLT.site"
* differential.element[6].short = "If distant, site of metastases"
* differential.element[6].definition = "If distant or comobined, specify site  (text)"
* differential.element[6].min = 0
* differential.element[6].max = "1"
* differential.element[6].type.code = #string

//  
// === MAPPING === 
// 
* differential.element[0].mapping[0].identity = "fhir"
* differential.element[0].mapping[0].map = "Condition.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Condition-primaryCancer-eu-pcsp').where( (extension('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/condition-previousStatus').valueCode = #replaspe or #recurrence) and  ( onsetDateTime < Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-flt-eu-pcsp').performedPeriod.end) )"

* differential.element[1].mapping[0].identity = "fhir"
* differential.element[1].mapping[0].map = ".identifier"

* differential.element[2].mapping[0].identity = "fhir"
* differential.element[2].mapping[0].map = ".extension('http://hl7.org/fhir/StructureDefinition/condition-occurredFollowing')"

* differential.element[4].mapping[0].identity = "fhir"
* differential.element[4].mapping[0].map = ".extension('http://hl7.org/fhir/StructureDefinition/condition-assertedDate')"

* differential.element[3].mapping[0].identity = "fhir"
* differential.element[3].mapping[0].map = ".extension('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/condition-previousStatus').where(Condition.clinicalStatus << #inactive).valueCodeableConcept OR Condition.where( clinicalStatus = #relapse OR clinicalStatus = #recurrence).clinicalStatus"

* differential.element[5].mapping[0].identity = "fhir"
* differential.element[5].mapping[0].map = ".extension('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/condition-previousStatus').where(Condition.clinicalStatus = #inactive or #relapse or #recurrence).valueCodeableConcept OR Condition.where( clinicalStatus = #relapse OR clinicalStatus = #recurrence).clinicalStatus"

* differential.element[6].mapping[0].identity = "fhir"
* differential.element[6].mapping[0].map = "Condition.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Condition-secondaryCancer-eu-pcsp').bodySite"















































































* differential.element[0].mapping[0].identity = "fhir"
* differential.element[0].mapping[0].map = "Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-radiotheraphyBoost-eu-pcsp')"

* differential.element[0].mapping[0].identity = "fhir"
* differential.element[0].mapping[0].map = ".code"

* differential.element[0].mapping[0].identity = "fhir"
* differential.element[0].mapping[0].map = ".status"

* differential.element[0].mapping[0].identity = "fhir"
* differential.element[0].mapping[0].map = ".bodySite"

* differential.element[0].mapping[0].identity = "fhir"
* differential.element[0].mapping[0].map = ".extension(http://hl7.eu/fhir/ig/pcsp/StructureDefinition/ResourceRelatedInfo-eu-pcsp).resolve().conformsTo(http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Observation-cumulativeDoseRad-eu-pcsp).bodySite"
















* differential.element[0].mapping[0].identity = "fhir"
* differential.element[0].mapping[0].map = ".extension(http://hl7.eu/fhir/ig/pcsp/StructureDefinition/ResourceRelatedInfo-eu-pcsp).conformsTo(http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Observation-cumulativeDoseRad-eu-pcsp)"


















































// 
