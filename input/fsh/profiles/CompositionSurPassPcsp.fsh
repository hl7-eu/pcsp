
//====== RuleSet =====================================

RuleSet: SectionCommon
* title 1..
* code 1..
* text 1..
* emptyReason ^short = "Why this section is empty"

RuleSet: SubSectionStructure


* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "$this.resolve()"
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section ^slicing.description = "Slice based on the coding.code pattern"
* section contains
   chemotherapy			  0..1 and		 
   stemCellTransplantation  0..1 and
   radiotherapy			  0..1 and
   majorSurgery			  0..1 and
   otherInfos				  0..1 and
   medicalSuggestion 		  0..1

* section[chemotherapy]
//   * insert SectionCommon
//  * code ^short = "Chemotherapy"
  * code = $loinc#11486-8
  * entry 1..
  * entry only Reference( MedicationAdministrationPcsp )
						
* section[stemCellTransplantation]
//   * insert SectionCommon
//  * code ^short = "Stem Cell Transplantation"
  * code = CsGenericPcsp#section-sct
  * entry 1..
  * entry only Reference( ProcedureSctPcsp )
  
* section[radiotherapy]
//   * insert SectionCommon
  * code = CsGenericPcsp#section-rt
//  * code ^short = "Radiotherapy"
  * entry 1..
  * entry only Reference(	ProcedureRadiotherapyPcsp or ProcedureRadiotherapyBoostPcsp )
* section[majorSurgery]
//   * insert SectionCommon
  * code = $loinc#8690-0
//  * code ^short = "History of Surgical procedures"
  * entry 1..
  * entry only Reference( ProcedureSurgeryPcsp )
  
* section[otherInfos]
//   * insert SectionCommon
  * code = CsGenericPcsp#section-otherInfos
//  * code ^short = "Other Medical Information"
  
* section[medicalSuggestion]
//   * insert SectionCommon
  * code = CsGenericPcsp#section-suggestion
//  * code ^short = "Medical Suggestions"


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

//  * code ^short = "Cancer diagnosis Narrative" // Front line treatment ?
  * code = $loinc#72135-7 
  * entry 1..
  * entry only Reference(	ConditionPrimaryCancerPcsp or
							ProcedureFltPcsp
						)
  * section 1..*
//   * insert SectionCommon
  * insert SubSectionStructure

  * section contains relapseAfterEOT 0..
  * section[relapseAfterEOT]
    * code = CsGenericPcsp#section-relapseAfterEOT
  //  * code ^short = "Relapse After EOT"
  //  * insert SubSectionStructure
  * section contains otherConditions 0..1
  * section[otherConditions]
    * code = CsGenericPcsp#section-otherConditions
  //  * code ^short = "Other Health Conditions"
