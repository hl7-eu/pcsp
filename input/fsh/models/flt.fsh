Instance: FrontLineTreatment
InstanceOf: StructureDefinition
Description: "Front Line Treatment. The first treatment given for a disease. It is often part of a standard set of treatments, such as surgery followed by chemotherapy and radiation. When used by itself, first-line therapy is the one accepted as the best treatment. If it does not cure the disease or it causes severe side effects, other treatment may be added or used instead. Also called induction therapy, primary therapy, and primary treatment.
Maturity Level: 2 - Ready for Review"
Title: "Front Line Treatment"
Usage: #definition
* publisher = "PanCareSurPass project"
* status = #draft
* url = "http://hl7.eu/fhir/ig/pcsp/StructureDefinition/FrontLineTreatment"
* name = "FrontLineTreatment"
* title = "Front Line Treatment"
* status = #draft
* experimental = true
* description = "Front Line Treatment. The first treatment given for a disease. It is often part of a standard set of treatments, such as surgery followed by chemotherapy and radiation. When used by itself, first-line therapy is the one accepted as the best treatment. If it does not cure the disease or it causes severe side effects, other treatment may be added or used instead. Also called induction therapy, primary therapy, and primary treatment.
Maturity Level: 2 - Ready for Review"
* version = "0.0.1"
* mapping[0].identity = "fhir"
* mapping[0].uri = "hl7.org/fhir/r4"
* mapping[0].name = "HL7 FHIR"
* kind = #logical
* abstract = true
* extension[0].url = $elementdefinition-namespace
* extension[=].valueUri = $pcspUri
* type = "http://hl7.eu/fhir/ig/pcsp/StructureDefinition/FrontLineTreatment"
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
* differential.element[6].short = "Date of end of treatment"
* differential.element[6].definition = "It might be the date of first elective end of treatment, or that of the second (or further) end of treatment after the first one. If the date is unkown or partially missed insert the year at the best of your knowledge."
* differential.element[6].min = 0
* differential.element[6].max = "1"
* differential.element[6].type.code = #dateTime
* differential.element[7].id = "FrontLineTreatment.isChemotherapy"
* differential.element[7].path = "FrontLineTreatment.isChemotherapy"
* differential.element[7].short = "Chemotherapy ?"
* differential.element[7].definition = "Chemotherapy ?"
* differential.element[7].min = 0
* differential.element[7].max = "1"
* differential.element[7].type.code = #CodeableConcept
* differential.element[8].id = "FrontLineTreatment.isStemCellTransplantation"
* differential.element[8].path = "FrontLineTreatment.isStemCellTransplantation"
* differential.element[8].short = "Stem Cell transplantation ?"
* differential.element[8].definition = "Stem Cell transplantation ?"
* differential.element[8].min = 0
* differential.element[8].max = "1"
* differential.element[8].type.code = #CodeableConcept
* differential.element[9].id = "FrontLineTreatment.isRadiotherapy"
* differential.element[9].path = "FrontLineTreatment.isRadiotherapy"
* differential.element[9].short = "Radiotherapy ?"
* differential.element[9].definition = "Radiotherapy ?"
* differential.element[9].min = 0
* differential.element[9].max = "1"
* differential.element[9].type.code = #CodeableConcept
* differential.element[10].id = "FrontLineTreatment.isMajorSurgery"
* differential.element[10].path = "FrontLineTreatment.isMajorSurgery"
* differential.element[10].short = "Major Surgery ?"
* differential.element[10].definition = "Major Surgery ?"
* differential.element[10].min = 0
* differential.element[10].max = "1"
* differential.element[10].type.code = #CodeableConcept
* differential.element[11].id = "FrontLineTreatment.notForRelapse"
* differential.element[11].path = "FrontLineTreatment.notForRelapse"
* differential.element[11].short = "Details not provided for relapses after EOT"
* differential.element[11].definition = "Details not provided for relapses after EOT"
* differential.element[11].min = 0
* differential.element[11].max = "1"
* differential.element[11].type.code = #BackboneElement
* differential.element[12].id = "FrontLineTreatment.notForRelapse.completeRemission"
* differential.element[12].path = "FrontLineTreatment.notForRelapse.completeRemission"
* differential.element[12].short = "Complete remission"
* differential.element[12].definition = "Complete remission"
* differential.element[12].min = 0
* differential.element[12].max = "1"
* differential.element[12].type.code = #BackboneElement
* differential.element[13].id = "FrontLineTreatment.notForRelapse.completeRemission.status"
* differential.element[13].path = "FrontLineTreatment.notForRelapse.completeRemission.status"
* differential.element[13].short = "Complete remission (Yes/No)"
* differential.element[13].definition = "Complete remission (Yes/No)"
* differential.element[13].min = 1
* differential.element[13].max = "1"
* differential.element[13].type.code = #dateTime
* differential.element[14].id = "FrontLineTreatment.notForRelapse.completeRemission.description"
* differential.element[14].path = "FrontLineTreatment.notForRelapse.completeRemission.description"
* differential.element[14].short = "Textual description in case of no remission"
* differential.element[14].definition = "Textual description in case of no remission"
* differential.element[14].min = 1
* differential.element[14].max = "1"
* differential.element[14].type.code = #CodeableConcept
* differential.element[15].id = "FrontLineTreatment.notForRelapse.isProgressionRelapseDuringFLT"
* differential.element[15].path = "FrontLineTreatment.notForRelapse.isProgressionRelapseDuringFLT"
* differential.element[15].short = "Progression/relapse during frontline treatment ?"
* differential.element[15].definition = "Progression/relapse during frontline treatment ?"
* differential.element[15].min = 0
* differential.element[15].max = "1"
* differential.element[15].type.code = #CodeableConcept
* differential.element[16].id = "FrontLineTreatment.notForRelapse.isProgressionRelapseAfterFLT"
* differential.element[16].path = "FrontLineTreatment.notForRelapse.isProgressionRelapseAfterFLT"
* differential.element[16].short = "Progression/relapse after first elective end of treatment ?"
* differential.element[16].definition = "Progression/relapse after first elective end of treatment ?"
* differential.element[16].min = 0
* differential.element[16].max = "1"
* differential.element[16].type.code = #CodeableConcept
// 
//  
// === MAPPING === 
// 
* differential.element[0].mapping[0].identity = "fhir"
* differential.element[0].mapping[0].map = "Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-flt-eu-pcsp')"

* differential.element[1].mapping[1].identity = "fhir"
* differential.element[1].mapping[1].map = ".instantiatesCanonical"

* differential.element[1].mapping[0].identity = "fhir"
* differential.element[1].mapping[0].map = "PlanDefinition.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/PlanDefinition-flt-eu-pcsp')"

* differential.element[2].mapping[0].identity = "fhir"
* differential.element[2].mapping[0].map = ".type"

* differential.element[3].mapping[0].identity = "fhir"
* differential.element[3].mapping[0].map = ".title"

* differential.element[4].mapping[0].identity = "fhir"
* differential.element[4].mapping[0].map = ".description"

* differential.element[5].mapping[0].identity = "fhir"
* differential.element[5].mapping[0].map = ".extension('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/procedure-fltArm').valueString"

* differential.element[6].mapping[0].identity = "fhir"
* differential.element[6].mapping[0].map = "Procedure.performedPeriod.end"

* differential.element[7].mapping[0].identity = "fhir"
* differential.element[7].mapping[0].map = "MedicationAdministration.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/MedicationAdministration-eu-pcsp').exists()"

* differential.element[8].mapping[0].identity = "fhir"
* differential.element[8].mapping[0].map = "Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-sct-eu-pcsp').exists()"

* differential.element[9].mapping[0].identity = "fhir"
* differential.element[9].mapping[0].map = "Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-radiotheraphy-eu-pcsp').exists()"

* differential.element[10].mapping[0].identity = "fhir"
* differential.element[10].mapping[0].map = "Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-surgery-eu-pcsp').exists()"




* differential.element[12].mapping[0].identity = "fhir"
* differential.element[12].mapping[0].map = "outcome"

* differential.element[13].mapping[0].identity = "fhir"
* differential.element[13].mapping[0].map = "outcome.coding"

* differential.element[14].mapping[0].identity = "fhir"
* differential.element[14].mapping[0].map = "outcome.text"

* differential.element[15].mapping[0].identity = "fhir"
* differential.element[15].mapping[0].map = "Condition.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Condition-primaryCancer-eu-pcsp').where( (extension('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/condition-previousStatus').valueCode = #replaspe or #recurrence) and  ( onsetDateTime < Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-flt-eu-pcsp').performedPeriod.end) ).exists()"

* differential.element[16].mapping[0].identity = "fhir"
* differential.element[16].mapping[0].map = "Condition.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Condition-primaryCancer-eu-pcsp').where( (extension('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/condition-previousStatus').valueCode = #replaspe or #recurrence) and  ( onsetDateTime >= Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-flt-eu-pcsp').performedPeriod.end) ).exists()"


































// 
