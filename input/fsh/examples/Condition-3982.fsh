Instance: 3982
InstanceOf: ConditionGvhdPcsp
Title: "Cineca - Condition: Acute GvHD Grade 1 Example"
Description: "Example of an acute graft-versus-host disease grade 1 condition from Cineca for the PanCareSurPass project"
Usage: #example
* clinicalStatus = $condition-clinical#resolved
* extension[relatedPrimaryCancerCondition].valueReference = Reference(Condition/5062)
* extension[conditionDueTo].valueReference = Reference(Procedure/ProcedureSTC-1)
* code = $sct#402355000
* bodySite.text = "test"
* subject = Reference(Patient/3971)
* onsetDateTime = "2020-11-11"
* abatementDateTime = "2020-12-12"
* stage.summary = $cs-generic-eu-pcsp#Gvhd-acute-1