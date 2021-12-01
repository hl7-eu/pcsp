

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
  
  
  /* === CINECA

CODPAT	PASSPORT	LASTNAME	FIRSTNAME	GENDER	D_GENDER	DOBDT	ADDRESS	CONTACT	D_CONTACT	EMAIL	MPHONE	PLBDT
223	IT120150902223	ROSSI	MARIO	1	Maschio	11/11/1985	ROSIGNANO MARITTIMO	2	Genitori	d.saraceno@cineca.it
398593	LA SPEZIA

=== */

Instance:  PatientHulafe
InstanceOf: PatientPcsp
Title:   "Patient: Sample from Hulafe"
Description: "Sample of Patient created based on information provided by Hulafe"
Usage:  #example
//----------------------------------------------------------

* extension[patient-birthPlace].valueAddress.city = "Abrantes"
* extension[patient-birthPlace].valueAddress.country = "Portugal"
* extension[patient-birthPlace].valueAddress.postalCode = "46181"

* identifier.system = "http://hl7.eu/fhir/ig/pcsp/sid/pat-id-hulafe" // Temporary assigned 
* identifier.value = "04969377"
* name.given = "Urbano"
* name.family = "BASOA MANCEBO"
* birthDate = 2014-05-14
* gender = #male


* contact
  * relationship = $v3-RoleCode#PRN "Parent" // Basta NOK o bisogna specificare genitori ?
  * telecom[0].system = #email
  * telecom[=].value = "tattedblackchick@gmail.com"
  * telecom[+].system = #phone
  * telecom[=].value = "990778314"
  
Instance:  PatientVulsk
InstanceOf: PatientPcsp
Title:   "Patient: Sample created on Vulsk data"
Description: "Sample of Patient created based on information provided by Vulsk"
Usage:  #example
//----------------------------------------------------------

* identifier.system = "http://hl7.eu/fhir/ig/pcsp/sid/pat-id-vulsk" // Temporary assigned 
* identifier.value = "11725549"
* name[0].given[0] = "Marija"
* name[0].given[+] = "Asta"
* name[0].family = "Jonaitė"
* name[+].given[0] = "Marija"
* name[=].given[+] = "Asta"
* name[=].family = "Petraitytė"
* birthDate = 2016-12-12
* gender = #female