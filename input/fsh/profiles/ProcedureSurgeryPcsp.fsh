



//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ProcedureSurgeryPcsp
Parent:   Procedure 
Id:       Procedure-surgery-eu-pcsp
Title:    "Procedure Surgery"
Description: "This profile defines how to represent Procedures in FHIR for describing a set of Surgery data required by the PanCareSurPass algorithm to generate the care plan. It is used also to provide inforamtion about shunt, amputation, and other procedures"
//-------------------------------------------------------------------------------------------

* extension contains 
   SacrifiedOrgan named sacrifiedOrgan 0..1
 
   
* extension[sacrifiedOrgan]



* text ^short = "Textual description of the surgical procedure"
* identifier ^short = "External Identifiers for this surgical procedure"
* partOf only Reference (ProcedureSurgeryPcsp)
* partOf ^short = "Reference to the parent surgery procedure"
* status MS
* category 1..
* category = $sct#387713003 "Surgical procedure" // check GPS
* code ^short = "Identification of the procedure." // used to indicate if it is an amputation, a shutn,....
* code from OtherSurgicalProcedureTypeVs (extensible)
// * code from SurgeryTypeVs 
// add slice on coding to allow more precise data
* subject only Reference(PatientPcsp)	
* subject MS

* performed[x] 1..
* performedDateTime ^short = "Date of the surgical procedure"
* reasonReference 1.. MS // add reference to the diagnosis
* reasonReference only Reference(ConditionPrimaryCancerPcsp)
* bodySite 0..1 MS 
* bodySite from AffectedOrganVs (extensible)
  * extension contains LateralityQualifier named laterality 0..1
  * extension[laterality].valueCodeableConcept from LateralityQualifierVS 

* location only Reference(LocationPcsp)
* focalDevice ^short = "Implanted or removed device"
  * action from SurgicalActionVs
  * manipulated ^short = "Device manipulated"
* usedCode ^short = "Coded items used during the procedure"
* usedCode from ProsthesisTypeVs (extensible) // update the value set

/* ---------- ATTIC BEGIN

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ProcedureOtherSurgeryPcsp
Parent:   Procedure 
Id:       Procedure-otherSurgery-eu-pcsp
Title:    "Procedure Surgery (other)"
Description: "This profile defines how to represent 'other' surgery procedures (minimal data) as used  by the PanCareSurPass project (e.g. shunt, "
//-------------------------------------------------------------------------------------------

* extension contains LateralityQualifier named laterality 0..1
* extension[laterality].valueCodeableConcept from LateralityQualifierVS

* text ^short = "Textual description of the surgical procedure"
* identifier ^short = "External Identifiers for this Surgery"
* status MS
* category 1..
* category = $sct#387713003 "Surgical procedure" // check GPS
* code ^short = "Identification of the procedure (amputation, shunt,..)"
* code from OtherSurgicalProcedureTypeVs 
// add slice on coding to allow more precise data
* subject only Reference(PatientPcsp)	
* subject MS
// * performed[x] 1..
// * performedDateTime ^short = "Date of the surgical procedure"
* reasonReference 1.. MS // add reference to the diagnosis
* reasonReference only Reference(ConditionPrimaryCancerPcsp)

// * bodySite 0..1 MS 
// * bodySite from AffectedOrganVs
// * location only Reference(LocationPcsp)
* focalDevice ^short = "Implanted or removed device"
  * action from SurgicalActionVs
  * manipulated ^short = "Device manipulated"
* usedCode ^short = "Coded items used during the procedure"
* usedCode from ProsthesisTypeVs (extensible) // update the value set

=== ATTIC END */