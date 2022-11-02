//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  CarePlanPcsp
Parent:   CarePlan
Id:       CarePlan-eu-pcsp
Title:    "CarePlan: PCSP"
Description: "This profile defines how to represent the Care Plan proposed by the PCSP platoform in HL7 FHIR. This profile can be used for both the version generated by the platoform and that curated and validated by Clinicians." 
//-------------------------------------------------------------------------------------------
* text 1..
* identifier ^short = "Business Identifier of this Care Plan"
* status ^short = "Status (draft when automatically generated)"
* intent ^short = "Intent (proposal when automatically generated)"
// * title 1.. 
* subject only Reference(PatientPcsp)
* period ^short = "Time period plan covers"
* created 1..
* author only Reference (Practitioner or PractitionerRole or  Device or Organization or CareTeam)
* author ^short = "Who it is attributed to (a Device when automatically generated)"
* contributor ^short = "Who provided the contents of the care plan."
* contributor only Reference (Practitioner or PractitionerRole or  Device or Organization or CareTeam)
* addresses only Reference(ConditionPrimaryCancerPcsp)
* supportingInfo ^short = "Supporting infos, including risk factors"
* supportingInfo only Reference ( ObservationRiskFactor or Resource)
* note 0..2
* note.extension contains
     AnnotationType named annotationType 0..1
* note.extension[annotationType].valueCodeableConcept from AnnotationTypeVS (preferred)

* activity 1..
  * detail
    * code from Recommendation (extensible) // value set to be updated
    * reasonCode from RiskCondition (extensible) // change the value set
    * reasonReference only Reference(ObservationRiskFactor)
    * instantiatesCanonical only Canonical(PlanDefinition or ActivityDefinition)
    * status ^short = "Progress being made"
    * description ^short = "Activity to perform"
    * scheduledString ^short = "Planned for"


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationRiskFactor
Parent:   Observation
Id:       Observation-riskfactor-eu-pcsp
Title:    "Observation: Risk Factor"
Description: "This profile defines how to represent a Risk Factor in HL7 FHIR as determined by the PCSP platoform." 
//-------------------------------------------------------------------------------------------

* subject 1..
* subject only Reference(PatientPcsp)
* basedOn ..0
* partOf ..0
* status = #final
* subject 1..
* subject only Reference(PatientPcsp)
* focus ..0
* effectivePeriod.start 1.. 
* effectivePeriod.end ^short = "required if no more active"
* code 1..1 
* code = $sct#80943009 "Risk factor"
* dataAbsentReason	..0
* interpretation ..0
* specimen ..0
* device ..0
* referenceRange ..0
* valueCodeableConcept 1..1
* valueCodeableConcept from RiskFactor (extensible)
* component 0..
