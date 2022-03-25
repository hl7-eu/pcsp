  
// ============= Patient ==========================
  
Instance: PatientHulafe-1
InstanceOf: PatientPcsp
Title:   "Patient: Hulafe"
Description: "Sample of Patient demographics data based on information provided by Hulafe"
Usage: #example
* language = #ES
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/patient-mothersMaidenName"
* extension[=].valueString = "APELLIDO2"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension[=].valueAddress.line = "CALLEFALSA123"
* extension[=].valueAddress.city = "Valencia"
* extension[=].valueAddress.state = "Valencia"
* extension[=].valueAddress.country = "España"
* identifier.use = #official
* identifier.system = "urn:oid:2.16.724.4.10.50.200"
* identifier.value = "123456789"
* name.use = #anonymous
* name.text = "NOMBRE APELLIDO1 APELLIDO2"
* name.family = "APELLIDO1"
* name.given = "NOMBRE"
* telecom.system = #email
* telecom.value = "belensmicorr@gggmail.com"
* gender = #female
* birthDate = "2005-07-01"
* communication.language = urn:ietf:bcp:47#es-ES "Español"