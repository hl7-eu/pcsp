RuleSet: Hulafe-1-subject
* subject = Reference(PatientHulafe-1)
* subject.type = "Patient"


// === Condition


Instance: PrimaryCancerHulafe-1
InstanceOf: ConditionPrimaryCancerPcsp
Title:   "Hulafe - Condition: Primary Diagnosis"
Description: "Sample of Primary Diagnosis based on information provided by Hulafe (Condition)"
Usage: #example
* language = #es-ES
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/condition-assertedDate"
* extension[=].valueDateTime = "2021"
* extension[+].url = $mcode-histology-morphology-behavior
* extension[=].valueCodeableConcept = $icd03#8260/3 "8260/3 - Carcinoma papilar de tiroides"
* code = $v3-NullFlavor#UNC "un-encoded"
* code.text = "Carcinoma tiroides"
* bodySite.extension.url = "http://hl7.eu/fhir/ig/pcsp/StructureDefinition/mcode-laterality-qualifier"
* bodySite.extension.valueCodeableConcept = $v3-NullFlavor#NA "Not Applicable"
* bodySite = $icd03#C73.9 "C73.9 - Tiroides"
* bodySite.text = "C73.9"
* insert Hulafe-1-subject

* encounter = Reference(EncHulafe-1)
* encounter.type = "Encounter"
* stage.summary = $v3-NullFlavor#UNC "un-encoded"
* stage.summary.text = "pT1a"
* note.text = "Alergia al epitelio de gato"


// ===================== Organization
Instance: OrgHulafe-1
InstanceOf: OrganizationCenterPcsp
Title:   "Hulafe - Organization: Primary Diagnosis"
Description: "Sample of Primary Diagnosis based on information provided by Hulafe (Organization)"
Usage: #example

* language = #es-ES
* active = true
* name = "Hospital Universitari i Politècnic La Fe"
* alias = "La Fe"
* telecom[0].system = #phone
* telecom[=].value = "+34 961 244 000"
* telecom[+].system = #email
* telecom[=].value = "prensa_lafe@gva.es"
* address.type = #both
* address.use = #work
* address.line = "Avinguda de Fernando Abril Martorell, nº 106"
* address.city = "Valencia"
* address.state = "Comunidad Valenciana"
* address.postalCode = "46026"
* address.country = "ES"


// ===================== Encounter
Instance: EncHulafe-1
InstanceOf: Encounter
Title:   "Hulafe - Encounter: Primary Diagnosis"
Description: "Sample of Primary Diagnosis based on information provided by Hulafe (Encounter)"
Usage: #example
* language = #es-ES
* status = #finished
* class = $v3-ActCode#AMB "ambulatory"
* insert Hulafe-1-subject
* serviceProvider = Reference(OrgHulafe-1)
* serviceProvider.type = "Organization"