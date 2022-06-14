
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  DocumentReferencePcsp
Parent:   DocumentReference
Id:       DocumentReference-eu-pcsp
Title:    "DocumentReference PCSP"
Description: "This profile defines how to embed a PDF PCSP Survivor Passport in FHIR for the purpose of the PanCareSurPass project."
//-------------------------------------------------------------------------------------------

* status ^short = "The status of this reference"
* docStatus ^short = "The status of the document"
// * type 1.. MS
// * type = $loinc#74156-1	// "Oncology Plan of care and summary note"
// * type = $loinc#X-PCSP-1	
* type = CsGenericPcsp#surpass
* type.coding.display ^short = "Childhood Cancer Survivor Passport"
* subject 1.. 
* subject only Reference(PatientPcsp)
* date ^short = "When this reference was created"
* relatesTo ^short =  "Relationships to other documents."
* content.attachment
  * contentType = #application/pdf
  * language 1.. 
  * data 1.. // to be checked
  * title ^short = "Document title"
  * creation 1.. // to be chceked ^short = "Date document was first created"

