//=========================

//====== Extensions =====================================
Extension: ResourceRelatedInfo
Id:   ResourceRelatedInfo-eu-pcsp
Title:  "Resource related information"
Description: "This extension provides a means to link the source resource to any target related information. This extension shall not be used when other more specific elements or standard extensions apply. E.g. Observation.hasMember "
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* value[x] only Reference (Resource)
//====== Profiles =====================================

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ConditionCancerPcsp
Parent:   Condition
Id:       Condition-cancer-eu-pcsp
Title:    "Cancer Condition"
Description: "This abstract profile defines how to represent Cancer Condition in FHIR for the purpose of the PanCareSurPass project."
//-------------------------------------------------------------------------------------------
* ^abstract = true
* code 1.. MS // add value set; add slices for
* code.coding 0.. MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding ^slicing.description = "Slice based on the coding.code pattern"
* code.coding contains 
	iccc3-classification 0..1 MS and 
	icdo3-morphology 0..1 MS  // other codes to add ?
	// icdo3-topography 0..1 MS  // check if this slice is correct here or it should be in the bodySite
* code.coding[iccc3-classification] from ICCC3Vs
* code.coding[icdo3-morphology] from ICDO3MorphologyVs
* bodySite MS // check if a bodyStructure is needed  
* bodySite from ICDO3TopographyVs 

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ConditionPrimaryCancerPcsp
Parent:   ConditionCancerPcsp
Id:       Condition-primaryCancer-eu-pcsp
Title:    "Primary Cancer Condition"
Description: "This abstract profile defines how to represent Primary Cancer Condition in FHIR for the purpose of the PanCareSurPass project."
//-------------------------------------------------------------------------------------------
* ^abstract = false

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ConditionSecondaryCancerPcsp
Parent:   ConditionCancerPcsp
Id:       Condition-secondaryCancer-eu-pcsp
Title:    "Secondary Cancer Condition"
Description: "This abstract profile defines how to represent Secondary Cancer Condition in FHIR for the purpose of the PanCareSurPass project."
//-------------------------------------------------------------------------------------------
* ^abstract = false
* extension contains $condition-related named primaryCancer-condition 0..1
* extension[primaryCancer-condition].valueReference only Reference(ConditionPrimaryCancerPcsp)


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  CumulativeDoseObsPcsp
Parent:   Observation
Id:       Observation-cumulativeDose-eu-pcsp
Title:    "Observation Cumulative Dose "
Description: "This abstract profile defines how to represent Cumulative Dose in FHIR for the purpose of the PanCareSurPass project."
//-------------------------------------------------------------------------------------------
// * identifier MS
* ^abstract = true
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
* valueQuantity.unit MS // add VS binding ?
* valueCodeableConcept = $loinc#LA4489-6 "Unknown" 
* component 0..

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  CumulativeDoseRadObsPcsp
Parent:   CumulativeDoseObsPcsp
Id:       Observation-cumulativeDoseRad-eu-pcsp
Title:    "Observation Radiotherapy Cumulative Dose "
Description: "This profile defines how to represent Radiotherapy Cumulative Dose in FHIR for the purpose of the PanCareSurPass project."
//-------------------------------------------------------------------------------------------

* ^abstract = false
* category MS
* category = $observation-category#procedure 
// * code = $dicomOntology#113725 "Dose (RP) Total" // evaluate 445565002 | Total boost radiation dose delivered (observable entity) AND 445461008 | Total radiation dose delivered (observable entity)
* code MS
* code from RadiotherapyDoseTypeVs
* bodySite 1.. MS 
* bodySite from VsRadiotherapy

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  CumulativeDoseChemoObsPcsp
Parent:   CumulativeDoseObsPcsp
Id:       Observation-cumulativeDoseChemo-eu-pcsp
Title:    "Observation Chemotherapy Cumulative Dose"
Description: "This profile defines how to represent Chemotherapy Cumulative Dose in FHIR for the purpose of the PanCareSurPass project."
//-------------------------------------------------------------------------------------------
* ^abstract = false
* category MS
* category = $observation-category#procedure  // to be checked
* code MS
* code = CsGenericPcsp#cumulativeDose //  local code

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  CarePlanPcsp
Parent:   CarePlan
Id:       CarePlan-eu-pcsp
Title:    "CarePlan"
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
Profile:  PatientPcsp
Parent:   $ipsPatient
Id:       Patient-eu-pcsp
Title:    "Patient"
Description: "This profile defines how to represent Patient in FHIR for the purpose of the PanCareSurPass project."
//-------------------------------------------------------------------------------------------
* . ^short = "Information about an individual receiving health care services"
* . ^definition = "Information about an individual receiving health care services"
* extension contains 
$patient-birthPlace named patient-birthPlace 0..1
and $patient-mothersMaidenName named patient-mothersMaidenName 0..1
* identifier 1.. MS
* name.family 1.. MS
* name.given 1.. MS
* gender 1.. MS
* birthDate 1.. MS
* contact.telecom 1.. MS

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  PatientMinPcsp
Parent:   Patient
Id:       Patient-min-eu-pcsp
Title:    "Patient (Minimal Set)"
Description: "This profile defines how to represent a minimal set of Patient data in FHIR for representing the Treatment Summary inforation required by the PanCareSurPass algorithm to generate the care plan."
//-------------------------------------------------------------------------------------------
* gender 1.. MS
* birthDate 1.. MS 


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
* subject only Reference(PatientMinPcsp)	
* subject MS
* performedPeriod 1.. MS
* reasonReference 1.. MS // add reference to the diagnosis
* reasonReference only Reference(ConditionCancerPcsp)
* bodySite 1.. MS 
* bodySite from VsRadiotherapy


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ProcedureRadiotherapyMinPcsp
Parent:   Procedure 
Id:       Procedure-radiotheraphy-min-eu-pcsp
Title:    "Procedure Radiotherapy (Minimal Set)"
Description: "This profile defines how to represent Procedures in FHIR for describing a Minimal set of Radiotherapy data required by the PanCareSurPass algorithm to generate the care plan."
//-------------------------------------------------------------------------------------------
* extension contains ResourceRelatedInfo named relatedCumulativeDose 0..1
* extension[relatedCumulativeDose].valueReference only Reference(CumulativeDoseRadObsPcsp)
* status MS
* category MS // add Radiotherapy
* category = $sct#108290001 "Radiotherapy" // part of GPS
* code 1..1 MS // TYPE - add 1 => External beam (33195004 | External beam radiotherapy); 2 => Brachytherapy (152198000 | Brachytherapy ); 3 => Metabolic/radionuclide therapy (399315003 | Radionuclide therapy)
* code from RadiotherapyTypeVs
// add slice on coding to allow more precise data
* subject only Reference(PatientMinPcsp)	
* subject MS
* performedPeriod 1.. MS
* reasonReference 1.. MS // add reference to the diagnosis
* reasonReference only Reference(ConditionCancerPcsp)
* bodySite 1.. MS 
* bodySite from VsRadiotherapy

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  MedicationAdministrationMinPcsp
Parent:   MedicationAdministration 
Id:       MedicationAdministration-min-eu-pcsp
Title:    "MedicationAdministration (Minimal Set)"
Description: "This profile defines how to represent MedicationAdministration in FHIR for describing a Minimal set of Chemotherapy data required by the PanCareSurPass algorithm to generate the care plan."
//-------------------------------------------------------------------------------------------

* extension contains ResourceRelatedInfo named relatedCumulativeDose 0..1
* extension[relatedCumulativeDose].valueReference only Reference(CumulativeDoseChemoObsPcsp)
* status MS
* medicationCodeableConcept from VsPcspAtcCodes
* medicationCodeableConcept 1..1 MS
* reasonReference 1..1 MS // add reference to the diagnosis
* reasonReference only Reference(ConditionCancerPcsp)


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


