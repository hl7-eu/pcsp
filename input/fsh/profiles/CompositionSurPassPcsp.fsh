
//====== RuleSet =====================================

RuleSet: SectionCommon

* title 1..
* code 1..
* text 1..
* emptyReason ^short = "Why this section is empty"


// -----------------------------------

RuleSet: SubSectionStructure


* section contains  chemotherapy	0..1
* section[chemotherapy]
  * insert SectionCommon
  * ^short = "Chemotherapy"
  * code = $loinc#11486-8
  * entry 1..
  * entry only Reference( MedicationAdministrationPcsp )				

* section contains  stemCellTransplantation	0..1
* section[stemCellTransplantation]
  * insert SectionCommon
  * ^short = "Stem Cell Transplantation"
  * code = CsGenericPcsp#section-sct
  * entry 1..
  * entry only Reference( ProcedureSctPcsp )

* section contains  radiotherapy	0..1  
* section[radiotherapy]
  * insert SectionCommon
  * code = CsGenericPcsp#section-rt
  * ^short = "Radiotherapy"
  * entry 1..
  * entry only Reference(	ProcedureRadiotherapyPcsp or ProcedureRadiotherapyBoostPcsp )

* section contains  majorSurgery	0..1    
* section[majorSurgery]
  * insert SectionCommon
  * code = $loinc#8690-0
  * ^short = "History of Surgical procedures"
  * entry 1..
  * entry only Reference( ProcedureSurgeryPcsp )

* section contains  otherInfos	0..1    
* section[otherInfos]
  * insert SectionCommon
  * code = CsGenericPcsp#section-otherInfos
  * ^short = "Other Medical Information"

* section contains  medicalSuggestion	0..1     
* section[medicalSuggestion]
  * insert SectionCommon
  * code = CsGenericPcsp#section-suggestion
  * ^short = "Medical Suggestions"

// -----------------------------------

RuleSet: SectionCodeSlicingRules
* section 1..*
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "code"
  * ^slicing.rules = #open
  * ^slicing.description = "Slice based on the coding.code pattern"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  CompositionSurpassPcsp
Parent:   Composition
Id:       Composition-surpass-eu-pcsp
Title:    "Composition: Survivor Passport"
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
* insert SectionCodeSlicingRules
* section contains flt 1..*      
* section[flt] 
  * ^short = "Cancer diagnosis Narrative" // Front line treatment ?
  * code = $loinc#72135-7 
  * entry 1..
  * entry only Reference(	ConditionPrimaryCancerPcsp or 
                          ConditionSecondaryCancerPcsp or
                          ProcedureFltPcsp)
    // add slice with at leat one primarycancer 
						
  * insert SectionCommon
  
  // slice the diagnosis-FLT section
  * insert SectionCodeSlicingRules
      
  // add common sub sections
  * insert SubSectionStructure

   //  relapse After EOT section
  * section contains relapseAfterEOT 0..
  * section[relapseAfterEOT]

    * ^short = "Relapse After EOT"
    * code = CsGenericPcsp#section-relapseAfterEOT 
    // is this requested ?
    * entry only Reference (ConditionPrimaryCancerPcsp or ConditionSecondaryCancerPcsp)					
    * insert SectionCommon

/*     
// removed for avoiding build failures
* insert SectionCodeSlicingRules  	
// --- relapseAfterEOT Sub Sections begin   
    * insert SubSectionStructure	 
// --- relapseAfterEOT Sub Sections end */
	
  * section contains otherConditions 0..1
  * section[otherConditions]
    * ^short = "Other Health Conditions"
    * code = CsGenericPcsp#section-otherConditions    
    * insert SectionCommon


* section contains  carePlan	0..1
* section[carePlan] 
  * ^short = "Plan of Care Section"
  * insert SectionCommon
  * code = $loinc#18776-5 
  * entry 1..
  * entry only Reference(	CarePlanPcsp )