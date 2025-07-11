Instance: ProcedureSTC-1
InstanceOf: ProcedureSctPcsp
Title:   "Mainz - Procedure: Stem Cell Transplantation (Zeisig)"
Description: "Sample of stem cell transplantation procedure from Mainz (Zeisig)"

Usage: #example
* extension.url = "http://hl7.eu/fhir/ig/pcsp/StructureDefinition/procedure-usedReference"
* extension.valueReference = Reference(BiologicallyDerivedProduct-SCT1)
* status = #completed
* category = http://snomed.info/sct#77465005 "Transplantation (procedure)"
* code = http://snomed.info/sct#53088000 "Autogenous transplantation"
* code.text = "Negative for Chlamydia Trachomatis rRNA"
* subject = Reference(PatientMainzZeisig)
* performedDateTime = "2018-05-16"
* location = Reference(Location-SCT1)
* reasonReference = Reference(ConditionPrimCancerMainzZeisig)


Instance: BiologicallyDerivedProduct-SCT1
InstanceOf: BiologicallyDerivedProductSctPcsp
Title:   "Mainz - BiologicallyDerivedProduct: Stem Cell Transplantation (Zeisig)"
Description: "Sample of stem cell transplantation biologically derived product (Zeisig)"

Usage: #example
* extension[0].url = "http://hl7.eu/fhir/ig/pcsp/StructureDefinition/sct-donor-type"
* extension[=].valueCodeableConcept = http://hl7.eu/fhir/ig/pcsp/CodeSystem/cs-generic-eu-pcsp#sct-matched-related "matched related"
* extension[+].url = "http://hl7.eu/fhir/ig/pcsp/StructureDefinition/sct-source-type"
* extension[=].valueCodeableConcept = http://hl7.eu/fhir/ig/pcsp/CodeSystem/cs-generic-eu-pcsp#sct-pbsc "PBSC"
* productCategory = #cells
* collection.source = Reference(PatientMainzZeisig)



Instance: ObservationCBloodSCT-1-1
InstanceOf: ObservationBloodAboRh
Title:   "Mainz - Observation: Blood type/RH before the SCT (Zeisig)"
Description: "Sample of blood type/RH observation (Zeisig)"
Usage: #example

* status = #final
* partOf[0] = Reference(ProcedureSTC-1)
* code = http://loinc.org#34530-6 "ABO and Rh group panel - Blood"
* subject = Reference(PatientMainzZeisig)
* effectiveTiming.code = http://hl7.eu/fhir/ig/pcsp/CodeSystem/cs-generic-eu-pcsp#before-procedure	"Before procedure"

* component[abo].code = http://loinc.org#883-9 "ABO group [Type] in Blood"
* component[abo].valueCodeableConcept.coding[0] = http://loinc.org#LA19710-5 "Group A"
* component[abo].valueCodeableConcept.coding[+] = http://snomed.info/sct#112144000 "Blood group A"
* component[rh].code = http://loinc.org#10331-7 "Rh [Type] in Blood"
* component[rh].valueCodeableConcept.coding[0] = http://loinc.org#LA6576-8 "Positive"
* component[rh].valueCodeableConcept.coding[+] = http://snomed.info/sct#10828004 "Positive"


Instance: Location-SCT1
InstanceOf: LocationPcsp
Title:   "Mainz - Location: Stem Cell Transplantation (Zeisig)"
Description: "Sample of location for stem cell transplantation (Zeisig)"
Usage: #example

* name = "Universitätsklinikum Schleswig-Holstein - Campus Lübeck"
* address.city = "Lübeck"
* address.country = "Deutschland"