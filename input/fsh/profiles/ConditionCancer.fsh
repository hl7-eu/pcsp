      
//====== RuleSet =====================================

RuleSet: CancerConditionCommonRules
* extension contains
    $condition-assertedDate named assertedDate 0..1 
    and $mcode-histology-morphology-behavior named histologyMorphologyBehavior 0..1
	and PreviousStatus named previousStatus 0..1
	
// HistologyMorphologyBehavior named histologyMorphologyBehavior 0..1 MS

* extension[histologyMorphologyBehavior].value[x] from ICDO3MorphologyVs (required)
* extension[previousStatus]
* subject only Reference (PatientPcsp)
* bodySite.extension contains
     $mcode-body-location-qualifier named locationQualifier 0..* 
     and LateralityQualifier named lateralityQualifier 0..1
	
	// $mcode-laterality-qualifier named lateralityQualifier 0..1
    // BodyLocationQualifier named locationQualifier 0..*   and
    

* bodySite from ICDO3TopographyVs (extensible)
// * extension and bodySite and bodySite.extension[lateralityQualifier] MS
* bodySite.extension[locationQualifier] 


//====== Profiles =====================================

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationDiagnosisPcsp
Parent:   Observation
Id:       Observation-diagnosis-eu-pcsp
Title:    "Observation Diagnosis details PCSP"
Description: "This profile defines how to represent diagnosis details (when the diagnosis was made; who made it;...) in FHIR for the purpose of the PanCareSurPass project.
\r\n Maturity Model: 2 - Ready for review"
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
Description: "This profile defines how to represent data of arrival to the center and Center information in FHIR for the purpose of the PanCareSurPass project.
\r\n Maturity Model: 2 - Ready for review"
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
Description: "This profile defines how to represent Primary Cancer Condition in HL7 FHIR for the purpose of the PanCareSurPass project. 
This profile is inspired from the [mCode IG](http://build.fhir.org/ig/HL7/fhir-mCODE-ig). 
A primary cancer condition, the original or first tumor in the body (Definition from: [NCI Dictionary of Cancer Terms]( https://www.cancer.gov/publications/dictionaries/cancer-terms/def/primary-tumor)).  Cancers that are not clearly secondary (i.e., of uncertain origin or behavior) should be documented as primary.
This profile should be also used for documenting primary cancer relapses during or after FLT.
 \r\n Maturity Model: 2 - Ready for review"
//-------------------------------------------------------------------------------------------

* extension contains $condition-occurredFollowing named condition-occurredFollowing 0..*
* extension[condition-occurredFollowing].valueReference ^short = "For relapses, reference to the first occurance of this tumor."
* extension[condition-occurredFollowing].valueReference only Reference (ConditionPrimaryCancerPcsp)

* insert CancerConditionCommonRules
// * clinicalStatus and verificationStatus MS
* clinicalStatus ^example.valueCodeableConcept = $condition-clinical#relapse
* clinicalStatus ^example.label = "Relapse"
  
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
	diagnosisDetails 0..1 
	and geneticMarker 0..1
	and immunology 0..1
	and predisposition 0..1
	
* evidence[diagnosisDetails]
  * ^short = "Diagnosis details"
  * code from ICCC3Vs
  * detail only Reference (ObservationDiagnosisPcsp)
* evidence[geneticMarker]
  * ^short = "Genetic Marker"
  * code = $sct#106221001 "Genetic finding"
  * detail only Reference (Observation or DocumentReference or DiagnosticReport)
  * detail.display ^short = "Text alternative for the resource (Genetic finding)"
* evidence[immunology]
  * ^short = "Immunology" 
  * code = $sct#365861007 "Finding of immune status"
  * detail only Reference (Observation or DocumentReference or DiagnosticReport)
  * detail.display ^short = "Text alternative for the resource (immunology)"
* evidence[predisposition]
  * ^short = "Predisposition" 
  * code = $sct#32895009 "Hereditary disease" // check if it needs to be changed with a Value Set
  * detail only Reference (Condition or Observation or FamilyMemberHistory or DocumentReference)
  * detail.display ^short = "Text alternative for the resource (predisposition)"
* note ^short = "Additional information about the Cancer Condition"



//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ConditionSecondaryCancerPcsp
Parent:   Condition
Id:       Condition-secondaryCancer-eu-pcsp
Title:    "Secondary Cancer Condition"
Description: "This profile defines how to represent Secondary Cancer Condition in FHIR for the purpose of the PanCareSurPass project. 
This profile is inspired from the [mCode IG](http://build.fhir.org/ig/HL7/fhir-mCODE-ig). 
Records the history of secondary neoplasms, including location(s) and the date of onset of metastases. A secondary cancer results from the spread (metastasization) of cancer from its original site (Definition from: NCI Dictionary of Cancer Terms).
\r\n Maturity Model: 2 - Ready for review"
//-------------------------------------------------------------------------------------------
* ^abstract = false
* insert CancerConditionCommonRules
* clinicalStatus and verificationStatus MS
* extension contains $condition-related named relatedPrimaryCancerCondition 1..1
* extension[relatedPrimaryCancerCondition].valueReference only Reference(ConditionPrimaryCancerPcsp)
* extension[relatedPrimaryCancerCondition] ^short = "Related Primary Cancer Condition"
* extension[relatedPrimaryCancerCondition] ^definition = "A reference to the primary cancer condition that provides context for this resource."
* code MS
// * code from SecondaryCancerDisorderVS (extensible)
* insert NotUsed(stage)


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  OrganizationCenterPcsp
Parent:   $Organization-uv-ips
Id:       Organization-center-eu-pcsp
Title:    "Organization: Primary Treatment Center / Center of diagnosis"
Description: "This profile defines how to represent the Primary Treatment Center or the Center of diagnosis in FHIR for the purpose of the PanCareSurPass project.
\r\n Maturity Model: 2 - Ready for review"
//-------------------------------------------------------------------------------------------
* identifier ^short = "Identifier of the center"
* name ^short = "Name of the Center"
* address.city ^short = "Center address: city"
* address.country ^short = "Center address: country"

