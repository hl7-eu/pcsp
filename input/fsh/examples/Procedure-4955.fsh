Instance: 4955
InstanceOf: ProcedureRadiotherapyPcsp
Title: "Cineca - Procedure: Radionuclide Therapy Example"
Description: "Example of a radionuclide therapy procedure from Cineca for the PanCareSurPass project"
Usage: #example
* status = #completed
* extension[performedTiming].valueTiming.repeat.count = 4
* extension[energyOrIsotope].valueCodeableConcept = $sct#1368003
* category = $sct#108290001 "Radiotherapy"
* code = $sct#399315003
* subject = Reference(Patient/3971)
* performedPeriod.start = "2021-11-11"
* performedPeriod.end = "2021-12-12"
* reasonReference = Reference(Condition/4953)