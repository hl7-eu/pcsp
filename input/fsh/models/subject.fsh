Instance: Subject
InstanceOf: StructureDefinition
Description: "Subject of care"
Title: "Subject of care"
Usage: #definition
* publisher = "PanCareSurPass project"
* status = #draft
* url = "http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Subject"
* name = "Subject"
* title = "Subject of care"
* status = #draft
* experimental = true
* description = "Subject of care"
* version = "0.0.1"
* mapping[0].identity = "fhir"
* mapping[0].uri = "hl7.org/fhir/r4"
* mapping[0].name = "FHIR"
* kind = #logical
* abstract = true
* type = "Subject"
* baseDefinition = "http://hl7.org/fhir/StructureDefinition/Element"
* derivation = #specialization
* differential.element[0].id = "Subject"
* differential.element[0].path = "Subject"
* differential.element[0].short = "Subject of care"
* differential.element[0].definition = "Subject of care"
* differential.element[0].min = 1
* differential.element[0].max = "1"
* differential.element[1].id = "Subject.identifier"
* differential.element[1].path = "Subject.identifier"
* differential.element[1].short = "ID"
* differential.element[1].definition = "ID"
* differential.element[1].min = 1
* differential.element[1].max = "*"
* differential.element[1].type.code = #Identifier
* differential.element[2].id = "Subject.name"
* differential.element[2].path = "Subject.name"
* differential.element[2].short = "Subject Name"
* differential.element[2].definition = "Subject Name"
* differential.element[2].min = 1
* differential.element[2].max = "*"
* differential.element[2].type.code = #BackboneElement
* differential.element[3].id = "Subject.name.lastname"
* differential.element[3].path = "Subject.name.lastname"
* differential.element[3].short = "Lastname"
* differential.element[3].definition = "Lastname"
* differential.element[3].min = 1
* differential.element[3].max = "*"
* differential.element[3].type.code = #string
* differential.element[4].id = "Subject.name.middleName"
* differential.element[4].path = "Subject.name.middleName"
* differential.element[4].short = "Middlename"
* differential.element[4].definition = "Middlename"
* differential.element[4].min = 0
* differential.element[4].max = "*"
* differential.element[4].type.code = #string
* differential.element[5].id = "Subject.name.firstName"
* differential.element[5].path = "Subject.name.firstName"
* differential.element[5].short = "Firstname"
* differential.element[5].definition = "Firstname"
* differential.element[5].min = 1
* differential.element[5].max = "*"
* differential.element[5].type.code = #string
* differential.element[6].id = "Subject.lastnameAtDiagnosis"
* differential.element[6].path = "Subject.lastnameAtDiagnosis"
* differential.element[6].short = "Lastname at diagnosis (if different from the actual one)"
* differential.element[6].definition = "Lastname at diagnosis (if different from the actual one)"
* differential.element[6].min = 0
* differential.element[6].max = "*"
* differential.element[6].type.code = #string
* differential.element[7].id = "Subject.gender"
* differential.element[7].path = "Subject.gender"
* differential.element[7].short = "Gender/Sex"
* differential.element[7].definition = "Gender/Sex"
* differential.element[7].min = 1
* differential.element[7].max = "*"
* differential.element[7].type.code = #CodeableConcept
* differential.element[8].id = "Subject.dateOfBirth"
* differential.element[8].path = "Subject.dateOfBirth"
* differential.element[8].short = "Date of birth"
* differential.element[8].definition = "Date of birth"
* differential.element[8].min = 0
* differential.element[8].max = "*"
* differential.element[8].type.code = #dateTime
* differential.element[9].id = "Subject.placeOfBirth"
* differential.element[9].path = "Subject.placeOfBirth"
* differential.element[9].short = "Place of birth"
* differential.element[9].definition = "Place of birth"
* differential.element[9].min = 0
* differential.element[9].max = "*"
* differential.element[9].type.code = #Address
* differential.element[10].id = "Subject.contact"
* differential.element[10].path = "Subject.contact"
* differential.element[10].short = "Contact"
* differential.element[10].definition = "Contact"
* differential.element[10].min = 0
* differential.element[10].max = "*"
* differential.element[10].type.code = #BackboneElement
* differential.element[11].id = "Subject.contact.email"
* differential.element[11].path = "Subject.contact.email"
* differential.element[11].short = "E-mail"
* differential.element[11].definition = "E-mail"
* differential.element[11].min = 0
* differential.element[11].max = "*"
* differential.element[11].type.code = #uri
* differential.element[12].id = "Subject.contact.mobile"
* differential.element[12].path = "Subject.contact.mobile"
* differential.element[12].short = "Mobile phone"
* differential.element[12].definition = "Mobile phone"
* differential.element[12].min = 0
* differential.element[12].max = "*"
* differential.element[12].type.code = #uri
* differential.element[13].id = "Subject.guardian"
* differential.element[13].path = "Subject.guardian"
* differential.element[13].short = "Guardian"
* differential.element[13].definition = "Guardian"
* differential.element[13].min = 0
* differential.element[13].max = "*"
* differential.element[13].type.code = #BackboneElement
* differential.element[14].id = "Subject.guardian.contact"
* differential.element[14].path = "Subject.guardian.contact"
* differential.element[14].short = "Contact"
* differential.element[14].definition = "Contact"
* differential.element[14].min = 0
* differential.element[14].max = "*"
* differential.element[14].type.code = #BackboneElement
* differential.element[15].id = "Subject.guardian.contact.email"
* differential.element[15].path = "Subject.guardian.contact.email"
* differential.element[15].short = "E-mail"
* differential.element[15].definition = "E-mail"
* differential.element[15].min = 0
* differential.element[15].max = "*"
* differential.element[15].type.code = #uri
* differential.element[16].id = "Subject.guardian.contact.mobile"
* differential.element[16].path = "Subject.guardian.contact.mobile"
* differential.element[16].short = "Mobile phone"
* differential.element[16].definition = "Mobile phone"
* differential.element[16].min = 0
* differential.element[16].max = "*"
* differential.element[16].type.code = #uri
//  
// === MAPPING === 
// 
* differential.element[0].mapping[0].identity = "fhir"
* differential.element[0].mapping[0].map = "Patient"

* differential.element[1].mapping[0].identity = "fhir"
* differential.element[1].mapping[0].map = "Patient.identifier"

* differential.element[2].mapping[0].identity = "fhir"
* differential.element[2].mapping[0].map = "Patient.name"

* differential.element[3].mapping[0].identity = "fhir"
* differential.element[3].mapping[0].map = "Patient.name.given"




* differential.element[5].mapping[0].identity = "fhir"
* differential.element[5].mapping[0].map = "Patient.name.family"

* differential.element[6].mapping[0].identity = "fhir"
* differential.element[6].mapping[0].map = "Patient.extension('http://hl7.org/fhir/StructureDefinition/patient-mothersMaidenName')"

* differential.element[7].mapping[0].identity = "fhir"
* differential.element[7].mapping[0].map = "Patient.gender"

* differential.element[8].mapping[0].identity = "fhir"
* differential.element[8].mapping[0].map = "Patient.birthDate"

* differential.element[9].mapping[0].identity = "fhir"
* differential.element[9].mapping[0].map = "Patient.extension(http://hl7.org/fhir/StructureDefinition/patient-birthPlace')"

* differential.element[10].mapping[0].identity = "fhir"
* differential.element[10].mapping[0].map = "Patient.contact"

* differential.element[11].mapping[0].identity = "fhir"
* differential.element[11].mapping[0].map = "Patient.contact.telecom"

* differential.element[12].mapping[0].identity = "fhir"
* differential.element[12].mapping[0].map = "Patient.contact.telecom"




* differential.element[14].mapping[0].identity = "fhir"
* differential.element[14].mapping[0].map = "Patient.contact"

* differential.element[15].mapping[0].identity = "fhir"
* differential.element[15].mapping[0].map = "Patient.contact.telecom"

* differential.element[16].mapping[0].identity = "fhir"
* differential.element[16].mapping[0].map = "Patient.contact.telecom"























































* differential.element[0].mapping[0].identity = "cda"
* differential.element[0].mapping[0].map = "ClinicalDocument.recordTarget.patientRole"

* differential.element[1].mapping[0].identity = "cda"
* differential.element[1].mapping[0].map = ".id"

* differential.element[2].mapping[0].identity = "cda"
* differential.element[2].mapping[0].map = ".patient.name"

* differential.element[3].mapping[0].identity = "cda"
* differential.element[3].mapping[0].map = ".patient.name.family"

* differential.element[4].mapping[0].identity = "cda"
* differential.element[4].mapping[0].map = ".patient.name.family"

* differential.element[5].mapping[0].identity = "cda"
* differential.element[5].mapping[0].map = ".patient.name.given"




* differential.element[7].mapping[0].identity = "cda"
* differential.element[7].mapping[0].map = ".patient.administrativeGenderCode"

* differential.element[8].mapping[0].identity = "cda"
* differential.element[8].mapping[0].map = ".patient.birthTime"

* differential.element[9].mapping[0].identity = "cda"
* differential.element[9].mapping[0].map = ".patient.birthplace"

* differential.element[10].mapping[0].identity = "cda"
* differential.element[10].mapping[0].map = "ClinicalDocument.recordTarget.participant"

* differential.element[11].mapping[0].identity = "cda"
* differential.element[11].mapping[0].map = "ClinicalDocument.recordTarget.participant.associatedEntity.telecom"

* differential.element[12].mapping[0].identity = "cda"
* differential.element[12].mapping[0].map = "ClinicalDocument.recordTarget.participant.associatedEntity.telecom"

* differential.element[13].mapping[0].identity = "cda"
* differential.element[13].mapping[0].map = ".patient.guardian"




* differential.element[15].mapping[0].identity = "cda"
* differential.element[15].mapping[0].map = ".patient.guardian.telecom"

* differential.element[16].mapping[0].identity = "cda"
* differential.element[16].mapping[0].map = ".patient.guardian.telecom"















































// 
