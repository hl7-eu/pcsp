//====== RuleSet =====================================

RuleSet: MedicationAdministrationPcspRules
* extension contains 
		ResourceRelatedInfo named relatedCumulativeDose 0..1 
		and EventLocation named location 0..1
* extension[relatedCumulativeDose].valueReference only Reference(CumulativeDoseChemoObsPcsp)
* extension[location].valueReference only Reference(LocationPcsp)
* status MS
* subject only Reference(PatientPcsp)
* medicationCodeableConcept from VsPcspAtcCodes
* medicationCodeableConcept 1..1 MS
* reasonReference 1..1 MS // add reference to the diagnosis
* reasonReference only Reference(ConditionPrimaryCancerPcsp)

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  CumulativeDoseChemoObsPcsp
Parent:   CumulativeDoseObsPcsp
Id:       Observation-cumulativeDoseChemo-eu-pcsp
Title:    "Observation Chemotherapy Cumulative Dose"
Description: "This profile defines how to represent Chemotherapy Cumulative Dose in FHIR for the purpose of the PanCareSurPass project."
//-------------------------------------------------------------------------------------------
* ^abstract = false
* extension contains $event-statusReason named statusReason 0..1
* extension[statusReason]
* category MS
* category = $observation-category#procedure  // to be checked
* status ^short = "Completion status"
* code MS
* code = CsGenericPcsp#cumulativeDose //  local code
* value[x] 1..1 MS
* valueQuantity 0.. 
  * ^short = "Chemotherapy Cumulative Dose"
  * unit from ChemoUnitsVs
* dataAbsentReason ^short = "Not calculated or not known dose"
* dataAbsentReason from NotPerformedUnknownVs
* method from CalculatedEstimatedVs




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

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  MedicationAdministrationMinPcsp
Parent:   MedicationAdministration 
Id:       MedicationAdministration-min-eu-pcsp
Title:    "MedicationAdministration (PCSP Minimal Set)"
Description: "This profile defines how to represent MedicationAdministration in FHIR for describing a Minimal set of Chemotherapy data required by the PanCareSurPass algorithm to generate the care plan."
//-------------------------------------------------------------------------------------------
* insert MedicationAdministrationPcspRules


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  MedicationAdministrationPcsp
Parent:   MedicationAdministration 
Id:       MedicationAdministration-eu-pcsp
Title:    "MedicationAdministration PCSP"
Description: "This profile defines how to represent MedicationAdministration in FHIR for describing Chemotherapy data for the purpose of the PanCareSurPass project."
//-------------------------------------------------------------------------------------------

* insert MedicationAdministrationPcspRules
* effectivePeriod MS