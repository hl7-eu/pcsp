Instance: PlanOfCare
InstanceOf: StructureDefinition
Description: "Care Plan
Maturity Level: 0 - Draft"
Title: "Care Plan"
Usage: #definition
* publisher = "PanCareSurPass project"
* status = #draft
* url = "http://hl7.eu/fhir/ig/pcsp/StructureDefinition/PlanOfCare"
* name = "Care Plan"
* title = "Care Plan"
* status = #draft
* experimental = true
* description = "Care Plan
Maturity Level: 0 - Draft"
* version = "0.0.1"
* mapping[0].identity = "fhir"
* mapping[0].uri = "hl7.org/fhir/r4"
* mapping[0].name = "HL7 FHIR"
* mapping[1].identity = "cda"
* mapping[1].uri = "http://hl7.org/v3/cda"
* mapping[1].name = "CDA (R2)"
* kind = #logical
* abstract = true
* type = "PlanOfCare"
* baseDefinition = "http://hl7.org/fhir/StructureDefinition/Element"
* derivation = #specialization
* differential.element[0].id = "PlanOfCare"
* differential.element[0].path = "PlanOfCare"
* differential.element[0].short = "Care Plan"
* differential.element[0].definition = "Care Plan, reccomandation"
* differential.element[0].min = 1
* differential.element[0].max = "1"
* differential.element[1].id = "PlanOfCare.identifier"
* differential.element[1].path = "PlanOfCare.identifier"
* differential.element[1].short = "Care plan Identifier"
* differential.element[1].definition = "Care plan Identifier"
* differential.element[1].min = 1
* differential.element[1].max = "*"
* differential.element[1].type.code = #Identifier
* differential.element[2].id = "PlanOfCare.addressedProblem"
* differential.element[2].path = "PlanOfCare.addressedProblem"
* differential.element[2].short = "Problems addressed by this plan"
* differential.element[2].definition = "Problems addressed by this plan"
* differential.element[2].min = 0
* differential.element[2].max = "*"
* differential.element[2].type.code = #Identifier
* differential.element[3].id = "PlanOfCare.author"
* differential.element[3].path = "PlanOfCare.author"
* differential.element[3].short = "Author"
* differential.element[3].definition = "Author"
* differential.element[3].min = 0
* differential.element[3].max = "1"
* differential.element[3].type.code = #BackboneElement
* differential.element[4].id = "PlanOfCare.creationTime"
* differential.element[4].path = "PlanOfCare.creationTime"
* differential.element[4].short = "date the plan was created"
* differential.element[4].definition = "date the plan was created"
* differential.element[4].min = 0
* differential.element[4].max = "1"
* differential.element[4].type.code = #dateTime
* differential.element[5].id = "PlanOfCare.riskFactor"
* differential.element[5].path = "PlanOfCare.riskFactor"
* differential.element[5].short = "risk factors"
* differential.element[5].definition = "Risk factors considered by this care plan"
* differential.element[5].min = 0
* differential.element[5].max = "*"
* differential.element[5].type.code = #CodeableConcept
* differential.element[6].id = "PlanOfCare.conditionAtRisk"
* differential.element[6].path = "PlanOfCare.conditionAtRisk"
* differential.element[6].short = "Conditions at risk"
* differential.element[6].definition = "Conditions at risk"
* differential.element[6].min = 0
* differential.element[6].max = "*"
* differential.element[6].type.code = #CodeableConcept
* differential.element[7].id = "PlanOfCare.reccomandation"
* differential.element[7].path = "PlanOfCare.reccomandation"
* differential.element[7].short = "Reccomandation"
* differential.element[7].definition = "Reccomandation"
* differential.element[7].min = 0
* differential.element[7].max = "*"
* differential.element[7].type.code = #CodeableConcept
* differential.element[8].id = "PlanOfCare.note"
* differential.element[8].path = "PlanOfCare.note"
* differential.element[8].short = "Notes"
* differential.element[8].definition = "Notes"
* differential.element[8].min = 0
* differential.element[8].max = "*"
* differential.element[8].type.code = #string
// 
//  
// === MAPPING === 
// 
* differential.element[0].mapping[0].identity = "fhir"
* differential.element[0].mapping[0].map = "CarePlan.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/CarePlan-eu-pcsp')"

* differential.element[1].mapping[0].identity = "fhir"
* differential.element[1].mapping[0].map = ".identifier"

* differential.element[2].mapping[0].identity = "fhir"
* differential.element[2].mapping[0].map = ".addresses"

* differential.element[3].mapping[0].identity = "fhir"
* differential.element[3].mapping[0].map = ".author"

* differential.element[4].mapping[0].identity = "fhir"
* differential.element[4].mapping[0].map = ".created"

* differential.element[5].mapping[0].identity = "fhir"
* differential.element[5].mapping[0].map = "supportingInfo.resolve().conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Observation-riskfactor-eu-pcsp')"

* differential.element[6].mapping[0].identity = "fhir"
* differential.element[6].mapping[0].map = ".activity.detail.reasonCode"

* differential.element[7].mapping[0].identity = "fhir"
* differential.element[7].mapping[0].map = ".activity.detail.code"

* differential.element[8].mapping[0].identity = "fhir"
* differential.element[8].mapping[0].map = ".activity.detail.description"





















































































// 
