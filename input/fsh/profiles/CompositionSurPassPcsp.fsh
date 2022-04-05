//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  CompositionSurpassPcsp
Parent:   Composition
Id:       Composition-surpass-eu-pcsp
Title:    "Composition Surpass PCSP"
Description: "This profile defines how to represent a PCSP Survivor Passport by using a HL7 FHIR Composition for the purpose of the PanCareSurPass project."
//-------------------------------------------------------------------------------------------

* identifier ^short = "Business identifier for this SurPass"
* status ^short = "preliminary|final|amended|entered-in-error"
* type = CsGenericPcsp#surpass
* type.coding.display ^short = "Childhood Cancer Survivor Passport"
* subject 1.. 
* subject only Reference(PatientPcsp)
* date ^short = "SurPass Composition editing time"
* author ^short = "Who and/or what authored this SurPass"
* title 1.. 
  * ^short = "Childhood Cancer Survivor Passport"
* attester ^short = "Who attested the accuracy of this SurPass"
* section 1..*
  * title 1..
  * code 1..
  * code ^short = "Cancer diagnosis Narrative"
  * code = $loinc#72135-7 
  * text 1..
  * entry 1..
  * entry only Reference(ConditionPrimaryCancerPcsp or ConditionSecondaryCancerPcsp or TNMDistantMetastasesCategory or TNMPrimaryTumorCategory or TNMRegionalNodesCategory)
  * section 1..*