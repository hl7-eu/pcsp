Instance: ProcedureRadio-1
InstanceOf: ProcedureRadiotherapyPcsp
Title:   "Mainz - Procedure: Radiotherapy (Zeisig)"
Description: "Sample of radiotherapy procedure based on information from Mainz (Zeisig)"

* extension.url = "http://hl7.eu/fhir/ig/pcsp/StructureDefinition/resource-relatedInfo"
* extension.valueReference = Reference(ObservationRadTotalDose-1)
* status = #completed
* category = $sct#108290001 "Radiotherapy"
* code = $sct#399315003 "Radionuclide therapy"
* subject = Reference(PatientMainzZeisig)
* performedPeriod.start = "2017-03-06T00:00:00+01:00"
* bodySite = http://hl7.eu/fhir/ig/pcsp/CodeSystem/cs-radiotherapy-pcsp#1.4 "Brain: Occipital lobe"
* location = Reference(Location-SCT1)
* reasonReference = Reference(ConditionPrimCancerMainzZeisig)




Instance: ObservationRadTotalDose-1
InstanceOf: TotalDoseRadObsPcsp
Title:   "Mainz - Observation: Radiotherapy Total Dose (Zeisig)"
Description: "Sample of radiotherapy total dose observation from Mainz (Zeisig)"
Usage: #example

* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#procedure
* code = $sct#445565002 "Total boost radiation dose delivered"
* subject = Reference(PatientMainzZeisig)
* bodySite = http://hl7.eu/fhir/ig/pcsp/CodeSystem/cs-radiotherapy-pcsp#1.4 "Brain: Occipital lobe"
* valueQuantity = 5 'Gy' "Gy"