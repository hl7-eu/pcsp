
//====== RuleSet =====================================

RuleSet: CancerConditionCommonRules
* extension contains
    $condition-assertedDate named assertedDate 0..1 and
    $mcode-histology-morphology-behavior named histologyMorphologyBehavior 0..1 MS
// HistologyMorphologyBehavior named histologyMorphologyBehavior 0..1 MS

* extension[histologyMorphologyBehavior].value[x] from ICDO3MorphologyVs (required)

* bodySite.extension contains
     $mcode-body-location-qualifier named locationQualifier 0..* 
     and LateralityQualifier named lateralityQualifier 0..1
	
	// $mcode-laterality-qualifier named lateralityQualifier 0..1
    // BodyLocationQualifier named locationQualifier 0..*   and
    

* bodySite from ICDO3TopographyVs
* extension and bodySite and bodySite.extension[lateralityQualifier] MS
* bodySite.extension[locationQualifier] 


RuleSet: CumulativeDoseObsRules
* status MS
* category 0.. MS
* code MS
* subject 1.. MS
* subject only Reference(PatientPcsp)
* specimen 0..
* value[x] 1.. MS
* value[x] only Quantity or CodeableConcept
* valueQuantity MS
* valueQuantity.value 1.. MS
* valueQuantity.system 1.. MS
* valueQuantity.system = $ucum
* valueQuantity.code 1.. MS 
* valueQuantity.unit MS 
* valueCodeableConcept = $data-absent-reason#unknown "Unknown" 
* component 0..

//====== Profiles =====================================

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationDiagnosisPcsp
Parent:   Observation
Id:       Observation-diagnosis-eu-pcsp
Title:    "Observation Diagnosis details PCSP"
Description: "This abstract profile defines how to represent diagnosis details (when the diagnosis was made; who made it;...) in FHIR for the purpose of the PanCareSurPass project."
//-------------------------------------------------------------------------------------------
* subject only Reference(PatientPcsp)
* effectiveDateTime 1.. MS
* code 1..1 
* code = $loinc#29308-4 "Diagnosis"
* valueCodeableConcept 1..1
* performer ^slicing.discriminator.type = #type
* performer ^slicing.discriminator.path = "$this.resolve()"
* performer ^slicing.rules = #open
* performer ^slicing.description = "Slice based on the reference type"
* performer contains 
	primaryCenter	0..1 MS
* performer[primaryCenter] only Reference (OrganizationCenterPcsp)
  * ^short = "Center of diagnosis"
  * ^definition = "Institution in which the diagnosis was made."
  * identifier ^short = "Business identifier of the Center of diagnosis"
  * display ^short = "Short textual description of the Center of diagnosis"
* component 0..0 

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  EncounterPcsp
Parent:   Encounter
Id:       Encounter-eu-pcsp
Title:    "Encounter Treatment Center PCSP"
Description: "This abstract profile defines how to represent data of arrival to the center and Center information in FHIR for the purpose of the PanCareSurPass project."
//-------------------------------------------------------------------------------------------
* status MS 
* class MS
* period.start MS 

* serviceProvider only Reference (OrganizationCenterPcsp)
  * ^short = "Primary treatment center"
  * ^definition = "Report here the institution in which most of the treatment was given"
  * identifier ^short = "Business identifier of the Primary treatment center"
  * display ^short = "Short textual description of the Primary treatment center"
  
// * diagnosis.condition = Reference ( ConditionPrimaryCancerPcsp )


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ConditionPrimaryCancerPcsp
Parent:   Condition
Id:       Condition-primaryCancer-eu-pcsp
Title:    "Primary Cancer Condition PCSP"
Description: "This abstract profile defines how to represent Primary Cancer Condition in FHIR for the purpose of the PanCareSurPass project. 
This profile is inspired from the [mCode IG](http://build.fhir.org/ig/HL7/fhir-mCODE-ig). 
A primary cancer condition, the original or first tumor in the body (Definition from: [NCI Dictionary of Cancer Terms]( https://www.cancer.gov/publications/dictionaries/cancer-terms/def/primary-tumor)).  Cancers that are not clearly secondary (i.e., of uncertain origin or behavior) should be documented as primary."
//-------------------------------------------------------------------------------------------
* ^abstract = false

* insert CancerConditionCommonRules
* clinicalStatus and verificationStatus MS
* code 1.. MS // add value set; add slices for
* code.coding 0.. MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding ^slicing.description = "Slice based on the coding.code pattern"
* code.coding contains 
	iccc3-classification 0..1 MS 
	and exceptions 0..1
* code.coding[iccc3-classification] from ICCC3Vs
* code.coding[exceptions] from $v3-ClassNullFlavor

* onset[x] MS
* encounter only Reference (Encounter or EncounterPcsp)
* stage.assessment only Reference(CancerStageGroup)
* stage MS
// and stage.assessment MS
* stage.summary ^short = "Most recent Stage Group"
* stage.summary ^definition = "As for mCODE, in PCSP staging information MUST be captured in an Observation that conforms to the CancerStageGroup profile. For convenience, the stage group MAY appear in this element, copied from the CancerStageGroup, but Data Senders and Receivers MAY ignore it."
* stage.type ^short = "Staging system used."
* stage.type ^definition = "As for mCODE, in PCSP staging information MUST be captured in an Observation that conforms to the CancerStageGroup profile. For convenience, the staging system MAY appear in this element, but Data Senders and Receivers MAY ignore it."
// * stage.type from ObservationCodesStageGroupVS (required)


* evidence ^slicing.discriminator.type = #pattern
* evidence ^slicing.discriminator.path = "$this.resolve()"
* evidence ^slicing.discriminator.type = #pattern
* evidence ^slicing.discriminator.path = "code"
* evidence ^slicing.rules = #open
* evidence ^slicing.description = "Slice based on the coding.code pattern"
* evidence contains 
	diagnosisDetails 0..* MS 
	and geneticMarker 0..*
	and immunology 0..*
	and predisposition 0..*
	
* evidence[diagnosisDetails]
  * code from ICCC3Vs
  * detail only Reference (ObservationDiagnosisPcsp)
* evidence[geneticMarker] 
  * code = $sct#106221001 "Genetic finding"
  * detail only Reference (Observation or DocumentReference or DiagnosticReport)
* evidence[immunology] 
  * code = $sct#365861007 "Finding of immune status"
  * detail only Reference (Observation or DocumentReference or DiagnosticReport)
* evidence[predisposition] 
  * code = $sct#32895009 "Hereditary disease" // check if it needs to be changed with a Value Set
  * detail only Reference (Condition or Observation or FamilyMemberHistory or DocumentReference)
* note MS



//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ConditionSecondaryCancerPcsp
Parent:   Condition
Id:       Condition-secondaryCancer-eu-pcsp
Title:    "Secondary Cancer Condition"
Description: "This abstract profile defines how to represent Secondary Cancer Condition in FHIR for the purpose of the PanCareSurPass project. 
This profile is inspired from the [mCode IG](http://build.fhir.org/ig/HL7/fhir-mCODE-ig). 
Records the history of secondary neoplasms, including location(s) and the date of onset of metastases. A secondary cancer results from the spread (metastasization) of cancer from its original site (Definition from: NCI Dictionary of Cancer Terms)."
//-------------------------------------------------------------------------------------------
* ^abstract = false
* insert CancerConditionCommonRules
* clinicalStatus and verificationStatus MS
* extension contains $condition-related named relatedPrimaryCancerCondition 0..1 MS
* extension[relatedPrimaryCancerCondition].valueReference only Reference(ConditionPrimaryCancerPcsp)
* extension[relatedPrimaryCancerCondition] ^short = "Related Primary Cancer Condition"
* extension[relatedPrimaryCancerCondition] ^definition = "A reference to the primary cancer condition that provides context for this resource."
* code MS
// * code from SecondaryCancerDisorderVS (extensible)
* insert NotUsed(stage)






//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  CarePlanPcsp
Parent:   CarePlan
Id:       CarePlan-eu-pcsp
Title:    "CarePlan PCSP"
Description: "This profile defines how to represent Care Plan in FHIR for the purpose of the PanCareSurPass project."
//-------------------------------------------------------------------------------------------
* identifier MS
* status MS
* intent MS
* title 1.. MS
* subject MS
* subject only Reference(PatientPcsp)
* period MS
* created MS
* author MS


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  OrganizationCenterPcsp
Parent:   $Organization-uv-ips
Id:       Organization-center-eu-pcsp
Title:    "Organization: Primary Treatment Center / Center of diagnosis"
Description: "This profile defines how to represent the Primary Treatment Center or the Center of diagnosis in FHIR for the purpose of the PanCareSurPass project."
//-------------------------------------------------------------------------------------------
* identifier ^short = "Identifier of the center"
* name ^short = "Name of the Center"
* address.city ^short = "Center address: city"
* address.country ^short = "Center address: country"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ProcedureSCTMinPcsp
Parent:   Procedure 
Id:       Procedure-sct-min-eu-pcsp
Title:    "Procedure Stem Cell Transplantation (Minimal Set)"
Description: "This profile defines how to represent Procedures in FHIR for describing a Minimal set of Stem Cell transplantation data required by the PanCareSurPass algorithm to generate the care plan."
//-------------------------------------------------------------------------------------------
* status MS
* category MS // add Radiotherapy
* category = $sct#77465005 "Transplantation" // part of GPS
* code 1..1 MS // TYPE - add 1 Autologous ( Autogenous transplantation (procedure) ) 2 = Allogeneic (50223000 | Allogeneic transplantation) // Not enough specific ?
* code from RadiotherapyTypeVs
// add slice on coding to allow more precise data
* subject only Reference(PatientPcsp)	
* subject MS
* performedPeriod 1.. MS
* reasonReference 1.. MS // add reference to the diagnosis
* reasonReference only Reference(ConditionPrimaryCancerPcsp)
* bodySite 1.. MS 
* bodySite from VsRadiotherapy




//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  LocationPcsp
Parent:   Location
Id:       Location-eu-pcsp
Title:    "Location PCSP"
Description: "This profile defines how to represent FHIR Location for the purpose of the PanCareSurPass project."
//-------------------------------------------------------------------------------------------

* name 1.. MS
* name ^short = "Name of the Institution"
* description ^short = "Institution description"
* address.city ^short = "Institution city"
* address.country ^short = "Institution country"



//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationYesNoPcsp
Parent:   Observation 
Id:       Observation-yesNo-eu-pcsp
Title:    "Observation Yes No answers"
Description: "This profile defines how to represent Yes/No answered information in FHIR using Observation for the purpose of the PanCareSurPass project."
//-------------------------------------------------------------------------------------------

* status MS
* subject only Reference(PatientPcsp)	
* subject MS
* code from ObservationYesNoVs (extensible)
* code MS
* valueCodeableConcept from http://loinc.org/vs/LL365-8 // Yes/No
* valueCodeableConcept 1.. MS
