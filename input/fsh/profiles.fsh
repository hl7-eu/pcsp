//============== ALIAS ===============
Alias: $ipsPatient = http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips
Alias: $patient-birthPlace = http://hl7.org/fhir/StructureDefinition/patient-birthPlace
Alias: $patient-mothersMaidenName = http://hl7.org/fhir/StructureDefinition/patient-mothersMaidenName
//=========================

//====== Profiles =====================================

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  PatientPcsp
Parent:   $ipsPatient
Id:       Patient-eu-pcsp
Title:    "Patient (PanCareSurPass)"
Description: "This profile defines how to represent Patient in FHIR for the purpose of the PanCareSurPass project."

//-------------------------------------------------------------------------------------------
* ^description = "Information about an individual receiving health care services"
* extension contains 
$patient-birthPlace named patient-birthPlace 0..1
and $patient-mothersMaidenName named patient-mothersMaidenName 0..1
* identifier 1.. MS
* name.family 1.. MS
* name.given 1.. MS
* gender 1.. MS
* birthDate 1.. MS
* contact.telecom 1.. MS
 


