//====== RuleSet =====================================

RuleSet: ProcedureRadiotherapyPcspRules
* extension contains 
	ResourceRelatedInfo named relatedDose 0..*
	and $procedure-method named procedureMethod 0..1
	and RadiotherapyEnergyOrIsotope named energyOrIsotope 0..*
	and PerformedTiming named performedTiming 0..1
	
* extension[relatedDose].valueReference only Reference(TotalDoseRadObsPcsp)
* extension[energyOrIsotope]
* extension[procedureMethod].valueCodeableConcept from BrachytherapyType
* extension[performedTiming].valueTiming.repeat.count ^short = "Number of repetitions"

* identifier ^short = "External Identifiers for this radiotherapy / boost"
* status ^short = "Procedure status"
* category 1..1 
// * category = $sct#108290001 "Radiotherapy" // part of GPS
* code 1..1  // TYPE - add 1 => External beam (33195004 | External beam radiotherapy); 2 => Brachytherapy (152198000 | Brachytherapy ); 3 => Metabolic/radionuclide therapy (399315003 | Radionuclide therapy)
* code from RadiotherapyTypeVs (extensible)
// add slice on coding to allow more precise data
* subject only Reference(PatientPcsp)	
* performedPeriod 1.. 
* reasonReference 1..  // add reference to the diagnosis
* reasonReference only Reference(ConditionPrimaryCancerPcsp)
* bodySite 0..
  * ^short = "required for Brachytherapy and External beam"
* insert RadiotherapyBodySiteExt
* note ^short = "Additional information about the Radiotherapy" 


RuleSet: RadiotherapyBodySiteExt


* bodySite.extension contains
     
	 BodyLocationQualifier named locationQualifier 0..*
     and LateralityQualifier named lateralityQualifier 0..1

	 // $mcode-body-location-qualifier named locationQualifier 0..* 
	// $mcode-laterality-qualifier named lateralityQualifier 0..1
    
* bodySite from VsRadiotherapy
// * extension and bodySite and bodySite.extension[lateralityQualifier] MS
* bodySite.extension[locationQualifier].valueCodeableConcept from FromToPosteriorAnteriorVs


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ProcedureRadiotherapyPcsp
Parent:   Procedure 
Id:       Procedure-radiotheraphy-eu-pcsp
Title:    "Procedure: Radiotherapy"
Description: "This profile defines how to represent Procedures in FHIR for describing a set of Radiotherapy data required by the PanCareSurPass algorithm to generate the care plan."
//-------------------------------------------------------------------------------------------

* insert ProcedureRadiotherapyPcspRules
* category = $sct#108290001 "Radiotherapy" // part of GPS
* location only Reference(LocationPcsp)
* usedCode ^short = "Coded items used during the procedure"
* usedCode from RadiotherapyDeviceType (extensible) // update the value set




//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ProcedureRadiotherapyShieldingPcsp
Parent:   Procedure 
Id:       Procedure-radiotheraphyShield-eu-pcsp	
Title:    "Procedure: Radiotherapy Shielding"
Description: "This profile defines how to represent Shielding Procedures in FHIR for describing a set of Radiotherapy data required by the PanCareSurPass algorithm to generate the care plan."
//-------------------------------------------------------------------------------------------


// * identifier ^short = "External Identifiers for this radiotherapy / boost"
// * status ^short = "Procedure status"
* category = $sct#108290001 "Radiotherapy" // part of GPS
// * code 1..1  // TYPE - add 1 => External beam (33195004 | External beam radiotherapy); 2 => Brachytherapy (152198000 | Brachytherapy ); 3 => Metabolic/radionuclide therapy (399315003 | Radionuclide therapy)
* code = $sct#228720004 "Making of shielding block for radiotherapy"
* partOf 1..1
* partOf only Reference (ProcedureRadiotherapyPcsp)
// add slice on coding to allow more precise data
* subject only Reference(PatientPcsp)	
* reasonReference 1..  // add reference to the diagnosis
* reasonReference only Reference(ConditionPrimaryCancerPcsp)
* bodySite 1..*
* insert RadiotherapyBodySiteExt
* note ^short = "Additional information about the Radiotherapy" 







//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ProcedureRadiotherapyBoostPcsp
Parent:   Procedure 
Id:       Procedure-radiotheraphyBoost-eu-pcsp
Title:    "Procedure: Radiotherapy Boost"
Description: "This profile defines how to represent Procedures in FHIR for describing a set of data required by PanCareSurPass for Radiotherapy Boosts" //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


* insert ProcedureRadiotherapyPcspRules
* category 1..1 
* category.coding ^slicing.discriminator.type = #pattern
* category.coding ^slicing.discriminator.path = "$this"
* category.coding ^slicing.rules = #open
* category.coding ^slicing.description = "Slice based on the values set binding"
* category.coding contains 
	radiotheraphy 1..1 and
	boost 1..1
* category.coding[radiotheraphy] = $sct#108290001 "Radiotherapy" // part of GPS
* category.coding[boost] = $sct#445232009 "Boost radiation therapy"

* partOf 1..1
* partOf only Reference (ProcedureRadiotherapyPcsp)

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  TotalDoseRadObsPcsp
Parent:   Observation
Id:       Observation-totalDoseRad-eu-pcsp
Title:    "Observation: Radiotherapy Total Dose PCSP"
Description: "This profile defines how to represent Radiotherapy Total Dose in FHIR for the purpose of the PanCareSurPass project."
//-------------------------------------------------------------------------------------------

* insert CumulativeDoseObsRules
* category 1..
* category = $observation-category#procedure 
// * code = $dicomOntology#113725 "Dose (RP) Total" // evaluate 445565002 | Total boost radiation dose delivered (observable entity) AND 445461008 | Total radiation dose delivered (observable entity)
* code 1..
* code from RadiotherapyDoseTypeVs
* bodySite 0..
  * ^short = "required for Brachytherapy and External beam"
* insert RadiotherapyBodySiteExt


/* ======

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ProcedureRadiotherapyMinPcsp
Parent:   Procedure 
Id:       Procedure-radiotheraphy-min-eu-pcsp
Title:    "Procedure: Radiotherapy (Minimal Set)"
Description: "This profile defines how to represent Procedures in FHIR for describing a Minimal set of Radiotherapy data required by the PanCareSurPass algorithm to generate the care plan."
//-------------------------------------------------------------------------------------------
* insert ProcedureRadiotherapyPcspRules



==== */