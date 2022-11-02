Instance: SurPass
InstanceOf: StructureDefinition
Description: "Survivorship Passport V2.0 - - Maturity Level: 2 - Ready for Review"
Title: "SurPass V2.0"
Usage: #definition
* publisher = "PanCareSurPass project"
* status = #draft
* url = "http://hl7.eu/fhir/ig/pcsp/StructureDefinition/SurPass"
* name = "SurPass"
* title = "SurPass V2.0"
* status = #draft
* experimental = true
* description = "Survivorship Passport V2.0 - - Maturity Level: 2 - Ready for Review"
* version = "0.0.1"
* mapping[0].identity = "fhir"
* mapping[0].uri = "hl7.org/fhir/r4"
* mapping[0].name = "HL7 FHIR"
* kind = #logical
* abstract = true
* type = "SurPass"
* baseDefinition = "http://hl7.org/fhir/StructureDefinition/Element"
* derivation = #specialization
* differential.element[0].id = "SurPass"
* differential.element[0].path = "SurPass"
* differential.element[0].short = "SurPass V2.0"
* differential.element[0].definition = "Survivorship Passport V2.0 - - Maturity Level: 2 - Ready for Review"
* differential.element[0].min = 1
* differential.element[0].max = "1"
* differential.element[1].id = "SurPass.treatmentSummary"
* differential.element[1].path = "SurPass.treatmentSummary"
* differential.element[1].short = "Treatment Summary"
* differential.element[1].definition = "Treatment Summary"
* differential.element[1].min = 1
* differential.element[1].max = "1"
* differential.element[1].type.code = #http://hl7.eu/fhir/ig/pcsp/StructureDefinition/TreatmentSummary
* differential.element[2].id = "SurPass.carePlan"
* differential.element[2].path = "SurPass.carePlan"
* differential.element[2].short = "Care plan"
* differential.element[2].definition = "Reccomandation for follow up"
* differential.element[2].min = 0
* differential.element[2].max = "*"
* differential.element[2].type.code = #http://hl7.eu/fhir/ig/pcsp/StructureDefinition/PlanOfCare
// 
//  
// === MAPPING === 
// 
* differential.element[0].mapping[0].identity = "fhir"
* differential.element[0].mapping[0].map = "Bundle.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Bundle-eu-pcsp')"

* differential.element[1].mapping[0].identity = "fhir"
* differential.element[1].mapping[0].map = "Bundle.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Bundle-eu-pcsp')"

* differential.element[2].mapping[0].identity = "fhir"
* differential.element[2].mapping[0].map = "CarePlan.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/CarePlan-eu-pcsp')"








































































































































// 
