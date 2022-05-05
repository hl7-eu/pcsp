Instance: RelapseAfterFLT
InstanceOf: StructureDefinition
Description: "Progression-Relapse after FLT
Marturity Level: 1 - Profiles in progress"
Title: "Progression-Relapse after FLT"
Usage: #definition
* publisher = "PanCareSurPass project"
* status = #draft
* url = "http://hl7.eu/fhir/ig/pcsp/StructureDefinition/RelapseAfterFLT"
* name = "RelapseAfterFLT"
* title = "Progression-Relapse after FLT"
* status = #draft
* experimental = true
* description = "Progression-Relapse after FLT
Marturity Level: 1 - Profiles in progress"
* version = "0.0.1"
* mapping[0].identity = "fhir"
* mapping[0].uri = "hl7.org/fhir/r4"
* mapping[0].name = "FHIR"
* kind = #logical
* abstract = true
* type = "RelapseAfterFLT"
* baseDefinition = "http://hl7.org/fhir/StructureDefinition/Element"
* derivation = #specialization
* differential.element[0].id = "RelapseAfterFLT"
* differential.element[0].path = "RelapseAfterFLT"
* differential.element[0].short = "Progression-Relapse after  FLT"
* differential.element[0].definition = "Progression-Relapse after  FLT"
* differential.element[0].min = 1
* differential.element[0].max = "1"
* differential.element[1].id = "RelapseAfterFLT.identifier"
* differential.element[1].path = "RelapseAfterFLT.identifier"
* differential.element[1].short = "Progression-relapse after FLT number"
* differential.element[1].definition = "Progressive number of progression/relapse (1=first; 2= second; 3 = third; ?) after the end of treatment.
In this field must be reported the ordinal number of the progression/relapse after the end of treatment."
* differential.element[1].min = 0
* differential.element[1].max = "1"
* differential.element[1].type.code = #Identifier


* differential.element[2].id = "RelapseAfterFLT.relatedDiagnosis"
* differential.element[2].path = "RelapseAfterFLT.relatedDiagnosis"
* differential.element[2].short = "Progressive number of diagnosis"
* differential.element[2].definition = "Progressive number of diagnosis (1=first; 2= second; 3 = third; ?).  
In this field must be reported the ordinal number of the tumor diagnosis in which progression/relapse ocuured during front line treatment."
* differential.element[2].min = 0
* differential.element[2].max = "1"
* differential.element[2].type.code = #Identifier


* differential.element[3].id = "RelapseAfterFLT.type"
* differential.element[3].path = "RelapseAfterFLT.type"
* differential.element[3].short = "relapse | progression"
* differential.element[3].definition = "Report here if a relapse or progression occurred after the elective end of therapies.
Please note that 'progressions' may occurr since in some cases (e.g. stage 3 unoperable residual neuroblastoma or residual CNS tumor) that were considered as 'non active' may progress
1 => Relapse
2 => Progression
-9922= > NK"
* differential.element[3].min = 0
* differential.element[3].max = "1"
* differential.element[3].type.code = #CodeableConcept


* differential.element[4].id = "RelapseAfterFLT.qualifier"
* differential.element[4].path = "RelapseAfterFLT.qualifier"
* differential.element[4].short = "local | distant | combined"
* differential.element[4].definition = "Report here the date (dd/mm/yyyy ) of the relapse/progression. If the date is unkown or partially missed insert the year at the best of your knowledge."
* differential.element[4].min = 0
* differential.element[4].max = "1"
* differential.element[4].type.code = #CodeableConcept


* differential.element[5].id = "RelapseAfterFLT.site"
* differential.element[5].path = "RelapseAfterFLT.site"
* differential.element[5].short = "If distant, site of metastases"
* differential.element[5].definition = "Please define if the relapse/progression was local, distant or combined.
"
* differential.element[5].min = 0
* differential.element[5].max = "1"
* differential.element[5].type.code = #string











//  
// === MAPPING === 
// 
* differential.element[0].mapping[0].identity = "fhir"
* differential.element[0].mapping[0].map = "Condition.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Condition-primaryCancer-eu-pcsp').where( (extension('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/condition-previousStatus').valueCode = #replaspe or #recurrence) and  ( onsetDateTime >= Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-flt-eu-pcsp').performedPeriod.end) )"

* differential.element[1].mapping[0].identity = "fhir"
* differential.element[1].mapping[0].map = ".identifier"

* differential.element[2].mapping[0].identity = "fhir"
* differential.element[2].mapping[0].map = ".extension('http://hl7.org/fhir/StructureDefinition/condition-occurredFollowing')"

* differential.element[3].mapping[0].identity = "fhir"
* differential.element[3].mapping[0].map = ".extension('http://hl7.org/fhir/StructureDefinition/condition-assertedDate')"

* differential.element[4].mapping[0].identity = "fhir"
* differential.element[4].mapping[0].map = ".extension('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/condition-previousStatus').where(Condition.clinicalStatus = #inactive or #relapse or #recurrence).valueCodeableConcept OR Condition.where( clinicalStatus = #relapse or clinicalStatus = #recurrence).clinicalStatus"

* differential.element[5].mapping[0].identity = "fhir"
* differential.element[5].mapping[0].map = "Condition.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Condition-secondaryCancer-eu-pcsp').bodySite"




































































































































































// 
