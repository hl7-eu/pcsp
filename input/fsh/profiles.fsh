//============== ALIAS ===============
Alias: $ipsPatient = http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips
Alias: $patient-birthPlace = http://hl7.org/fhir/StructureDefinition/patient-birthPlace
Alias: $patient-mothersMaidenName = http://hl7.org/fhir/StructureDefinition/patient-mothersMaidenName
//=========================

//====== Profiles =====================================

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
* subject only Reference(Patient)
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
Profile:  ProcedureRadiotherapyMinPcsp
Parent:   Procedure 
Id:       Procedure-radiotheraphy-min-eu-pcsp
Title:    "Procedure Radiotherapy (Minimal Set)"
Description: "This profile defines how to represent Procedures in FHIR for describing a Minimal set of Radiotherapy data required by the PanCareSurPass algorithm to generate the care plan."
//-------------------------------------------------------------------------------------------

* status MS
* category MS // add Radiotherapy
* code 1..1 MS // TYPE - add 1 => External beam; 2 => Brachytherapy; 3 => Metabolic/radionuclide therapy
// add slice on coding to allow more precise data
* subject only Reference(PatientMinPcsp)	
* subject MS
* performedPeriod 1.. MS
* bodySite 1.. MS // add vocab





//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  MedicationStatementMinPcsp
Parent:   MedicationStatement 
Id:       MedicationStatement-min-eu-pcsp
Title:    "MedicationStatement (Minimal Set)"
Description: "This profile defines how to represent MedicationStatement in FHIR for describing a Minimal set of Chemotherapy data required by the PanCareSurPass algorithm to generate the care plan."
//-------------------------------------------------------------------------------------------

* status MS
* medicationCodeableConcept from VsPcspAtcCodes
* medicationCodeableConcept 1..1 MS
* reasonReference 1..1 MS
* dosage MS
* dosage only CumulativeDosePcsp

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  CumulativeDosePcsp
Parent:   Dosage 
Id:       Dosage-cum-eu-pcsp
Title:    "Dosage Cumulative Dose"
Description: "This profile defines how to represent Cumulative Dose using the Dosage data type in FHIR for the purpose of the PanCareSurPass project."
//-------------------------------------------------------------------------------------------

* doseAndRate.type = http://terminology.hl7.org/CodeSystem/dose-rate-type#calculated // FIND a more specifc code for cumulative dose
* doseAndRate.doseQuantity 1..1 MS

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationMinMedPcsp
Parent:   Observation 
Id:       Observation-min-med-eu-pcsp
Title:    "Observation Medication related (Minimal Set)"
Description: "This profile defines how to represent Medication related Observations in FHIR for describing a Minimal set of Chemotherapy data required by the PanCareSurPass algorithm to generate the care plan."
//-------------------------------------------------------------------------------------------

* status MS
* code from ObservationMedVs
* code MS
* valueCodeableConcept from http://loinc.org/vs/LL365-8 // Yes/No
* valueCodeableConcept 1.. MS


