//====== RuleSet =====================================

RuleSet: ProcedureRadiotherapyPcspRules
* extension contains ResourceRelatedInfo named relatedCumulativeDose 0..1
* extension[relatedCumulativeDose].valueReference only Reference(CumulativeDoseRadObsPcsp)
* status MS
* category MS // add Radiotherapy
* category = $sct#108290001 "Radiotherapy" // part of GPS
* code 1..1 MS // TYPE - add 1 => External beam (33195004 | External beam radiotherapy); 2 => Brachytherapy (152198000 | Brachytherapy ); 3 => Metabolic/radionuclide therapy (399315003 | Radionuclide therapy)
* code from RadiotherapyTypeVs 
// add slice on coding to allow more precise data
* subject only Reference(PatientPcsp)	
* subject MS
* performedPeriod 1.. MS
* reasonReference 1.. MS // add reference to the diagnosis
* reasonReference only Reference(ConditionPrimaryCancerPcsp)
* insert ProcedureRadiotherapyBodySite


RuleSet: ProcedureRadiotherapyBodySite

* bodySite 1..1 MS
* bodySite.extension contains
     $mcode-body-location-qualifier named locationQualifier 0..* 
     and LateralityQualifier named lateralityQualifier 0..1

	// $mcode-laterality-qualifier named lateralityQualifier 0..1
    // BodyLocationQualifier named locationQualifier 0..*   and   
* bodySite from VsRadiotherapy
* extension and bodySite and bodySite.extension[lateralityQualifier] MS
* bodySite.extension[locationQualifier] 


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ProcedureRadiotherapyPcsp
Parent:   Procedure 
Id:       Procedure-radiotheraphy-eu-pcsp
Title:    "Procedure Radiotherapy"
Description: "This profile defines how to represent Procedures in FHIR for describing a set of Radiotherapy data required by the PanCareSurPass algorithm to generate the care plan."
//-------------------------------------------------------------------------------------------


* extension contains $procedure-method named procedureMethod 0..1
* extension[procedureMethod].valueCodeableConcept from BrachytherapyType
* insert ProcedureRadiotherapyPcspRules
* location only Reference(LocationPcsp)
* identifier ^short = "External Identifiers for this radiotherapy"
* usedCode ^short = "Coded items used during the procedure"
* usedCode from RadiotherapyDeviceType // update the value set

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ProcedureRadiotherapyBoostPcsp
Parent:   Procedure 
Id:       Procedure-radiotheraphyBoost-eu-pcsp
Title:    "Procedure Radiotherapy Boost"
Description: "This profile defines how to represent Procedures in FHIR for describing a set of data required by PanCareSurPass for Radiotherapy Boosts" //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

* extension contains $procedure-method named procedureMethod 0..1
* extension[procedureMethod].valueCodeableConcept from BrachytherapyType
* insert ProcedureRadiotherapyPcspRules
* code.coding = $sct#445232009 "Boost radiation therapy"
* identifier ^short = "External Identifiers for this radiotherapy boost"
* partOf 1..
* partOf only Reference (ProcedureRadiotherapyPcsp)

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  CumulativeDoseRadObsPcsp
Parent:   Observation
Id:       Observation-cumulativeDoseRad-eu-pcsp
Title:    "Observation Radiotherapy Cumulative Dose PCSP"
Description: "This profile defines how to represent Radiotherapy Cumulative Dose in FHIR for the purpose of the PanCareSurPass project."
//-------------------------------------------------------------------------------------------

* insert CumulativeDoseObsRules
* category MS
* category = $observation-category#procedure 
// * code = $dicomOntology#113725 "Dose (RP) Total" // evaluate 445565002 | Total boost radiation dose delivered (observable entity) AND 445461008 | Total radiation dose delivered (observable entity)
* code MS
* code from RadiotherapyDoseTypeVs
* insert ProcedureRadiotherapyBodySite




/* ======

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ProcedureRadiotherapyMinPcsp
Parent:   Procedure 
Id:       Procedure-radiotheraphy-min-eu-pcsp
Title:    "Procedure Radiotherapy (Minimal Set)"
Description: "This profile defines how to represent Procedures in FHIR for describing a Minimal set of Radiotherapy data required by the PanCareSurPass algorithm to generate the care plan."
//-------------------------------------------------------------------------------------------
* insert ProcedureRadiotherapyPcspRules



==== */