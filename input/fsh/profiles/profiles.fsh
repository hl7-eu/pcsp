
//====== RuleSet =====================================

RuleSet: CumulativeDoseObsRules
* status MS
* category 0.. MS
* code MS
* subject 1.. MS
* subject only Reference(PatientPcsp)
* specimen 0..
* value[x] 1.. MS
* value[x] only Quantity or CodeableConcept
* valueQuantity MS
* valueQuantity.value 1.. MS
* valueQuantity.system 1.. MS
* valueQuantity.system = $ucum
* valueQuantity.code 1.. MS 
* valueQuantity.unit MS 
* valueCodeableConcept = $data-absent-reason#unknown "Unknown" 
* component 0..

//====== Profiles =====================================


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  CarePlanPcsp
Parent:   CarePlan
Id:       CarePlan-eu-pcsp
Title:    "CarePlan PCSP"
Description: "This profile defines how to represent Care Plan in FHIR for the purpose of the PanCareSurPass project."
//-------------------------------------------------------------------------------------------
* identifier MS
* status MS
* intent MS
* title 1.. MS
* subject MS
* subject only Reference(PatientPcsp)
* period MS
* created MS
* author MS



//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  LocationPcsp
Parent:   Location
Id:       Location-eu-pcsp
Title:    "Location PCSP"
Description: "This profile defines how to represent FHIR Location for the purpose of the PanCareSurPass project."
//-------------------------------------------------------------------------------------------

* name 1.. MS
* name ^short = "Name of the Institution"
* description ^short = "Institution description"
* address.city ^short = "Institution city"
* address.country ^short = "Institution country"


/* ===== ATTIC BEGIN


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ProcedureSCTMinPcsp
Parent:   Procedure 
Id:       Procedure-sct-min-eu-pcsp
Title:    "Procedure Stem Cell Transplantation (Minimal Set)"
Description: "This profile defines how to represent Procedures in FHIR for describing a Minimal set of Stem Cell transplantation data required by the PanCareSurPass algorithm to generate the care plan."
//-------------------------------------------------------------------------------------------
* status MS
* category MS // add Radiotherapy
* category = $sct#77465005 "Transplantation" // part of GPS
* code 1..1 MS // TYPE - add 1 Autologous ( Autogenous transplantation (procedure) ) 2 = Allogeneic (50223000 | Allogeneic transplantation) // Not enough specific ?
* code from RadiotherapyTypeVs
// add slice on coding to allow more precise data
* subject only Reference(PatientPcsp)	
* subject MS
* performedPeriod 1.. MS
* reasonReference 1.. MS // add reference to the diagnosis
* reasonReference only Reference(ConditionPrimaryCancerPcsp)
* bodySite 1.. MS 
* bodySite from VsRadiotherapy


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationYesNoPcsp
Parent:   Observation 
Id:       Observation-yesNo-eu-pcsp
Title:    "Observation Yes No answers"
Description: "This profile defines how to represent Yes/No answered information in FHIR using Observation for the purpose of the PanCareSurPass project."
//-------------------------------------------------------------------------------------------

* status MS
* subject only Reference(PatientPcsp)	
* subject MS
* code from ObservationYesNoVs (extensible)
* code MS
* valueCodeableConcept from http://loinc.org/vs/LL365-8 // Yes/No
* valueCodeableConcept 1.. MS


==== ATTIC END */
