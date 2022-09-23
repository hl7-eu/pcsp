//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ConditionToxicityPcsp
Parent:   Condition
Id:       Condition-toxicity-eu-pcsp
Title:    "Condition: Severe Toxicity"
Description: "This profile defines how to describe a Severe Toxicity event in HL7 FHIR for the purpose of the PanCareSurPass project."
//-------------------------------------------------------------------------------------------

* extension contains $condition-related named relatedPrimaryCancerCondition 1..1
* extension[relatedPrimaryCancerCondition].valueReference only Reference(ConditionPrimaryCancerPcsp)
* extension[relatedPrimaryCancerCondition] ^short = "Related Cancer Condition"
* extension[relatedPrimaryCancerCondition] ^definition = "A reference to the cancer condition that provides context for this resource."

* subject 1..
* subject only Reference(PatientPcsp)

* code 1..1
* code = $sct#75478009 "Toxicity"
* onsetDateTime ^short = "onset date, omitted if unknown"

* clinicalStatus from ActiveResolvedConditionVS
* clinicalStatus ^short = "Element omitted if status unknown"
* verificationStatus ^short = "Verification status"
* severity from ToxicitySeverityVS


* note ^short = "Notes"



//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ConditionOtherInfosPcsp
Parent:   Condition
Id:       Condition-otherinfos-eu-pcsp
Title:    "Condition: Others"
Description: "This profile defines how to describe the presence of some other conditions (e.g. Hypogonadism, Growth hormone deficiency, Hydrocephalus in HL7 FHIR for the purpose of the PanCareSurPass project."
//-------------------------------------------------------------------------------------------

* extension contains 
    $condition-related named relatedPrimaryCancerCondition 1..1 and
    $condition-dueTo named conditionDueTo 0..1
* extension[relatedPrimaryCancerCondition].valueReference only Reference(ConditionPrimaryCancerPcsp)
* extension[relatedPrimaryCancerCondition] ^short = "Related Cancer Condition"
* extension[relatedPrimaryCancerCondition] ^definition = "A reference to the cancer condition that provides context for this resource."

* extension[conditionDueTo].valueReference only Reference(ProcedureCVCOtherInfosPcsp)
* extension[conditionDueTo] ^short = "CVC procedure causing this Thrombosis, required for Thrombosis"
* extension[conditionDueTo] ^definition = "A reference to the procedure that caused this condition. Required for Thrombosis"
// ADD INVARIANT THIS IS MANDATORY IF THE CONDITION IS a Thrombosis 

* subject 1..
* subject only Reference(PatientPcsp)

* code 1..1
* code from OtherInfosConditionVS

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ProcedureCVCOtherInfosPcsp
Parent:   Procedure
Id:       Procedure-cvc-otherinfos-eu-pcsp
Title:    "Procedure: Catheter"
Description: "This profile defines how to describe the  Catheterization of vein Procedure in HL7 FHIR for the purpose of the PanCareSurPass project."
//-------------------------------------------------------------------------------------------

* code = $sct#392230005 "Catheterization of vein"
* subject 1..
* subject only Reference(PatientPcsp)
* reasonReference 1..  // add reference to the diagnosis
* reasonReference only Reference(ConditionPrimaryCancerPcsp)
* bodySite ^short = "In which vein the CVC was positioned"
* focalDevice ^short = "Implanted or removed Catheter"
  * action from SurgicalActionVs (extensible)
  * manipulated.display ^short = "Catheter"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ProcedureTransfusionOtherInfosPcsp
Parent:   Procedure
Id:       Procedure-transfusion-otherinfos-eu-pcsp
Title:    "Procedure: Transfusion other infos"
Description: "This profile defines how to describe the Transfusion Procedure in HL7 FHIR for the purpose of the PanCareSurPass project."
//-------------------------------------------------------------------------------------------

* extension contains PerformedTiming named performedTiming 0..1

* extension[performedTiming].valueTiming.repeat.count ^short = "Number of transfusions"
* extension[performedTiming].valueTiming.repeat.boundsRange.low ^short = "Minimal Number of transfusions"
* extension[performedTiming].valueTiming.event ^short = "When the event occurs" // CHECK why it is not shown

* code = $sct#5447007 "Transfusion" 
* subject 1..
* subject only Reference(PatientPcsp)
* reasonReference 1..  // add reference to the diagnosis
* reasonReference only Reference(ConditionPrimaryCancerPcsp)



//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ProcedureCryopreservationOtherInfosPcsp
Parent:   Procedure
Id:       Procedure-cryopreservation-otherinfos-eu-pcsp
Title:    "Procedure: Cryopreservation"
Description: "This profile defines how to describe the cryopreservation of sperms or oocyte for cancer patient in HL7 FHIR for the purpose of the PanCareSurPass project."
//-------------------------------------------------------------------------------------------

* code = $sct#88094004 "Cryopreservation" 
* subject 1..
* subject only Reference(PatientPcsp)
* reasonReference 1..  // add reference to the diagnosis
* reasonReference only Reference(ConditionPrimaryCancerPcsp)
* location ^short = "Where the Cryopreservation happened"


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ProcedureOtherTreatmentPcsp
Parent:   Procedure
Id:       Procedure-treatment-otherinfos-eu-pcsp
Title:    "Procedure: Other Treatments"
Description: "This profile defines how to convey textual information about other oncological treatments in HL7 FHIR for the purpose of the PanCareSurPass project."
//-------------------------------------------------------------------------------------------

* text 1..
* text ^short = "Any other treatment (not included in the chemotherapy, surgery or radiotherapy sections)"
* code = CsGenericPcsp#other-treatment "Other oncological treatments"  
* subject 1..
* subject only Reference(PatientPcsp)
* reasonReference 1..  // add reference to the diagnosis
* reasonReference only Reference(ConditionPrimaryCancerPcsp)


/*

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationToxicityPcsp
Parent:   Observation
Id:       Observation-toxicity-eu-pcsp
Title:    "Observation: Severe Toxicity event"
Description: "This profile defines how to describe a Severe Toxicity event in HL7 FHIR for the purpose of the PanCareSurPass project."
//-------------------------------------------------------------------------------------------
* extension contains ResourceRelatedInfo named relatedCondition 0..1
* extension[relatedCondition].valueReference only Reference(ConditionPrimaryCancerPcsp)
* subject 1..
* subject only Reference(PatientPcsp)
* effectivePeriod.start 0..1
  * ^short "Date of the event onset. Missing if Unknown"
* category 1..1 
* category = $loinc#89793-4 "Event description"
* valueCodeableConcept 1..1
* note ^short = "Notes"
* valueCodeableConcept = $sct#75478009 "Toxicity"
* component[+].code =  $sct#404684003 "Clinical finding"
* component[=].valueCodeableConcept 
* component[+].code =  $v3-ActCode#SEV "Severity"
* component[=].valueCodeableConcept from ToxicitySeverityVS
// * component[=].valueDate 
// * component[+].code =  $loinc#67723-7 "Date of health-related event"
*/