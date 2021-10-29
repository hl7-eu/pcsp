

/* === CINECA

CODPAT	PASSPORT	LASTNAME	FIRSTNAME	GENDER	D_GENDER	DOBDT	ADDRESS	CONTACT	D_CONTACT	EMAIL	MPHONE	PLBDT
223	IT120150902223	ROSSI	MARIO	1	Maschio	11/11/1985	ROSIGNANO MARITTIMO	2	Genitori	d.saraceno@cineca.it
398593	LA SPEZIA

=== */

Instance:  PatientCineca
InstanceOf: PatientPcsp
Title:   "Patient: Sample from Cineca"
Description: "Sample of Patient created based on information available in the PCSP platform"
Usage:  #example
//----------------------------------------------------------

* extension[patient-birthPlace].valueAddress.city = "ROSIGNANO MARITTIMO"
* identifier.system = "http://hl7.eu/fhir/ig/pcsp/sid/pat-id-cineca" // Temporary assigned 
* identifier.value = "223"
* name.given = "MARIO"
* name.family = "ROSSI"
* birthDate = 1985-11-11
* gender = #male
* contact
  * relationship = $v3-RoleCode#PRN "Parent" // Basta NOK o bisogna specificare genitori ?
  * telecom[0].system = #email
  * telecom[=].value = "d.saraceno@cineca.it"
  * telecom[+].system = #phone
  * telecom[=].value = "398593"
