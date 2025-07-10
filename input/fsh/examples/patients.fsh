

/* === CINECA

CODPAT	PASSPORT	LASTNAME	FIRSTNAME	GENDER	D_GENDER	DOBDT	ADDRESS	CONTACT	D_CONTACT	EMAIL	MPHONE	PLBDT
223	IT120150902223	ROSSI	MARIO	1	Maschio	11/11/1985	ROSIGNANO MARITTIMO	2	Genitori	d.saraceno@cineca.it
398593	LA SPEZIA

=== */

Instance:  PatientCineca
InstanceOf: PatientPcsp
Title:   "Cineca - Patient: Sample of Patient (Rossi)"
Description: "Sample of Patient created based on information available in the PCSP platform"
Usage:  #example
//----------------------------------------------------------

* extension[patient-birthPlace].valueAddress.city = "ROSIGNANO MARITTIMO"
* identifier.system = $pat-id-cineca // Temporary assigned 
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
Title:   "Hulafe - Patient: Sample of Patient (Basoa Mancebo)"
Description: "Sample of Patient created based on information provided by Hulafe"
Usage:  #example
//----------------------------------------------------------

* extension[patient-birthPlace].valueAddress.city = "Abrantes"
* extension[patient-birthPlace].valueAddress.country = "Portugal"
* extension[patient-birthPlace].valueAddress.postalCode = "46181"

* identifier.system = $pat-id-hulafe // Temporary assigned 
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
  

Instance: PatientHulafe-1
InstanceOf: PatientPcsp
Title:   "Hulafe - Patient: Sample of demographics data"
Description: "Sample of Patient demographics data based on information provided by Hulafe"
Usage: #example
* language = #es-ES
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
* communication.language = $bcp47#es-ES "Spanish (Spain)"

Instance:  PatientVulsk
InstanceOf: PatientPcsp
Title:   "Vulsk - Patient: Sample of Patient (Jonaitė)"
Description: "Sample of Patient created based on information provided by Vulsk"
Usage:  #example
//----------------------------------------------------------

* identifier.system = $pat-id-vulsk // Temporary assigned 
* identifier.value = "11725549"
* name[0].given[0] = "Marija"
* name[0].given[+] = "Asta"
* name[0].family = "Jonaitė"
* name[+].given[0] = "Marija"
* name[=].given[+] = "Asta"
* name[=].family = "Petraitytė"
* birthDate = 2016-12-12
* gender = #female


//----------------------------------------------------------
Instance:  PatientMainzFischer
InstanceOf: PatientPcsp
Title:   "Mainz - Patient: Sample of Patient (Fischer)"
Description: "Sample of Patient created based on information provided by Mainz (Fischer)"
Usage:  #example
//----------------------------------------------------------

* extension[patient-birthPlace].valueAddress.city = "HAMBURG"
* identifier.system = $pat-id-mainz // Temporary assigned 
* identifier.value = "L0002"
* name[0].given = "Christian"
* name[0].family = "Fischer"
* birthDate = 1993-07-07
* gender = #male


//----------------------------------------------------------
Instance:  PatientMainzZeisig
InstanceOf: PatientPcsp
Title:   "Mainz - Patient: Sample of Patient (Zeisig)"
Description: "Sample of Patient created based on information provided by Mainz (Zeisig)"
Usage:  #example
//----------------------------------------------------------

* extension[patient-birthPlace].valueAddress.city = "Kiel"
* identifier.system = $pat-id-mainz // Temporary assigned 
* identifier.value = "L0010"
* name[0].given = "Sarah"
* name[0].family = "Zeisig"
* birthDate = 1996-12-12
* gender = #female
* telecom[0].system = #email
* telecom[=].value = "sa.zei@online.de"
* telecom[+].system = #phone
* telecom[=].value = "0123 4567890"