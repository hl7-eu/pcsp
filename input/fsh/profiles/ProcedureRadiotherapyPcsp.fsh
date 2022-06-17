//====== RuleSet =====================================

RuleSet: ProcedureRadiotherapyPcspRules
* extension contains 
	ResourceRelatedInfo named relatedDose 0..1
	and $procedure-method named procedureMethod 0..1
	and RadiotherapyEnergyOrIsotope named energyOrIsotope 0..*
	and PerformedTiming named performedTiming 0..1
	
* extension[relatedDose].valueReference only Reference(TotalDoseRadObsPcsp)
* extension[energyOrIsotope]
* extension[procedureMethod].valueCodeableConcept from BrachytherapyType
* extension[performedTiming]

* identifier ^short = "External Identifiers for this radiotherapy / boost"
* status ^short = "Procedure status"
* category = $sct#108290001 "Radiotherapy" // part of GPS
* code 1..1  // TYPE - add 1 => External beam (33195004 | External beam radiotherapy); 2 => Brachytherapy (152198000 | Brachytherapy ); 3 => Metabolic/radionuclide therapy (399315003 | Radionuclide therapy)
* code from RadiotherapyTypeVs (extensible)
// add slice on coding to allow more precise data
* subject only Reference(PatientPcsp)	
* performedPeriod 1.. 
* reasonReference 1..  // add reference to the diagnosis
* reasonReference only Reference(ConditionPrimaryCancerPcsp)
* insert ProcedureRadiotherapyBodySite
* note ^short = "Additional information about the Radiotherapy" 


RuleSet: ProcedureRadiotherapyBodySite

* bodySite 1..1 
* bodySite.extension contains
     $mcode-body-location-qualifier named locationQualifier 0..* 
     and LateralityQualifier named lateralityQualifier 0..1

	// $mcode-laterality-qualifier named lateralityQualifier 0..1
    // BodyLocationQualifier named locationQualifier 0..*   and   
* bodySite from VsRadiotherapy
// * extension and bodySite and bodySite.extension[lateralityQualifier] MS
* bodySite.extension[locationQualifier] 


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ProcedureRadiotherapyPcsp
Parent:   Procedure 
Id:       Procedure-radiotheraphy-eu-pcsp
Title:    "Procedure Radiotherapy"
Description: "This profile defines how to represent Procedures in FHIR for describing a set of Radiotherapy data required by the PanCareSurPass algorithm to generate the care plan."
//-------------------------------------------------------------------------------------------

* insert ProcedureRadiotherapyPcspRules
* location only Reference(LocationPcsp)
* usedCode ^short = "Coded items used during the procedure"
* usedCode from RadiotherapyDeviceType (extensible) // update the value set




//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ProcedureRadiotherapyShieldingPcsp
Parent:   Procedure 
Id:       Procedure-radiotheraphyShield-eu-pcsp	
Title:    "Procedure Radiotherapy Shielding"
Description: "This profile defines how to represent Shielding Procedures in FHIR for describing a set of Radiotherapy data required by the PanCareSurPass algorithm to generate the care plan."
//-------------------------------------------------------------------------------------------

* insert ProcedureRadiotherapyPcspRules
* code = $sct#228720004 "Making of shielding block for radiotherapy"
* partOf 1..1
* partOf only Reference (ProcedureRadiotherapyPcsp)



//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ProcedureRadiotherapyBoostPcsp
Parent:   Procedure 
Id:       Procedure-radiotheraphyBoost-eu-pcsp
Title:    "Procedure Radiotherapy Boost"
Description: "This profile defines how to represent Procedures in FHIR for describing a set of data required by PanCareSurPass for Radiotherapy Boosts" //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


* insert ProcedureRadiotherapyPcspRules
* code = $sct#445232009 "Boost radiation therapy"
* partOf 1..1
* partOf only Reference (ProcedureRadiotherapyPcsp)

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  TotalDoseRadObsPcsp
Parent:   Observation
Id:       Observation-totalDoseRad-eu-pcsp
Title:    "Observation Radiotherapy Total Dose PCSP"
Description: "This profile defines how to represent Radiotherapy Total Dose in FHIR for the purpose of the PanCareSurPass project."
//-------------------------------------------------------------------------------------------

* insert CumulativeDoseObsRules
* category 1..
* category = $observation-category#procedure 
// * code = $dicomOntology#113725 "Dose (RP) Total" // evaluate 445565002 | Total boost radiation dose delivered (observable entity) AND 445461008 | Total radiation dose delivered (observable entity)
* code 1..
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