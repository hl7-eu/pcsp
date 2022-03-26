
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  DocumentReferencePcsp
Parent:   DocumentReference
Id:       DocumentReference-eu-pcsp
Title:    "DocumentReference PCSP"
Description: "This profile defines how to embed a PDF PCSP Survivor Passport in FHIR for the purpose of the PanCareSurPass project."
//-------------------------------------------------------------------------------------------

* status and docStatus MS
* type 1.. MS
// * type = $loinc#74156-1	// "Oncology Plan of care and summary note"
// * type = $loinc#X-PCSP-1	
* type = CsGenericPcsp#surpass
* type.coding.display ^short = "Childhood Cancer Survivor Passport"
* subject 1.. MS
* subject only Reference(PatientPcsp)
* date MS
* relatesTo MS
* content.attachment.contentType = #application/pdf
* content.attachment.language 1.. 
* content.attachment.data 1.. 

