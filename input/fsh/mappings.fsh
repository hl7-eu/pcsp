Alias: $Subject = http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Subject


Mapping: patient-to-lm
Id: patient-to-lm
Title: "Subject of Care Model"
Source: PatientPcsp
Target: "http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Subject"

* extension[patient-birthPlace] ->  "Subject.placeOfBirth"
* extension[patient-mothersMaidenName] -> "Subject.lastnameAtDiagnosis"
* identifier -> "Subject.identifier"
* name -> "Subject.name"
* name.family -> "Subject.name.lastname"
* name.given -> "Subject.name.firstName"
* gender -> "Subject.gender"
* birthDate -> "Subject.dateOfBirth"
* contact.telecom -> "Subject.contact.email"
* contact.telecom -> "Subject.contact.mobile"
* contact.telecom -> "Subject.guardian.contact.email"
* contact.telecom -> "Subject.guardian.contact.mobile"
