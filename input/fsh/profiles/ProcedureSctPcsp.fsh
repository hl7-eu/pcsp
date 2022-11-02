
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationBloodAboRh
Parent:   Observation
Id:       Observation-bld-abo-rh-eu-pcsp
Title:    "Observation: Blood type/RH"
Description: "This profile defines how to represent Blood type/RH  before or after the SCT in HL7 FHIR for the purpose of the PanCareSurPass project."
//-------------------------------------------------------------------------------------------

 
* code = $loinc#34530-6	"ABO and Rh group panel - Blood"

* effectiveTiming 1..
  * code 1..
  * code from SctTimingEvent
* subject 1..
* subject only Reference (PatientPcsp)
* value[x] 0..0

* component 2..2
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "code"
  * ^slicing.rules = #closed
  * ^slicing.description = "Slice based on the code value"
* component contains 
  	abo 0..1
  	and rh 0..1
* component[abo].code = $loinc#883-9	"ABO group [Type] in Blood"
* component[abo].valueCodeableConcept from $vs-LL2419-1 // ABO group
* component[rh].code = $loinc#10331-7	"Rh [Type] in Blood"
* component[rh].valueCodeableConcept from http://loinc.org/vs/LL360-9 // Pos|Neg
* partOf 1.. 
* partOf only Reference (ProcedureSctPcsp) 
 


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ConditionGvhdPcsp
Parent:   Condition
Id:       Condition-gvhd-eu-pcsp
Title:    "Condition: GvHD"
Description: "This profile defines how to represent Graft versus host disease (GvHD) in HL7 FHIR for the purpose of the PanCareSurPass project."
//-------------------------------------------------------------------------------------------

* extension contains 
    $condition-related named relatedPrimaryCancerCondition 1..1 and
    $condition-dueTo named conditionDueTo 1..1
* extension[relatedPrimaryCancerCondition].valueReference only Reference(ConditionPrimaryCancerPcsp)
* extension[relatedPrimaryCancerCondition] ^short = "Related Primary Cancer Condition"
* extension[relatedPrimaryCancerCondition] ^definition = "A reference to the primary cancer condition that provides context for this resource."

* extension[conditionDueTo].valueCodeableConcept 0..0
* extension[conditionDueTo].valueReference only Reference(ProcedureSctPcsp)
* extension[conditionDueTo].valueReference 1..
* extension[conditionDueTo] ^short = "SCT procedure causing this GcDH"
* extension[conditionDueTo] ^definition = "A reference to the procedure that caused this condition"


// * insert CancerConditionCommonRules
// * clinicalStatus and verificationStatus MS
  
* code 1.. MS // add value set; add slices for
* code from SctGvhdType

* onset[x] only dateTime
* abatement[x] only dateTime
* encounter only Reference (Encounter or EncounterPcsp)
* subject only Reference (PatientPcsp)
* bodySite ^short = "Organs affected by GVHD"

* stage
  * summary.coding 0.. MS
  * summary.coding ^slicing.discriminator.type = #pattern
  * summary.coding ^slicing.discriminator.path = "$this"
  * summary.coding ^slicing.rules = #open
  * summary.coding ^slicing.description = "Slice based on the coding pattern"
  * summary.coding contains 
  	acute 0..1
  	and chronic 0..1
  * summary.coding[acute] from SctAcuteGvhdGrade
  * summary.coding[chronic] from SctChronicGvhdGrade



//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  BiologicallyDerivedProductSctPcsp
Parent:   BiologicallyDerivedProduct	 
Id:       BiologicallyDerivedProduct-sct-eu-pcsp
Title:    "BiologicallyDerivedProduct: Stem Cell"
Description: "This profile defines how to represent Stem Cell in FHIR for describing a Stem Cell Transplantation data required by the PanCareSurPass algorithm to generate the care plan."
//-------------------------------------------------------------------------------------------

* extension contains 
  SctDonorType named sctDonorType 0..1
  and SctSourceType named sctSourceType 0..1
* extension[sctDonorType].valueCodeableConcept from SctDonorTypeVs
* extension[sctSourceType].valueCodeableConcept from SctSourceTypeVs
* productCategory = $product-category#cells
* collection.source ^short = "The patient providing the cells"


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ProcedureSctProphylaxisPcsp
Parent:   Procedure 
Id:       Procedure-sct-prophylaxis-eu-pcsp
Title:    "Procedure: SCT Prophylaxis"
Description: "This profile defines how to represent GVHD prophylaxis, conditioning regimen Procedures in FHIR for supporting Stem Cell Transplantation data, as required by the PanCareSurPass algorithm to generate the care plan."
//-------------------------------------------------------------------------------------------

* identifier ^short = "External Identifiers for this SCT-related procedure"
* status MS
* category 1..
* category from SctProphylaxisCathegory // check GPS
* subject only Reference(PatientPcsp)	
* subject 1..
* code from SctProphylaxisType (extensible)
* performedPeriod MS
* reasonReference 2.. MS // add reference to the diagnosis
* reasonReference only Reference(ConditionPrimaryCancerPcsp or ProcedureSctPcsp)


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ProcedureSctPcsp
Parent:   Procedure 
Id:       Procedure-sct-eu-pcsp
Title:    "Procedure: Stem Cell Transplantation"
Description: "This profile defines how to represent Procedures in FHIR for describing a set of Stem Cell Transplantation data required by the PanCareSurPass algorithm to generate the care plan."
//-------------------------------------------------------------------------------------------

* extension contains ProcedureUsedReference named usedReference 0..1
* extension[usedReference].valueReference only Reference(BiologicallyDerivedProductSctPcsp)


* identifier ^short = "External Identifiers for this Stem Cell Transplantation"
* status MS
* category 1..
* category = $sct#77465005 "Transplantation (procedure)"  // check GPS
* code ^short = "Identification of the procedure."
* code from SctTypeVs
* subject only Reference(PatientPcsp)	
* subject 1..
* performed[x] 1..
* performed[x] only dateTime 
* performed[x] ^short = "Date of the Stem Cell Transplantation"
* reasonReference 1..  // add reference to the diagnosis
* reasonReference only Reference(ConditionPrimaryCancerPcsp)

