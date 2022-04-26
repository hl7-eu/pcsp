//====== RuleSet =====================================

RuleSet: MedicationAdministrationPcspRules
* extension contains 
		ResourceRelatedInfo named relatedCumulativeDose 0..1 
		and EventLocation named location 0..1
* extension[relatedCumulativeDose].valueReference only Reference(CumulativeDoseChemoObsPcsp)
* extension[location].valueReference only Reference(LocationPcsp)
* status MS
* subject 1..
* subject only Reference(PatientPcsp)
* medicationCodeableConcept from VsPcspAtcCodes (extensible)
* medicationCodeableConcept 1..1 MS
* reasonReference 1..1 // add reference to the diagnosis
* reasonReference only Reference(ConditionPrimaryCancerPcsp)


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  CumulativeDoseChemoObsPcsp
Parent:   Observation
Id:       Observation-cumulativeDoseChemo-eu-pcsp
Title:    "Observation Chemotherapy Cumulative Dose"
Description: "This profile defines how to represent Chemotherapy Cumulative Dose in FHIR for the purpose of the PanCareSurPass project."
//-------------------------------------------------------------------------------------------
* insert CumulativeDoseObsRules
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
  * code from ChemoUnitsVs
* dataAbsentReason ^short = "Not calculated or not known dose"
* dataAbsentReason from NotPerformedUnknownVs
* method from CalculatedEstimatedVs



//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  MedicationAdministrationPcsp
Parent:   MedicationAdministration 
Id:       MedicationAdministration-eu-pcsp
Title:    "MedicationAdministration PCSP"
Description: "This profile defines how to represent MedicationAdministration in FHIR for describing Chemotherapy data for the purpose of the PanCareSurPass project."
//-------------------------------------------------------------------------------------------

* insert MedicationAdministrationPcspRules
* extension contains $workflow-supportingInfo named supportingInfo 0..*
* extension[supportingInfo] 0..*
* extension[supportingInfo].valueReference only Reference(DocumentReference)
* effectivePeriod MS
* dosage.dose 
  * ^short = "Amount per dose"
  * value 1.. MS
  * system 1.. MS
  * system = $ucum
  * code 1.. MS 
  * unit MS 

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  MedicationStatementPcsp
Parent:   MedicationStatement 
Id:       MedicationStatement-eu-pcsp
Title:    "MedicationStatement PCSP"
Description: "This profile defines how to represent MedicationStatement in FHIR for describing minimal information about provided medications for the purpose of the PanCareSurPass project."
//-------------------------------------------------------------------------------------------
* status ^short = "active | completed | entered-in-error | intended | stopped | on-hold | unknown |not-taken"

* status 
  * ^example.valueCode = #completed
  * ^example.label = "general"
  
* medicationCodeableConcept
  * ^example.valueCodeableConcept = $atc#H02 "CORTICOSTEROIDS FOR SYSTEMIC USE"
  * ^example.label = "general"

* reasonReference MS
* reasonReference ^short = "Required if related to chemotherapy treatments"
* reasonReference only Reference(ConditionPrimaryCancerPcsp)

// add a slice for category H02 CORTICOSTEROIDS FOR SYSTEMIC USE

* dosage.route
  * ^example.valueCodeableConcept = $edqm#20042000 "Intrathecal use"
  * ^example.label = "general"
  
// 20042000 edqm Intrathecal use
* dosage.timing.repeat.count ^short = "Number of administration"
* dosage.timing.repeat.boundsDuration ^short = "Length/Range of lengths, or (Start and/or end) limits."

/*==== BEGIN 
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  MedicationAdministrationMinPcsp
Parent:   MedicationAdministration 
Id:       MedicationAdministration-min-eu-pcsp
Title:    "MedicationAdministration (PCSP Minimal Set)"
Description: "This profile defines how to represent MedicationAdministration in FHIR for describing a Minimal set of Chemotherapy data required by the PanCareSurPass algorithm to generate the care plan."
//-------------------------------------------------------------------------------------------
* insert MedicationAdministrationPcspRules

==== END */