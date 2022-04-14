



//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ProcedureSctPcsp
Parent:   Procedure 
Id:       Procedure-sct-eu-pcsp
Title:    "Procedure Stem Cell Transplantation"
Description: "This profile defines how to represent Procedures in FHIR for describing a set of Stem Cell Transplantation data required by the PanCareSurPass algorithm to generate the care plan.
 \r\n Maturity Model: 0 - Draft"
//-------------------------------------------------------------------------------------------


/* ===
 * extension contains SacrifiedOrgan named sacrifiedOrgan 0..1
* extension[sacrifiedOrgan]
* text ^short = "Textual description of the surgical procedure"
=== */


* identifier ^short = "External Identifiers for this Stem Cell Transplantation"
* status MS
* category 1..
* category = $sct#77465005 "Transplantation (procedure)"  // check GPS
* code ^short = "Identification of the procedure."
// * code from SurgeryTypeVs 
// add slice on coding to allow more precise data
* subject only Reference(PatientPcsp)	
* subject MS
* performed[x] 1..
* performedDateTime ^short = "Date of the surgical procedure"
* reasonReference 1.. MS // add reference to the diagnosis
* reasonReference only Reference(ConditionPrimaryCancerPcsp)


/* =======

* bodySite 0..1 MS 
* bodySite from AffectedOrganVs
* location only Reference(LocationPcsp)
* focalDevice ^short = "Implanted or removed device"
  * action from SurgicalActionVs
  * manipulated ^short = "Device manipulated"
// * usedCode ^short = "Coded items used during the procedure"
// * usedCode from SurgeryDeviceType // update the value set

==== */