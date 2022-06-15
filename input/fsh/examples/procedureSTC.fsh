Instance: procedureSTC-1
InstanceOf: ProcedureSctPcsp
Title:   "Procedure: Stem Cell Transplantation"
Description: "Procedure: Stem Cell Transplantation example"

Usage: #example
* extension.url = "http://hl7.eu/fhir/ig/pcsp/StructureDefinition/procedure-usedReference"
* extension.valueReference = Reference(biologicallyDerivedProduct-SCT1)
* status = #completed
* category = http://snomed.info/sct#77465005 "Transplantation (procedure)"
* code = http://snomed.info/sct#53088000 "Autogenous transplantation"
* code.text = "Negative for Chlamydia Trachomatis rRNA"
* subject = Reference(PatientMainzZeisig)
* performedDateTime = "2018-05-16"
* location = Reference(Location-SCT1)
* reasonReference = Reference(ConditionPrimCancerMainzZeisig)


Instance: biologicallyDerivedProduct-SCT1
InstanceOf: BiologicallyDerivedProductSctPcsp
Title:   "BiologicallyDerivedProduct: Stem Cell Transplantation"
Description: "Biologically Derived Product: Stem Cell Transplantation example"

Usage: #example
* extension[0].url = "http://hl7.eu/fhir/ig/pcsp/StructureDefinition/sct-donor-type"
* extension[=].valueCodeableConcept = http://hl7.eu/fhir/ig/pcsp/CodeSystem/cs-generic-eu-pcsp#sct-matched-related "matched related"
* extension[+].url = "http://hl7.eu/fhir/ig/pcsp/StructureDefinition/sct-source-type"
* extension[=].valueCodeableConcept = http://hl7.eu/fhir/ig/pcsp/CodeSystem/cs-generic-eu-pcsp#sct-cord "PBSC"
* productCategory = #cell
* collection.source = Reference(PatientMainzZeisig)


Instance: Location-SCT1
InstanceOf: LocationPcsp
Title:   "Location: Stem Cell Transplantation"
Description: "Location: Stem Cell Transplantation example"
Usage: #example

* meta.profile = "http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Location-eu-pcsp"
* name = "Universitätsklinikum Schleswig-Holstein - Campus Lübeck"
* address.city = "Lübeck"
* address.country = "Deutschland"