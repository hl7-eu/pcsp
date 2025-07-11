Instance: 5008
InstanceOf: ConditionPrimaryCancerPcsp
Title: "Cineca - Condition: Distant Relapse Example"
Description: "Example of a distant relapse condition from Cineca for the PanCareSurPass project"
Usage: #example
* extension[previousStatus].valueCodeableConcept = $condition-clinical#relapse
* extension[occurredFollowing].valueReference = Reference(Condition/3972)
* extension[assertedDate].valueDateTime = "2020-11-11"
* extension[relapseType].valueCodeableConcept = $sct#261007001
* subject = Reference(Patient/3971)
* code = $iccc3#081