Instance: 3992
InstanceOf: ProcedureRadiotherapyPcsp
Title: "Cineca - Procedure: External Beam Radiotherapy Example"
Description: "Example of an external beam radiotherapy procedure from Cineca for the PanCareSurPass project"
Usage: #example
* status = #completed
* extension[performedTiming].valueTiming.repeat.count = 2
* extension[relatedDose].valueReference = Reference(Observation/3994)
* partOf = Reference(Procedure/3991)
* category.coding[0] = $sct#108290001
* category.coding[+] = $cs-radiotherapy-pcsp#1.2
* code = $sct#33195004
* subject = Reference(Patient/3971)
* performedPeriod.start = "2020-11-01"
* performedPeriod.end = "2020-11-30"
* reasonReference = Reference(Condition/3972)
* bodySite = $cs-radiotherapy-pcsp#1.2
* bodySite.extension.url = "http://hl7.eu/fhir/ig/pcsp/StructureDefinition/mcode-body-location-qualifier"
* bodySite.extension.valueCodeableConcept = $sct#255551008
* note.text = "boost1"