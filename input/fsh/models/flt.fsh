Instance: FrontLineTreatment
InstanceOf: StructureDefinition
Description: "FrontLineTreatment
Maturity Level  1"
Title: "FrontLineTreatment"
Usage: #definition
* publisher = "PanCareSurPass project"
* status = #draft
* url = "http://hl7.eu/fhir/ig/pcsp/StructureDefinition/FrontLineTreatment"
* name = "FrontLineTreatment"
* title = "FrontLineTreatment"
* status = #draft
* experimental = true
* description = "FrontLineTreatment
Maturity Level  1"
* version = "0.0.1"
* mapping[0].identity = "fhir"
* mapping[0].uri = "hl7.org/fhir/r4"
* mapping[0].name = "FHIR"
* kind = #logical
* abstract = true
* type = "FrontLineTreatment"
* baseDefinition = "http://hl7.org/fhir/StructureDefinition/Element"
* derivation = #specialization
* differential.element[0].id = "FrontLineTreatment"
* differential.element[0].path = "FrontLineTreatment"
* differential.element[0].short = "Front line treatment"
* differential.element[0].definition = "Front line treatment"
* differential.element[0].min = 1
* differential.element[0].max = "1"
* differential.element[1].id = "FrontLineTreatment.followedProtocol"
* differential.element[1].path = "FrontLineTreatment.followedProtocol"
* differential.element[1].short = "Followed Protocol"
* differential.element[1].definition = "Followed Protocol"
* differential.element[1].min = 0
* differential.element[1].max = "*"
* differential.element[1].type.code = #BackboneElement
* differential.element[2].id = "FrontLineTreatment.followedProtocol.type"
* differential.element[2].path = "FrontLineTreatment.followedProtocol.type"
* differential.element[2].short = "Protocole type"
* differential.element[2].definition = "2 => Trial/protocol
2 => Personalized
3 => Guidelines
-9922 => NK"
* differential.element[2].min = 0
* differential.element[2].max = "1"
* differential.element[2].type.code = #CodeableConcept
* differential.element[3].id = "FrontLineTreatment.followedProtocol.name"
* differential.element[3].path = "FrontLineTreatment.followedProtocol.name"
* differential.element[3].short = "Protocole name"
* differential.element[3].definition = "Protocole name"
* differential.element[3].min = 0
* differential.element[3].max = "1"
* differential.element[3].type.code = #string
* differential.element[4].id = "FrontLineTreatment.followedProtocol.description"
* differential.element[4].path = "FrontLineTreatment.followedProtocol.description"
* differential.element[4].short = "Protocol name or description"
* differential.element[4].definition = "If a specific trial/protocol was used, please specify.  
In case of relapse/progression during front line treatment,please report both the name of the front line as well of the salvage treatment
If personalized, please specify.  "
* differential.element[4].min = 0
* differential.element[4].max = "1"
* differential.element[4].type.code = #string
* differential.element[5].id = "FrontLineTreatment.followedProtocol.arm"
* differential.element[5].path = "FrontLineTreatment.followedProtocol.arm"
* differential.element[5].short = "Group/Arm/Randomization"
* differential.element[5].definition = "If the trial was randomized, please define randomization arm"
* differential.element[5].min = 0
* differential.element[5].max = "1"
* differential.element[5].type.code = #string
* differential.element[6].id = "FrontLineTreatment.dateEOT"
* differential.element[6].path = "FrontLineTreatment.dateEOT"
* differential.element[6].short = "Date of first elective end of treatment"
* differential.element[6].definition = "Date of first elective end of treatment"
* differential.element[6].min = 0
* differential.element[6].max = "1"
* differential.element[6].type.code = #string
* differential.element[7].id = "FrontLineTreatment.completeRemission"
* differential.element[7].path = "FrontLineTreatment.completeRemission"
* differential.element[7].short = "Complete remission"
* differential.element[7].definition = "Complete remission"
* differential.element[7].min = 0
* differential.element[7].max = "1"
* differential.element[7].type.code = #BackboneElement
* differential.element[8].id = "FrontLineTreatment.completeRemission.status"
* differential.element[8].path = "FrontLineTreatment.completeRemission.status"
* differential.element[8].short = "Complete remission (Yes/No)"
* differential.element[8].definition = "Complete remission (Yes/No)"
* differential.element[8].min = 1
* differential.element[8].max = "1"
* differential.element[8].type.code = #dateTime
* differential.element[9].id = "FrontLineTreatment.completeRemission.description"
* differential.element[9].path = "FrontLineTreatment.completeRemission.description"
* differential.element[9].short = "Textual description in case of no remission"
* differential.element[9].definition = "Textual description in case of no remission"
* differential.element[9].min = 1
* differential.element[9].max = "1"
* differential.element[9].type.code = #CodeableConcept
* differential.element[10].id = "FrontLineTreatment.isChemotherapy"
* differential.element[10].path = "FrontLineTreatment.isChemotherapy"
* differential.element[10].short = "Chemotherapy ?"
* differential.element[10].definition = "Chemotherapy ?"
* differential.element[10].min = 0
* differential.element[10].max = "1"
* differential.element[10].type.code = #string
* differential.element[11].id = "FrontLineTreatment.isStemCellTransplantation"
* differential.element[11].path = "FrontLineTreatment.isStemCellTransplantation"
* differential.element[11].short = "Stem Cell transplantation ?"
* differential.element[11].definition = "Stem Cell transplantation ?"
* differential.element[11].min = 0
* differential.element[11].max = "1"
* differential.element[11].type.code = #CodeableConcept
* differential.element[12].id = "FrontLineTreatment.isRadiotherapy"
* differential.element[12].path = "FrontLineTreatment.isRadiotherapy"
* differential.element[12].short = "Radiotherapy ?"
* differential.element[12].definition = "Radiotherapy ?"
* differential.element[12].min = 0
* differential.element[12].max = "1"
* differential.element[12].type.code = #CodeableConcept
* differential.element[13].id = "FrontLineTreatment.isMajorSurgery"
* differential.element[13].path = "FrontLineTreatment.isMajorSurgery"
* differential.element[13].short = "Major Surgery ?"
* differential.element[13].definition = "Major Surgery ?"
* differential.element[13].min = 0
* differential.element[13].max = "1"
* differential.element[13].type.code = #CodeableConcept
* differential.element[14].id = "FrontLineTreatment.isProgressionRelapseDuringFLT"
* differential.element[14].path = "FrontLineTreatment.isProgressionRelapseDuringFLT"
* differential.element[14].short = "Progression/relapse during frontline treatment ?"
* differential.element[14].definition = "Progression/relapse during frontline treatment ?"
* differential.element[14].min = 0
* differential.element[14].max = "1"
* differential.element[14].type.code = #CodeableConcept
* differential.element[15].id = "FrontLineTreatment.isProgressionRelapseAfterFLT"
* differential.element[15].path = "FrontLineTreatment.isProgressionRelapseAfterFLT"
* differential.element[15].short = "Progression/relapse after first elective end of treatment ?"
* differential.element[15].definition = "Progression/relapse after first elective end of treatment ?"
* differential.element[15].min = 0
* differential.element[15].max = "1"
* differential.element[15].type.code = #CodeableConcept
//  
// === MAPPING === 
// 
* differential.element[0].mapping[0].identity = "fhir"
* differential.element[0].mapping[0].map = "Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-flt-eu-pcsp')"

* differential.element[1].mapping[1].identity = "fhir"
* differential.element[1].mapping[1].map = ".instantiatesCanonical"

* differential.element[1].mapping[0].identity = "fhir"
* differential.element[1].mapping[0].map = "PlanDefinition..conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/PlanDefinition-flt-eu-pcsp')"

* differential.element[2].mapping[0].identity = "fhir"
* differential.element[2].mapping[0].map = ".type"

* differential.element[3].mapping[0].identity = "fhir"
* differential.element[3].mapping[0].map = ".title"

* differential.element[4].mapping[0].identity = "fhir"
* differential.element[4].mapping[0].map = ".description"

* differential.element[5].mapping[0].identity = "fhir"
* differential.element[5].mapping[0].map = "TBD"

* differential.element[6].mapping[0].identity = "fhir"
* differential.element[6].mapping[0].map = "Procedure.performedPeriod.end"

* differential.element[7].mapping[0].identity = "fhir"
* differential.element[7].mapping[0].map = "outcome"

* differential.element[8].mapping[0].identity = "fhir"
* differential.element[8].mapping[0].map = "outcome.coding"

* differential.element[9].mapping[0].identity = "fhir"
* differential.element[9].mapping[0].map = "outcome.text"

* differential.element[10].mapping[0].identity = "fhir"
* differential.element[10].mapping[0].map = "MedicationAdministration.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/MedicationAdministration-eu-pcsp').exists()"

* differential.element[11].mapping[0].identity = "fhir"
* differential.element[11].mapping[0].map = "Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-sct-eu-pcsp').exists()"

* differential.element[12].mapping[0].identity = "fhir"
* differential.element[12].mapping[0].map = "Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-radiotheraphy-eu-pcsp').exists()"

* differential.element[13].mapping[0].identity = "fhir"
* differential.element[13].mapping[0].map = "Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-surgery-eu-pcsp').exists()"

* differential.element[14].mapping[0].identity = "fhir"
* differential.element[14].mapping[0].map = "TBD"

* differential.element[15].mapping[0].identity = "fhir"
* differential.element[15].mapping[0].map = "TBD"
































































































// 
