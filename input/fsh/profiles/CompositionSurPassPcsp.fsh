
//====== RuleSet =====================================

RuleSet: SectionCommon
/* RuleSet: SectionCommon (short, def, code) */

* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* ^extension[=].valueString = "Section"
/* * ^short = "{short}"  
* ^definition = "{def}" */
* title 1..
* code 1..
/* * code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* code = {code} (exactly) */
* text 1..
* text only Narrative
* emptyReason ^short = "Why this section is empty"

//----------------------------------------------------------

RuleSet: SectionEntrySliceComRules (short, def)
* entry ^slicing.discriminator[+].type = #type
* entry ^slicing.discriminator[=].path = "resolve()"
* entry ^slicing.discriminator[+].type = #profile
* entry ^slicing.discriminator[=].path = "resolve()"
* entry ^slicing.ordered = false
* entry ^slicing.rules = #open
* entry ^short = "{short}"
* entry ^definition = "{def}" 
//----------------------------------------------------------

RuleSet: SectionEntrySliceDefRules (name, card, short, def, profiles)
// SectionEntrySliceDefRules (flags, 0.., "Care Team", "Care Team", CareTeamXeh)

* entry contains {name} {card}
* entry[{name}] {card}
* entry[{name}] ^short = "{short}"
* entry[{name}] ^definition = "{def}"
* entry[{name}] only Reference({profiles})

// -----------------------------------

RuleSet: SubSectionStructure


* section contains  chemotherapy	0..1
* section[chemotherapy]
  * insert SectionCommon
  * ^short = "Chemotherapy"
  * code = $loinc#11486-8
  * entry 1..
  * entry only Reference( MedicationAdministration or MedicationStatement or Procedure or DocumentReference )
  * insert SectionEntrySliceComRules (Chemotherapy, Chemotherapy)
  * insert SectionEntrySliceDefRules (medicationAdministration, 1.., MedicationAdministration Chemotherapy, MedicationAdministration Chemotherapy, MedicationAdministrationPcsp)
  * insert SectionEntrySliceDefRules (medicationStatement, 0.., MedicationStatement: Chemotherapy, MedicationStatementChemotherapy, MedicationStatementPcsp)				

* section contains  stemCellTransplantation	0..1
* section[stemCellTransplantation]
  * insert SectionCommon
  * ^short = "Stem Cell Transplantation"
  * code = CsGenericPcsp#section-sct
  * entry 1..
  * entry only Reference( Procedure or Condition or Observation or DocumentReference )
  * insert SectionEntrySliceComRules (Stem CelTransplantation, Stem Cell Transplantation)
  * insert SectionEntrySliceDefRules (sct, 0.., Stem CelTransplantation, Stem Cell Transplantation, ProcedureSctPcsp)
  * insert SectionEntrySliceDefRules (gvdh-prophylaxis, 0..,GVHD prophylaxis, GVHD prophylaxis, ProcedureSctProphylaxisPcsp)
  * insert SectionEntrySliceDefRules (gvdh, 0.., GvHD, Grafversus host disease (GvHD\), ConditionGvhdPcsp)
  * insert SectionEntrySliceDefRules (blood-abo, 0.., Blootype/RH, Blood type/RH, ObservationBloodAboRh)
    

* section contains  radiotherapy	0..1  
* section[radiotherapy]
  * insert SectionCommon
  * code = CsGenericPcsp#section-rt
  * ^short = "Radiotherapy"
  * entry 1..

  * entry only Reference(	Procedure or DocumentReference)
  * insert SectionEntrySliceComRules (Radiotherapy, Radiotherapy)
  * insert SectionEntrySliceDefRules (radiotherapy, 0.., Radiotherapy, Radiotherapy, ProcedureRadiotherapyPcsp)
  * insert SectionEntrySliceDefRules (boost, 0.., Radiotherapy Boost, Radiotherapy Boost, ProcedureRadiotherapyBoostPcsp)
  * insert SectionEntrySliceDefRules (shield, 0.., Radiotherapy Shielding, Radiotherapy Shielding, ProcedureRadiotherapyShieldingPcsp)


* section contains  majorSurgery	0..1    
* section[majorSurgery]
  * insert SectionCommon
  * code = $loinc#8690-0
  * ^short = "History of Surgical procedures"
  * entry 1..
  * entry only Reference(	Procedure or DocumentReference)
  * insert SectionEntrySliceComRules (Major Surgery, Major Surgery)
  * insert SectionEntrySliceDefRules (procedure, 0.., Surgical procedure, Surgical procedure, ProcedureSurgeryPcsp)

* section contains  otherInfos	0..1    
* section[otherInfos]
  * insert SectionCommon
  * code = CsGenericPcsp#section-otherInfos
  * ^short = "Other Medical Information"
  * entry 0..
  * entry only Reference(	 Condition or Procedure or DocumentReference )

  * insert SectionEntrySliceComRules (Other infos, Other infos)
  * insert SectionEntrySliceDefRules (conditionToxicity, 0.., Condition: Severe Toxicity, Condition: Severe Toxicity, ConditionToxicityPcsp)
  * insert SectionEntrySliceDefRules (conditionOtherInfos, 0.., Other Conditions,Other Conditions, ConditionOtherInfosPcsp)
  * insert SectionEntrySliceDefRules (procedureCVC, 0.., Procedure: Catheter,Procedure: Catheter, ProcedureCVCOtherInfosPcsp)
  * insert SectionEntrySliceDefRules (procedureTransfusion, 0.., Procedure: Transfusion,Procedure: Transfusion, ProcedureTransfusionOtherInfosPcsp)
  * insert SectionEntrySliceDefRules (procedureCryopreservation, 0.., Procedure: Cryopreservation,Procedure: Cryopreservation, ProcedureCryopreservationOtherInfosPcsp)
  * insert SectionEntrySliceDefRules (procedureOtherTreatment, 0.., Procedure: Other Treatments,Procedure: Other Treatments, ProcedureOtherTreatmentPcsp)


* section contains  medicalSuggestion	0..1     
* section[medicalSuggestion]
  * insert SectionCommon
  * code = CsGenericPcsp#section-suggestion
  * ^short = "Medical Suggestions"

// -----------------------------------

RuleSet: SectionCodeSlicingRules ( card )
* section {card}
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
* insert SectionCodeSlicingRules ( 1..* )
* section contains flt 1..*      
* section[flt] 
  * ^short = "Cancer diagnosis Narrative" // Front line treatment ?
  * code = $loinc#72135-7 
  * entry 1..
  * entry only Reference(	Condition or Procedure or DocumentReference)
  * insert SectionEntrySliceComRules (Tumor FLT detail, Entrdescribing the primary cancer and optionally FLT anmetastasis.)
  * insert SectionEntrySliceDefRules (primaryCancer, 1.., Primary Cancer, Primary Cancer or relapse during the treatment,   ConditionPrimaryCancerPcsp)
  * insert SectionEntrySliceDefRules (metastasis, 0.., Metastasis, Metastasis, ConditionSecondaryCancerPcsp)
  * insert SectionEntrySliceDefRules (flt, 0.., FLT, FronLine Treatment, ProcedureFltPcsp)


    // add slice with at leat one primary cancer 

  // define sub section comon rules					
  * insert SectionCommon
  

  // slice the diagnosis-FLT sub-sections
  * insert SectionCodeSlicingRules ( 1..* )
      
  // add the common sub sections
  * insert SubSectionStructure

   //  relapse After EOT section
  * section contains relapseAfterEOT 0..
  * section[relapseAfterEOT]

    * ^short = "Relapse After EOT"
    * code = CsGenericPcsp#section-relapseAfterEOT 
    // is this requested ?     
    * entry only Reference(	Condition or Procedure or DocumentReference)
    * insert SectionEntrySliceComRules (Tumor FLT detail, Entry describing the primary cancer and optionally FLT and metastasis.)
    * insert SectionEntrySliceDefRules (primaryCancer, 0.., Relapse, Relapse or progression after the end of treatment, ConditionPrimaryCancerPcsp)
    * insert SectionEntrySliceDefRules (metastasis, 0.., Metastasis, Metastasis, ConditionSecondaryCancerPcsp)
    * section ^short = "Chemo, Radio, SCT and other subsections"
    
/* // removed for avoiding build failures
    * insert SectionCodeSlicingRules ( 0..* )  	
// --- relapseAfterEOT Sub Sections begin   
    * insert SubSectionStructure	 
// --- relapseAfterEOT Sub Sections end  */
	
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
  * entry only Reference(	CarePlan or DocumentReference)
  * insert SectionEntrySliceComRules (Care Plan, Care Plan)
  * insert SectionEntrySliceDefRules (carePlan, 1.., Care Plan, Care Plan, CarePlanPcsp)