//============== ALIAS ===============
Alias: $ipsPatient = http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips
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

