
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  DocumentReferencePcsp
Parent:   DocumentReference
Id:       DocumentReference-eu-pcsp
Title:    "DocumentReference PCSP"
Description: "This profile defines how to embed a PDF PCSP Survivor Passport in FHIR for the purpose of the PanCareSurPass project. This profile can be aslo used for send attachments (e.g Raditherapy reports or HDR) to the platform"
//-------------------------------------------------------------------------------------------

* status ^short = "The status of this reference"
* docStatus ^short = "The status of the document"
* type 1..
// * type = $loinc#74156-1	// "Oncology Plan of care and summary note"
// * type = $loinc#X-PCSP-1	
// * type = CsGenericPcsp#surpass
// * type.coding.display ^short = "Childhood Cancer Survivor Passport"
* type from DocRefDocType (extensible)
* type
  * ^example.label = "Passport"
  * ^example.valueCodeableConcept = CsGenericPcsp#surpass "Childhood Cancer Survivor Passport"
* subject 1.. 
* subject only Reference(PatientPcsp)
* date ^short = "When this reference was created"
* relatesTo ^short =  "Relationships to other documents."
* content.attachment
//  * contentType from DocRefMimeType (extensible) // Not supprted by the tool
  * contentType
    * ^example.label = "PDF"
    * ^example.valueCode = #application/pdf
  * language 1.. 
  * data 1.. // to be checked
  * title ^short = "Document title"
  * creation 1.. // to be checked ^short = "Date document was first created"

 // * contentType = #application/pdf
