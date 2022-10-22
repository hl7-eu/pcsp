
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  PatientPcsp
Parent:   $Patient-uv-ips
Id:       Patient-eu-pcsp
Title:    "Patient PCSP"
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
  * extension contains $originalText named originalText 0..1
* birthDate 1.. MS
* contact.telecom 1.. MS
* generalPractitioner
* generalPractitioner ^slicing.discriminator.type = #type
* generalPractitioner ^slicing.discriminator.path = "resolve()"
* generalPractitioner ^slicing.rules = #open
* generalPractitioner ^slicing.description = "Slice based on the reference type"
* generalPractitioner contains 
	primaryTreatmentCenter	0..1 MS
* generalPractitioner[primaryTreatmentCenter] only Reference (OrganizationCenterPcsp or Organization)
  * ^short = "Primary treatment center"
  * ^definition = "Report here the institution in which most of the treatment was given"
  * identifier ^short = "Business identifier of the Primary treatment center"
  * display ^short = "Short textual description of the Primary treatment center"