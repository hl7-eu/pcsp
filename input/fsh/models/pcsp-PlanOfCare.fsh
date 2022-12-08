// -------------------------------------------------------------------------------				
//  Logical Model				pcsp-PlanOfCare.fsh
// -------------------------------------------------------------------------------				
Logical: PlanOfCare				
Id: PlanOfCare				
Title: "Care Plan"				
Description:  """Care Plan
Maturity Level: 0 - Draft"""				
* identifier 1..* Identifier "Care plan Identifier" """Care plan business identifier"""				
* addressedProblem 0..* Identifier "Problems addressed by this plan" """Problems (e.g. primary cancer) addressed by this plan"""				
* author 0..1 BackboneElement "Author" """Author"""				
* creationTime 0..1 dateTime "Date the plan was created" """Date the plan was created"""				
* note 0..1 string "Plan note" """Plan note"""				
* chronicConditions 0..1 string "Chronic condition" """Chronic condition"""				
* reccomandation 1..* BackboneElement "Reccomandation" """Reccomandation"""				
* reccomandation.riskFactor 0..* CodeableConcept "Risk factors" """Risk factors considered for generating this care plan"""				
* reccomandation.conditionAtRisk 0..* CodeableConcept "Conditions at risk" """Conditions at risk"""				
* reccomandation.reccomandation 0..1 CodeableConcept "Suggested reccomandation" """Reccomandation suggested by the algorithm"""				
* reccomandation.note 0..1 string "Note" """Note"""				
//--- END				
//--- END				
//--- END				
				
				
// -------------------------------------------------------------------------------				
//  Map to FHIR R4				
// -------------------------------------------------------------------------------				
Mapping: PlanOfCare2Fhir				
Id: fhir				
Title: "PlanOfCare model to PCSP HL7 FHIR R4 Profiles"				
Source: PlanOfCare				
Target: "hl7.org/fhir/r4"				
				
* . -> "CarePlan.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/CarePlan-eu-pcsp')"				
* identifier -> ".identifier"				
* addressedProblem -> ".addresses"				
* author -> ".author"				
* creationTime -> ".created"				
* note -> ".note.where(extension(' http://hl7.eu/fhir/ig/pcsp/StructureDefinition/annotation-type').valueCodeableConcept=CsGenericPcsp#nar-planNotes)"				
* chronicConditions -> ".note.where(extension(' http://hl7.eu/fhir/ig/pcsp/StructureDefinition/annotation-type').valueCodeableConcept=CsGenericPcsp#nar-chronicCond)"				
* reccomandation -> ".activity.detail"				
* reccomandation.riskFactor -> ".activity.detail.reasonReference"				
* reccomandation.conditionAtRisk -> "activity.detail.reasonCode"				
* reccomandation.reccomandation -> "activity.detail.code"				
* reccomandation.note -> "activity.detail.description"				
// --END				
// --END				
// --END				
