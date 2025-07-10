Instance: 21992
InstanceOf: ProcedureOtherTreatmentPcsp
Title: "Vulsk - Procedure: Other Oncological Treatment Example"
Description: "Example of an other oncological treatment procedure for the PanCareSurPass project"
Usage: #example
* status = #completed
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Treatment name</div>"
* code = $cs-generic-eu-pcsp#other-treatment "Other oncological treatments" 
* subject = Reference(Patient/20952)
* reasonReference = Reference(Condition/20953)