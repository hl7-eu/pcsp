// -------------------------------------------------------------------------------				
//  Logical Model				pcsp-Radiotherapy.fsh
// -------------------------------------------------------------------------------				
Logical: Radiotherapy				
Id: Radiotherapy				
Title: "Radiotherapy"				
Description:  """Radiotherapy
Maturity Level: 2 - Ready for Review"""				
* relatedDiagnosis 0..1 Identifier "Related Diagnosis" """Identifier of the diagnosis for which this radiotherapy is performed"""				
* relatedRelapse 0..1 Identifier "Related relapse/progression (after FLT)" """Identifier of the relapse/progression (after FLT) for which this radiotherapy is performed"""				
* identifier 0..* Identifier "Identifier of the radotherapy episode" """Progressive number of radotherapy episode.  An EPISODE might be a single or several courses of pre-planned treatment within a consecutive time period to different sites. For example, if a patient had radiotherapy to a limb and also to the lungs for a Ewing?s sarcoma these should be entered  in one episode of treatment but as separate radiotherapy courses with their respective site, total dose, and number of fractions. They will both be within one episode"""				
* istitutionOfTreatment 0..1 BackboneElement "Institution of treatment" """Please indicate the institution in which the radiotherapeutic treatment was given"""				
* istitutionOfTreatment.description 0..1 string "Institution description" """Please provide name, city and countryof the institution"""				
* istitutionOfTreatment.name 0..1 string "Institution name" """Institution name"""				
* istitutionOfTreatment.address 0..1 BackboneElement "Institution address" """Institution address"""				
* istitutionOfTreatment.address.name 0..1 string "Institution city" """Institution city"""				
* istitutionOfTreatment.address.country 0..1 string "Institution country" """Institution country"""				
* startDate 1..1 dateTime "Start date" """Enter the date on which the first treatment (fraction) of radiotherapy was given, in a DD/MM/YYYY format. If the date is unkown or partially missed insert the year at the best of your knowledge."""				
* enddate 0..1 dateTime "End date" """Enter the full date on which the last treatment (fraction) of radiotherapy was given in a DD/MM/YYYY format.   
When only a single radiation treatment/fraction was given, the start and end dates will be the same. If the date is unkown or partially missed insert the year at the best of your knowledge."""				
* type 1..1 CodeableConcept "Type of radiotherapy" """External Beam Radiation: The radiation is produced by a large machine, and the type of the machine needs to be recorded in the subsequent field.
Brachytherapy: a material that is radioactive (often a fine wire or a tiny ?seed?) is placed on or in the body to give a very localized high dose of radiation. Details will be asked in the next field
Metabolic or radionuclide treatment/therapy: a liquid substance is injected into the blood stream and carries radiation throughout the body with the aim of reaching tumour tissue.  Also in this case, details will be asked in the subsequent field.
1 => External beam
2 => Brachytherapy
3 => Metabolic/radionuclide therapy"""				
* deviceType 0..1 CodeableConcept "type of machine (If external beam)" """A detailed description of the type of machine can be found in the user's manual.
If you have the name of a machine but cannot find it in this list, please select Other and add the name in free text. 
If you know the treatment was with external beam but not which machine or energy, select 'Unknown'.
1 =>Orthovoltage / kilovoltage usually 200 - 300kv X rays/photons
2 =>Linac (Linear Accelerator) megavoltage MV X Rays/photons
3 =>Linac (Linear Accelerator) electrons
4 => Cobalt - MV gamma rays / photons
5 => Proton Beam
6 => Other, if other specify the name
-9922 => Unknown """				
* brachytherapyType 0..1 CodeableConcept "type of brachytherapy (if brachytherapy)" """? Surface brachytherapy - a radiation source (radioactive material) is positioned on a superficial tumour
? Interstitial brachytherapy ? a radiation source is implanted into a tumour
? Intracavitary or intraluminal brachytherapy - a radiation source is introduced in special applicators into a body cavity or lumen

1 => Surface brachytherapy
2 => Interstitial brachytherapy
3 => Intracavitary or intraluminal brachytherapy
-9922=> Unknown"""				
* isotopes 0..1 CodeableConcept "Radioactive materials (if brachytherapy)" """Specify the radioactive material (isotopes) used: If not listed, select 'Other then specify'
1 => Iridium (Ir)
2 => Gold (Au)
3 => Iodine (I)
4 => Caesium (Cs)
5 => Other
-9922 => Unknown"""				
* radionuclides 0..1 CodeableConcept "radionuclides (required If metabolic/radionuclide)" """A detailed description of the radionuclides can be found in the user's manual.
If you have the name of a radionuclide but cannot find it in this list, please select Other and add the name in free text. 
If you know the treatment was with external beam but not which machine or energy, select 'Unknown'.
1 => Iodine-131
2 => MIBG
3 =>Yttrium 90
4 => Other
-9922 => Unknown"""				
* numberOfCourses 0..1 integer "Number of courses  (If metabolic/radionuclide)" """For Metabolic/radionuclide therapy"""				
* target 0..5 BackboneElement "Target" """Site' refers to the radiation therapy treatment field, i.e. the part of the body that received the radiation dose in order to treat the tumour. 
Required if Type of radiotherapy = 1 or 2 (External Beam, Brachytherapy)ÿ
If more than one body site was treated with radiotherapy, you can add anther site and describe; upto 5 sites are allowed by the system """				
* target.site 1..1 CodeableConcept "Body Site Code" """RT sites are coded with a 3 tier level (see list). The first is ?Tier 1?.  The first digit/s of the code, describes the large topographical body areas e.g. brain, chest, abdomen, limb. Since radiation fields often involve more than one topographical area we have added ?cervico-thoracic?, ?thoraco abdominal? and ?abdomino pelvic? areas to Tier 1. 
The second (Tier 2) includes subcategories of Tier 1 sites e.g. brain stem, heart, liver, upper limb. 
Where the information is available a third (Tier 3) of further subdivisions includes more detailed areas. 
When using the SurPass platform, as you start typing the name of the site, a drop down list with related terms will appear (special sites like Inverted Y are included). If the RT site listed in the medical record cannot reasonably be matched to one of the sites listed in the computer, choose ??Other' (.98 in tier 2) and then add in free text the name of this RT site. """				
* target.laterality 0..1 CodeableConcept "Laterality" """Report laterality of the radiation.
 R = right,
 L = left,
 B = bilateral"""				
* target.details 0..1 string "Details" """If needed it is possible to add details"""				
* target.from 0..1 string "Start point" """When the radiation involves more than one site, eventually covering different body areas (e.g. torax and abdomen), select the starting point using the vertebrae to identify the upper limit (e.g.: Thoraco-Abdominal (area): Paraspinal - Thoracic / dorsal vertebra 10)"""				
* target.to 0..1 string "End point" """When the radiation involves more than one site, eventually covering different body areas (e.g. torax and abdomen), select the ending point using the vertebrae to identify the lower limit (e.g.: Thoraco-Abdominal (area): Paraspinal - Lumbar vertebra 3)"""				
* target.position 0..1 CodeableConcept "Position" """Specify whether the radiation was anterior or posterior. 
1 => Anterior
2 => Posterior
-9922 = NK"""				
* target.totalDose 0..1 BackboneElement "Total dose" """Specify the total dose given to the primary radiation therapy site.
If the dose is not known, write NK."""				
* target.totalDose.completionStatus 0..1 CodeableConcept "The reported doses are incomplete (either under- or over-estimated)" """Check in case of incomplete doses"""				
* target.totalDose.statusReason 0..1 CodeableConcept "Specify reasons why" """Specify reasons of incomplete estimated doses"""				
* target.totalDose.notKnown 0..1 string "Not known dose" """Not known dose"""				
* target.totalDose.dose 0..1 decimal "Dose" """Specify the total dose given to the primary radiation therapy site."""				
* target.totalDose.unit 0..1 CodeableConcept "Measure unit" """External Beam Radiation Therapy (EBRT) and Brachytherapy doses are in Gy. If doses are reported in cGY, roughly two zeroes need to be deleted (e.g. 100 cGy = 1 Gy).
specify if dose is recorded in bequerels (MBq or GBq) or curies (Ci) or Unkwnon"""				
* target.totalDose.fractions 0..1 integer "Number of fractions (if  external beam)" """A FRACTION of radiation treatment is a single attendance for treatment; if 'not known' insert NK"""				
* target.boost 0..5 BackboneElement "Boost" """A boost is an extra dose of radiotherapy directed to a smaller area inside the primary radiation field. (only if type is External Beam)"""				
* target.boost.type 1..1 CodeableConcept "Type of Boost" """Specify radiation type of the boost.
1 => External Beam
2 => Brachytherapy
-9922 => NK ÿ"""				
* target.boost.given 0..1 CodeableConcept "Boost given" """Flag indicating if a boost was given, not given or unknown"""				
* target.boost.site 0..1 CodeableConcept "Boost site" """Site' refers to the radiation therapy treatment field. As you start typing the name of the site, a drop down list with related terms will appear (special sites like Inverted Y are included). If the RT site listed in the medical record cannot reasonably be matched to one of the sites listed in the computer, choose: ??Other' and then add in free text the name of this RT site. 
required if given"""				
* target.boost.laterality 0..1 CodeableConcept "Laterality" """Report laterality of the radiation.
 R = right,
 L = left,
 B = bilateral"""				
* target.boost.details 0..1 string "Details" """If needed it is possible to add details"""				
* target.boost.from 0..1 string "Start point" """When the radiation involves more than one site, eventually covering different body areas (e.g. torax and abdomen), select the starting point using the vertebrae to identify the upper limit (e.g.: Thoraco-Abdominal (area): Paraspinal - Thoracic / dorsal vertebra 10)"""				
* target.boost.to 0..1 string "End point" """When the radiation involves more than one site, eventually covering different body areas (e.g. torax and abdomen), select the ending point using the vertebrae to identify the lower limit (e.g.: Thoraco-Abdominal (area): Paraspinal - Lumbar vertebra 3)"""				
* target.boost.position 0..1 CodeableConcept "Position" """Specify whether the radiation was anterior or posterior. 
1 => Anterior
2 => Posterior
-9922 = NK"""				
* target.boost.totalDose 1..1 BackboneElement "Total dose" """Specify the total dose given to the boost site."""				
* target.boost.totalDose.completionStatus 0..1 CodeableConcept "The reported doses are incomplete (either under- or over-estimated)" """Check in case of incomplete doses"""				
* target.boost.totalDose.statusReason 0..1 CodeableConcept "Specify reasons why" """Specify reasons of incomplete estimated doses"""				
* target.boost.totalDose.notKnown 0..1 CodeableConcept "Not known dose" """Not known dose"""				
* target.boost.totalDose.dose 0..1 decimal "Dose" """Specify the total dose given to the boost site."""				
* target.boost.totalDose.unit 0..1 CodeableConcept "Unit" """Specify the unit of the boost in case of external beam radiotherapy as  Gy. 
specify if dose is recorded in bequerels (MBq or GBq) or curies (Ci) or Unkwnon"""				
* target.boost.totalDose.fractions 0..1 integer "Number of fractions (if  external beam)" """A fraction of radiation treatment is a single attendance for treatment. Please specify the number of fractions given as included in the boost. If not known, insert NK."""				
* target.shielding 0..1 BackboneElement "Shielding" """Shielding, in some records this is called ?blocking? or ?blocks?. """				
* target.shielding.status 0..1 CodeableConcept "Shielding status" """Specify if shielding was used or not. 
Yes;  No;  NK ÿ"""				
* target.shielding.position 0..1 string "Position of shielding" """Describe the positioning of shielding"""				
* target.site.notes 0..1 string "Additional description" """Record any available details on the shielded tissue/organ (or size of shielded area)."""				
* organAtRisk 0..1 BackboneElement "Organ at Risk" """Organs at Risk"""				
* organAtRisk.dosimetry 0..1 CodeableConcept "Dosimetry on Organ at Risk" """Specify if there is available information on Dosimetry of Organs at Risk [Yes/No]"""				
* organAtRisk.dosimetryDocument 0..2 Binary "Electronic / scanned version(s) of relevant document(s)" """If Dosimetry on Organ at Risk is available, upload here the electronic / scanned version(s) of any relevant document(s)"""				
* files 0..2 Binary "Upload radiotherapy file (1)" """Radiotherapy file(s) can be uploaded here"""				
* notes 0..1 string "Notes" """Notes"""				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
// -------------------------------------------------------------------------------				
//  Map to FHIR R4				
// -------------------------------------------------------------------------------				
Mapping: Radio2Fhir				
Id: fhir				
Title: "Radiotherapy model to PCSP HL7 FHIR R4 Profiles"				
Source: Radiotherapy				
Target: "hl7.org/fhir/r4"				
				
* . -> "Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-radiotheraphy-eu-pcsp')"				
* relatedDiagnosis -> ".reasonReference"				
* relatedRelapse -> ".reasonReference"				
* identifier -> ".identifier"				
* istitutionOfTreatment -> ".location.resolve().conformsTo(http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Location-eu-pcsp)"				
* istitutionOfTreatment.description -> "Location.description"				
* istitutionOfTreatment.name -> "Location.name"				
* istitutionOfTreatment.address -> "Location.address.city"				
* istitutionOfTreatment.address.name -> ""				
* istitutionOfTreatment.address.country -> "Location.address.country"				
* startDate -> ".performedPeriod.start"				
* enddate -> ".performedPeriod.end"				
* type -> ".code"				
* deviceType -> ".usedCode"				
* brachytherapyType -> ".extension('http://hl7.org/fhir/StructureDefinition/procedure-method').valueCodeableConcept"				
* brachytherapyType -> ".extension('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/radiotherapy-energy-or-isotope').valueCodeableConcept"				
* isotopes -> ".extension('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/radiotherapy-energy-or-isotope').valueCodeableConcept"				
* radionuclides -> ".extension(http://hl7.eu/fhir/ig/pcsp/StructureDefinition/procedure-performedTiming).valueTiming.repeat.count"				
* numberOfCourses -> ""				
* target -> ".bodySite"				
* target.site -> ".extension(http://hl7.eu/fhir/ig/pcsp/StructureDefinition/ResourceRelatedInfo-eu-pcsp).resolve().conformsTo(http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Observation-cumulativeDoseRad-eu-pcsp)"				
* target.site -> ".bodySite"				
* target.laterality -> ".extension(http://hl7.eu/fhir/ig/pcsp/StructureDefinition/mcode-laterality-qualifier).valueCodeableConcept"				
* target.details -> ".text"				
* target.from -> ".bodySite.where(extension('mcode-body-location-qualifier').valueCodeableConcept = http://snomed.info/sct#272488003 'From-structure')"				
* target.to -> ".bodySite.where(extension('mcode-body-location-qualifier').valueCodeableConcept = http://hl7.eu/fhir/ig/pcsp/CodeSystem/cs-generic-eu-pcsp#to-structure 'To-structure')"				
* target.to -> ".extension('http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-body-location-qualifier').valueCodeableConcept"				
* target.position -> ".extension(http://hl7.eu/fhir/ig/pcsp/StructureDefinition/ResourceRelatedInfo-eu-pcsp).resolve().conformsTo(http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Observation-cumulativeDoseRad-eu-pcsp)"				
* target.totalDose -> ".status = #preliminary"				
* target.totalDose.completionStatus -> ".extension('http://hl7.org/fhir/StructureDefinition/event-statusReason')"				
* target.totalDose.statusReason -> ".valueCodeableConcept = http://terminology.hl7.org/CodeSystem/data-absent-reason#unknown"				
* target.totalDose.notKnown -> ".valueQuantity.value"				
* target.totalDose.dose -> ".valueQuantity.code"				
* target.totalDose.unit -> ".extension(http://hl7.eu/fhir/ig/pcsp/StructureDefinition/procedure-performedTiming).valueTiming.repeat.count"				
* target.totalDose.fractions -> "Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-radiotheraphyBoost-eu-pcsp')"				
* target.boost -> ".partOf.resolve().code"				
* target.boost.type -> ".status"				
* target.boost.given -> ".bodySite"				
* target.boost.site -> ".extension(http://hl7.eu/fhir/ig/pcsp/StructureDefinition/ResourceRelatedInfo-eu-pcsp).resolve().conformsTo(http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Observation-cumulativeDoseRad-eu-pcsp).bodySite"				
* target.boost.laterality -> ".extension(http://hl7.eu/fhir/ig/pcsp/StructureDefinition/mcode-laterality-qualifier).valueCodeableConcept"				
* target.boost.details -> ".note"				
* target.boost.from -> ".bodySite.where(extension(http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-body-location-qualifier).valueCodeableConcept = http://snomed.info/sct#272488003 'From-structure')"				
* target.boost.to -> ".bodySite.where(extension(http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-body-location-qualifier).valueCodeableConcept = http://hl7.eu/fhir/ig/pcsp/CodeSystem/cs-generic-eu-pcsp#to-structure 'To-structure')"				
* target.boost.position -> ".extension(http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-body-location-qualifier).valueCodeableConcept"				
* target.boost.totalDose -> ".extension(http://hl7.eu/fhir/ig/pcsp/StructureDefinition/ResourceRelatedInfo-eu-pcsp).resolve().conformsTo(http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Observation-cumulativeDoseRad-eu-pcsp)"				
* target.boost.totalDose.completionStatus -> ".status = #preliminary"				
* target.boost.totalDose.statusReason -> ".extension('http://hl7.org/fhir/StructureDefinition/event-statusReason')"				
* target.boost.totalDose.notKnown -> ".valueCodeableConcept = http://terminology.hl7.org/CodeSystem/data-absent-reason#unknown"				
* target.boost.totalDose.dose -> ".valueQuantity.value"				
* target.boost.totalDose.unit -> ".valueQuantity.code"				
* target.boost.totalDose.fractions -> ".extension(http://hl7.eu/fhir/ig/pcsp/StructureDefinition/procedure-performedTiming).valueTiming.repeat.count"				
* target.shielding -> "Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-radiotheraphyShield-eu-pcsp')"				
* target.shielding.status -> ".status"				
* target.shielding.position -> ".bodySite"				
* target.site.notes -> ".note"				
* organAtRisk -> ".extension(http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo).ofType(DocumentReference)"				
* organAtRisk.dosimetry -> ".exists()"				
* organAtRisk.dosimetryDocument -> "."				
* files -> ".extension(http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo).ofType(DocumentReference)"				
* notes -> ".note"				
// --END				
// --END				
// --END				
