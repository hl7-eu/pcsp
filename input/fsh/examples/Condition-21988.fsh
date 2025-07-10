Instance: 21988
InstanceOf: ConditionOtherInfosPcsp
Title: "Cineca - Condition: Thrombosis Example"
Description: "Example of a thrombosis condition from Cineca for the PanCareSurPass project"
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">thrombosisi</div>"
* extension[relatedPrimaryCancerCondition].valueReference = Reference(Condition/20953)
* extension[conditionDueTo].valueReference = Reference(Procedure/21987)
* code = $sct#439127006
* subject = Reference(Patient/20952)