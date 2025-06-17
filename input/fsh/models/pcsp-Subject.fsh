// -------------------------------------------------------------------------------				
//  Logical Model				pcsp-Subject.fsh
// -------------------------------------------------------------------------------				
Logical: Subject				
Id: Subject				
Title: "Subject of care"				
Description:  """Subject of care"""				
* identifier 1..* Identifier "ID" """ID"""				
* name 1..* BackboneElement "Subject Name" """Subject Name"""				
* name.lastname 1..* string "Lastname" """Lastname"""				
* name.middleName 0..* string "Middlename" """Middlename"""				
* name.firstName 1..* string "Firstname" """Firstname"""				
* lastnameAtDiagnosis 0..* string "Lastname at diagnosis (if different from the actual one)" """Lastname at diagnosis (if different from the actual one)"""				
* gender 1..* CodeableConcept "Gender/Sex" """Gender/Sex"""				
* dateOfBirth 0..* dateTime "Date of birth" """Date of birth"""				
* placeOfBirth 0..* Address "Place of birth" """Place of birth"""				
* contact 0..* BackboneElement "Contact - receiver of the passport" """Contact - receiver of the passport"""				
* contact.email 0..* uri "E-mail" """E-mail"""				
* contact.mobile 0..* uri "Mobile phone" """Mobile phone"""				
* contact.relationship 0..1 CodeableConcept "Relationship with the subject" """Relationship with the subject"""				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
// -------------------------------------------------------------------------------				
//  Map to FHIR R4				
// -------------------------------------------------------------------------------				
Mapping: Subject2Fhir				
Id: fhir				
Title: "Subject model to PCSP HL7 FHIR R4 Profiles"				
Source: Subject				
Target: "hl7.org/fhir/r4"				
				
* . -> "Patient"				
* identifier -> "Patient.identifier"				
* name -> "Patient.name"				
* name.lastname -> "Patient.name.given"				
* name.middleName -> "Patient.name.given"				
* name.firstName -> "Patient.name.family"				
* lastnameAtDiagnosis -> "Patient.name.family"				
* gender -> "Patient.gender"				
* dateOfBirth -> "Patient.birthDate"				
* placeOfBirth -> "Patient.extension(http://hl7.org/fhir/StructureDefinition/patient-birthPlace')"				
* contact -> "Patient.contact (if not the patient)"				
* contact -> "Patient.telecom (if the patient)"				
* contact -> "DocumentManifest.recipient (if intended recipient)"				
* contact.email -> "Patient.contact.telecom (if not the patient)"				
* contact.email -> "Patient.telecom (if the patient)"				
* contact.email -> "DocumentManifest.recipient.resolve().telecom (if intended recipient)"				
* contact.mobile -> "Patient.contact.telecom (if not the patient)"				
* contact.mobile -> "Patient.telecom (if the patient)"				
* contact.mobile -> "DocumentManifest.recipient.resolve().telecom (if intended recipient)"				
* contact.relationship -> "Patient.contact.relationship (if not the patient)"				
* contact.relationship -> "N/A (if the patient)"				
* contact.relationship -> "DocumentManifest.recipient.resolve().relationship (if intended recipient - not patient)"				
// --END				
// --END				
// --END				
// --END				
