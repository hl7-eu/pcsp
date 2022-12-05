Instance: ProcedureTransfusion-1
InstanceOf: ProcedureTransfusionOtherInfosPcsp
Title:   "Procedure: Transfusion"
Description: "Procedure: Transfusion"

Usage: #example
* extension.url = "http://hl7.eu/fhir/ig/pcsp/StructureDefinition/procedure-performedTiming"
* extension.valueTiming.repeat.boundsRange.low.value = 9.0
* status = #completed
* code = http://snomed.info/sct#5447007 "Transfusion"
* subject = Reference(PatientMainzZeisig)
* reasonReference = Reference(ConditionPrimCancerMainzZeisig)

