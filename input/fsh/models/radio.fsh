Instance: Radiotherapy
InstanceOf: StructureDefinition
Description: "Radiotherapy
Maturity Level: 2 - Ready for Review"
Title: "Radiotherapy"
Usage: #definition
* publisher = "PanCareSurPass project"
* status = #draft
* url = "http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Radiotherapy"
* name = "Radiotherapy"
* title = "Radiotherapy"
* status = #draft
* experimental = true
* description = "Radiotherapy
Maturity Level: 2 - Ready for Review"
* version = "0.0.1"
* mapping[0].identity = "fhir"
* mapping[0].uri = "hl7.org/fhir/r4"
* mapping[0].name = "FHIR"
* kind = #logical
* abstract = true
* extension[0].url = $elementdefinition-namespace
* extension[=].valueUri = $pcspUri
* type = "http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Radiotherapy"
* baseDefinition = "http://hl7.org/fhir/StructureDefinition/Element"
* derivation = #specialization
* differential.element[0].id = "Radiotherapy"
* differential.element[0].path = "Radiotherapy"
* differential.element[0].short = "Radiotherapy"
* differential.element[0].definition = "Radiotherapy"
* differential.element[0].min = 1
* differential.element[0].max = "1"
* differential.element[1].id = "Radiotherapy.relatedDiagnosis"
* differential.element[1].path = "Radiotherapy.relatedDiagnosis"
* differential.element[1].short = "Related Diagnosis"
* differential.element[1].definition = "Identifier of the diagnosis for which this radiotherapy is performed"
* differential.element[1].min = 0
* differential.element[1].max = "1"
* differential.element[1].type.code = #Identifier


* differential.element[2].id = "Radiotherapy.relatedRelapse"
* differential.element[2].path = "Radiotherapy.relatedRelapse"
* differential.element[2].short = "Related relapse/progression (after FLT)"
* differential.element[2].definition = "Identifier of the relapse/progression (after FLT) for which this radiotherapy is performed"
* differential.element[2].min = 0
* differential.element[2].max = "1"
* differential.element[2].type.code = #Identifier


* differential.element[3].id = "Radiotherapy.identifier"
* differential.element[3].path = "Radiotherapy.identifier"
* differential.element[3].short = "Identifier of the radotherapy episode"
* differential.element[3].definition = "Progressive number of radotherapy episode.  An EPISODE might be a single or several courses of pre-planned treatment within a consecutive time period to different sites. For example, if a patient had radiotherapy to a limb and also to the lungs for a Ewing?s sarcoma these should be entered  in one episode of treatment but as separate radiotherapy courses with their respective site, total dose, and number of fractions. They will both be within one episode"
* differential.element[3].min = 0
* differential.element[3].max = "*"
* differential.element[3].type.code = #Identifier


* differential.element[4].id = "Radiotherapy.istitutionOfTreatment"
* differential.element[4].path = "Radiotherapy.istitutionOfTreatment"
* differential.element[4].short = "Institution of treatment"
* differential.element[4].definition = "Please indicate the institution in which the radiotherapeutic treatment was given"
* differential.element[4].min = 0
* differential.element[4].max = "1"
* differential.element[4].type.code = #BackboneElement


* differential.element[5].id = "Radiotherapy.istitutionOfTreatment.description"
* differential.element[5].path = "Radiotherapy.istitutionOfTreatment.description"
* differential.element[5].short = "Institution description"
* differential.element[5].definition = "Please provide name, city and countryof the institution"
* differential.element[5].min = 0
* differential.element[5].max = "1"
* differential.element[5].type.code = #string


* differential.element[6].id = "Radiotherapy.istitutionOfTreatment.name"
* differential.element[6].path = "Radiotherapy.istitutionOfTreatment.name"
* differential.element[6].short = "Institution name"
* differential.element[6].definition = "Institution name"
* differential.element[6].min = 0
* differential.element[6].max = "1"
* differential.element[6].type.code = #string


* differential.element[7].id = "Radiotherapy.istitutionOfTreatment.address"
* differential.element[7].path = "Radiotherapy.istitutionOfTreatment.address"
* differential.element[7].short = "Institution address"
* differential.element[7].definition = "Institution address"
* differential.element[7].min = 0
* differential.element[7].max = "1"
* differential.element[7].type.code = #BackboneElement


* differential.element[8].id = "Radiotherapy.istitutionOfTreatment.address.name"
* differential.element[8].path = "Radiotherapy.istitutionOfTreatment.address.name"
* differential.element[8].short = "Institution city"
* differential.element[8].definition = "Institution city"
* differential.element[8].min = 0
* differential.element[8].max = "1"
* differential.element[8].type.code = #string


* differential.element[9].id = "Radiotherapy.istitutionOfTreatment.address.country"
* differential.element[9].path = "Radiotherapy.istitutionOfTreatment.address.country"
* differential.element[9].short = "Institution country"
* differential.element[9].definition = "Institution country"
* differential.element[9].min = 0
* differential.element[9].max = "1"
* differential.element[9].type.code = #string


* differential.element[10].id = "Radiotherapy.startDate"
* differential.element[10].path = "Radiotherapy.startDate"
* differential.element[10].short = "Start date"
* differential.element[10].definition = "Enter the date on which the first treatment (fraction) of radiotherapy was given, in a DD/MM/YYYY format. If the date is unkown or partially missed insert the year at the best of your knowledge."
* differential.element[10].min = 1
* differential.element[10].max = "1"
* differential.element[10].type.code = #dateTime


* differential.element[11].id = "Radiotherapy.enddate"
* differential.element[11].path = "Radiotherapy.enddate"
* differential.element[11].short = "End date"
* differential.element[11].definition = "Enter the full date on which the last treatment (fraction) of radiotherapy was given in a DD/MM/YYYY format.   
When only a single radiation treatment/fraction was given, the start and end dates will be the same. If the date is unkown or partially missed insert the year at the best of your knowledge."
* differential.element[11].min = 0
* differential.element[11].max = "1"
* differential.element[11].type.code = #dateTime


* differential.element[12].id = "Radiotherapy.type"
* differential.element[12].path = "Radiotherapy.type"
* differential.element[12].short = "Type of radiotherapy"
* differential.element[12].definition = "External Beam Radiation: The radiation is produced by a large machine, and the type of the machine needs to be recorded in the subsequent field.
Brachytherapy: a material that is radioactive (often a fine wire or a tiny ?seed?) is placed on or in the body to give a very localized high dose of radiation. Details will be asked in the next field
Metabolic or radionuclide treatment/therapy: a liquid substance is injected into the blood stream and carries radiation throughout the body with the aim of reaching tumour tissue.  Also in this case, details will be asked in the subsequent field.
1 => External beam
2 => Brachytherapy
3 => Metabolic/radionuclide therapy"
* differential.element[12].min = 1
* differential.element[12].max = "1"
* differential.element[12].type.code = #CodeableConcept


* differential.element[13].id = "Radiotherapy.deviceType"
* differential.element[13].path = "Radiotherapy.deviceType"
* differential.element[13].short = "type of machine (If external beam)"
* differential.element[13].definition = "A detailed description of the type of machine can be found in the user's manual.
If you have the name of a machine but cannot find it in this list, please select Other and add the name in free text. 
If you know the treatment was with external beam but not which machine or energy, select 'Unknown'.
1 =>Orthovoltage / kilovoltage usually 200 - 300kv X rays/photons
2 =>Linac (Linear Accelerator) megavoltage MV X Rays/photons
3 =>Linac (Linear Accelerator) electrons
4 => Cobalt - MV gamma rays / photons
5 => Proton Beam
6 => Other, if other specify the name
-9922 => Unknown "
* differential.element[13].min = 0
* differential.element[13].max = "1"
* differential.element[13].type.code = #CodeableConcept


* differential.element[14].id = "Radiotherapy.brachytherapyType"
* differential.element[14].path = "Radiotherapy.brachytherapyType"
* differential.element[14].short = "type of brachytherapy (if brachytherapy)"
* differential.element[14].definition = "? Surface brachytherapy - a radiation source (radioactive material) is positioned on a superficial tumour
? Interstitial brachytherapy ? a radiation source is implanted into a tumour
? Intracavitary or intraluminal brachytherapy - a radiation source is introduced in special applicators into a body cavity or lumen

1 => Surface brachytherapy
2 => Interstitial brachytherapy
3 => Intracavitary or intraluminal brachytherapy
-9922=> Unknown"
* differential.element[14].min = 0
* differential.element[14].max = "1"
* differential.element[14].type.code = #CodeableConcept


* differential.element[15].id = "Radiotherapy.isotopes"
* differential.element[15].path = "Radiotherapy.isotopes"
* differential.element[15].short = "Radioactive materials (if brachytherapy)"
* differential.element[15].definition = "Specify the radioactive material (isotopes) used: If not listed, select 'Other then specify'
1 => Iridium (Ir)
2 => Gold (Au)
3 => Iodine (I)
4 => Caesium (Cs)
5 => Other
-9922 => Unknown"
* differential.element[15].min = 0
* differential.element[15].max = "1"
* differential.element[15].type.code = #CodeableConcept


* differential.element[16].id = "Radiotherapy.radionuclides"
* differential.element[16].path = "Radiotherapy.radionuclides"
* differential.element[16].short = "radionuclides (required If metabolic/radionuclide)"
* differential.element[16].definition = "A detailed description of the radionuclides can be found in the user's manual.
If you have the name of a radionuclide but cannot find it in this list, please select Other and add the name in free text. 
If you know the treatment was with external beam but not which machine or energy, select 'Unknown'.
1 => Iodine-131
2 => MIBG
3 =>Yttrium 90
4 => Other
-9922 => Unknown"
* differential.element[16].min = 0
* differential.element[16].max = "1"
* differential.element[16].type.code = #CodeableConcept


* differential.element[17].id = "Radiotherapy.numberOfCourses"
* differential.element[17].path = "Radiotherapy.numberOfCourses"
* differential.element[17].short = "Number of courses  (If metabolic/radionuclide)"
* differential.element[17].definition = "For Metabolic/radionuclide therapy"
* differential.element[17].min = 0
* differential.element[17].max = "1"
* differential.element[17].type.code = #integer


* differential.element[18].id = "Radiotherapy.target"
* differential.element[18].path = "Radiotherapy.target"
* differential.element[18].short = "Target"
* differential.element[18].definition = "Site' refers to the radiation therapy treatment field, i.e. the part of the body that received the radiation dose in order to treat the tumour. 
Required if Type of radiotherapy = 1 or 2 (External Beam, Brachytherapy)�
If more than one body site was treated with radiotherapy, you can add anther site and describe; upto 5 sites are allowed by the system "
* differential.element[18].min = 0
* differential.element[18].max = "5"
* differential.element[18].type.code = #BackboneElement


* differential.element[19].id = "Radiotherapy.target.site"
* differential.element[19].path = "Radiotherapy.target.site"
* differential.element[19].short = "Body Site Code"
* differential.element[19].definition = "RT sites are coded with a 3 tier level (see list). The first is ?Tier 1?.  The first digit/s of the code, describes the large topographical body areas e.g. brain, chest, abdomen, limb. Since radiation fields often involve more than one topographical area we have added ?cervico-thoracic?, ?thoraco abdominal? and ?abdomino pelvic? areas to Tier 1. 
The second (Tier 2) includes subcategories of Tier 1 sites e.g. brain stem, heart, liver, upper limb. 
Where the information is available a third (Tier 3) of further subdivisions includes more detailed areas. 
When using the SurPass platform, as you start typing the name of the site, a drop down list with related terms will appear (special sites like Inverted Y are included). If the RT site listed in the medical record cannot reasonably be matched to one of the sites listed in the computer, choose ??Other' (.98 in tier 2) and then add in free text the name of this RT site. "
* differential.element[19].min = 1
* differential.element[19].max = "1"
* differential.element[19].type.code = #CodeableConcept
* differential.element[19].binding.valueSet = "http://hl7.eu/fhir/ig/pcsp/ValueSet/vs-radiotherapy-pcsp"
* differential.element[19].binding.strength = #required
* differential.element[20].id = "Radiotherapy.target.laterality"
* differential.element[20].path = "Radiotherapy.target.laterality"
* differential.element[20].short = "Laterality"
* differential.element[20].definition = "Report laterality of the radiation.
 R = right,
 L = left,
 B = bilateral"
* differential.element[20].min = 0
* differential.element[20].max = "1"
* differential.element[20].type.code = #CodeableConcept


* differential.element[21].id = "Radiotherapy.target.details"
* differential.element[21].path = "Radiotherapy.target.details"
* differential.element[21].short = "Details"
* differential.element[21].definition = "If needed it is possible to add details"
* differential.element[21].min = 0
* differential.element[21].max = "1"
* differential.element[21].type.code = #string


* differential.element[22].id = "Radiotherapy.target.from"
* differential.element[22].path = "Radiotherapy.target.from"
* differential.element[22].short = "Start point"
* differential.element[22].definition = "When the radiation involves more than one site, eventually covering different body areas (e.g. torax and abdomen), select the starting point using the vertebrae to identify the upper limit (e.g.: Thoraco-Abdominal (area): Paraspinal - Thoracic / dorsal vertebra 10)"
* differential.element[22].min = 0
* differential.element[22].max = "1"
* differential.element[22].type.code = #string


* differential.element[23].id = "Radiotherapy.target.to"
* differential.element[23].path = "Radiotherapy.target.to"
* differential.element[23].short = "End point"
* differential.element[23].definition = "When the radiation involves more than one site, eventually covering different body areas (e.g. torax and abdomen), select the ending point using the vertebrae to identify the lower limit (e.g.: Thoraco-Abdominal (area): Paraspinal - Lumbar vertebra 3)"
* differential.element[23].min = 0
* differential.element[23].max = "1"
* differential.element[23].type.code = #string


* differential.element[24].id = "Radiotherapy.target.position"
* differential.element[24].path = "Radiotherapy.target.position"
* differential.element[24].short = "Position"
* differential.element[24].definition = "Specify whether the radiation was anterior or posterior. 
1 => Anterior
2 => Posterior
-9922 = NK"
* differential.element[24].min = 0
* differential.element[24].max = "1"
* differential.element[24].type.code = #CodeableConcept


* differential.element[25].id = "Radiotherapy.target.totalDose"
* differential.element[25].path = "Radiotherapy.target.totalDose"
* differential.element[25].short = "Total dose"
* differential.element[25].definition = "Specify the total dose given to the primary radiation therapy site.
If the dose is not known, write NK."
* differential.element[25].min = 0
* differential.element[25].max = "1"
* differential.element[25].type.code = #BackboneElement


* differential.element[26].id = "Radiotherapy.target.totalDose.completionStatus"
* differential.element[26].path = "Radiotherapy.target.totalDose.completionStatus"
* differential.element[26].short = "The reported doses are incomplete (either under- or over-estimated)"
* differential.element[26].definition = "Check in case of incomplete doses"
* differential.element[26].min = 0
* differential.element[26].max = "1"
* differential.element[26].type.code = #CodeableConcept


* differential.element[27].id = "Radiotherapy.target.totalDose.statusReason"
* differential.element[27].path = "Radiotherapy.target.totalDose.statusReason"
* differential.element[27].short = "Specify reasons why"
* differential.element[27].definition = "Specify reasons of incomplete estimated doses"
* differential.element[27].min = 0
* differential.element[27].max = "1"
* differential.element[27].type.code = #CodeableConcept


* differential.element[28].id = "Radiotherapy.target.totalDose.notKnown"
* differential.element[28].path = "Radiotherapy.target.totalDose.notKnown"
* differential.element[28].short = "Not known dose"
* differential.element[28].definition = "Not known dose"
* differential.element[28].min = 0
* differential.element[28].max = "1"
* differential.element[28].type.code = #string


* differential.element[29].id = "Radiotherapy.target.totalDose.dose"
* differential.element[29].path = "Radiotherapy.target.totalDose.dose"
* differential.element[29].short = "Dose"
* differential.element[29].definition = "Specify the total dose given to the primary radiation therapy site."
* differential.element[29].min = 0
* differential.element[29].max = "1"
* differential.element[29].type.code = #decimal


* differential.element[30].id = "Radiotherapy.target.totalDose.unit"
* differential.element[30].path = "Radiotherapy.target.totalDose.unit"
* differential.element[30].short = "Measure unit"
* differential.element[30].definition = "External Beam Radiation Therapy (EBRT) and Brachytherapy doses are in Gy. If doses are reported in cGY, roughly two zeroes need to be deleted (e.g. 100 cGy = 1 Gy).
specify if dose is recorded in bequerels (MBq or GBq) or curies (Ci) or Unkwnon"
* differential.element[30].min = 0
* differential.element[30].max = "1"
* differential.element[30].type.code = #CodeableConcept


* differential.element[31].id = "Radiotherapy.target.totalDose.fractions"
* differential.element[31].path = "Radiotherapy.target.totalDose.fractions"
* differential.element[31].short = "Number of fractions (if  external beam)"
* differential.element[31].definition = "A FRACTION of radiation treatment is a single attendance for treatment; if 'not known' insert NK"
* differential.element[31].min = 0
* differential.element[31].max = "1"
* differential.element[31].type.code = #integer


* differential.element[32].id = "Radiotherapy.target.boost"
* differential.element[32].path = "Radiotherapy.target.boost"
* differential.element[32].short = "Boost"
* differential.element[32].definition = "A boost is an extra dose of radiotherapy directed to a smaller area inside the primary radiation field. (only if type is External Beam)"
* differential.element[32].min = 0
* differential.element[32].max = "5"
* differential.element[32].type.code = #BackboneElement


* differential.element[33].id = "Radiotherapy.target.boost.type"
* differential.element[33].path = "Radiotherapy.target.boost.type"
* differential.element[33].short = "Type of Boost"
* differential.element[33].definition = "Specify radiation type of the boost.
1 => External Beam
2 => Brachytherapy
-9922 => NK �"
* differential.element[33].min = 1
* differential.element[33].max = "1"
* differential.element[33].type.code = #CodeableConcept


* differential.element[34].id = "Radiotherapy.target.boost.given"
* differential.element[34].path = "Radiotherapy.target.boost.given"
* differential.element[34].short = "Boost given"
* differential.element[34].definition = "Flag indicating if a boost was given, not given or unknown"
* differential.element[34].min = 0
* differential.element[34].max = "1"
* differential.element[34].type.code = #CodeableConcept


* differential.element[35].id = "Radiotherapy.target.boost.site"
* differential.element[35].path = "Radiotherapy.target.boost.site"
* differential.element[35].short = "Boost site"
* differential.element[35].definition = "Site' refers to the radiation therapy treatment field. As you start typing the name of the site, a drop down list with related terms will appear (special sites like Inverted Y are included). If the RT site listed in the medical record cannot reasonably be matched to one of the sites listed in the computer, choose: ??Other' and then add in free text the name of this RT site. 
required if given"
* differential.element[35].min = 0
* differential.element[35].max = "1"
* differential.element[35].type.code = #CodeableConcept
* differential.element[35].binding.valueSet = "http://hl7.eu/fhir/ig/pcsp/ValueSet/vs-radiotherapy-pcsp"
* differential.element[35].binding.strength = #required
* differential.element[36].id = "Radiotherapy.target.boost.laterality"
* differential.element[36].path = "Radiotherapy.target.boost.laterality"
* differential.element[36].short = "Laterality"
* differential.element[36].definition = "Report laterality of the radiation.
 R = right,
 L = left,
 B = bilateral"
* differential.element[36].min = 0
* differential.element[36].max = "1"
* differential.element[36].type.code = #CodeableConcept


* differential.element[37].id = "Radiotherapy.target.boost.details"
* differential.element[37].path = "Radiotherapy.target.boost.details"
* differential.element[37].short = "Details"
* differential.element[37].definition = "If needed it is possible to add details"
* differential.element[37].min = 0
* differential.element[37].max = "1"
* differential.element[37].type.code = #string


* differential.element[38].id = "Radiotherapy.target.boost.from"
* differential.element[38].path = "Radiotherapy.target.boost.from"
* differential.element[38].short = "Start point"
* differential.element[38].definition = "When the radiation involves more than one site, eventually covering different body areas (e.g. torax and abdomen), select the starting point using the vertebrae to identify the upper limit (e.g.: Thoraco-Abdominal (area): Paraspinal - Thoracic / dorsal vertebra 10)"
* differential.element[38].min = 0
* differential.element[38].max = "1"
* differential.element[38].type.code = #string


* differential.element[39].id = "Radiotherapy.target.boost.to"
* differential.element[39].path = "Radiotherapy.target.boost.to"
* differential.element[39].short = "End point"
* differential.element[39].definition = "When the radiation involves more than one site, eventually covering different body areas (e.g. torax and abdomen), select the ending point using the vertebrae to identify the lower limit (e.g.: Thoraco-Abdominal (area): Paraspinal - Lumbar vertebra 3)"
* differential.element[39].min = 0
* differential.element[39].max = "1"
* differential.element[39].type.code = #string


* differential.element[40].id = "Radiotherapy.target.boost.position"
* differential.element[40].path = "Radiotherapy.target.boost.position"
* differential.element[40].short = "Position"
* differential.element[40].definition = "Specify whether the radiation was anterior or posterior. 
1 => Anterior
2 => Posterior
-9922 = NK"
* differential.element[40].min = 0
* differential.element[40].max = "1"
* differential.element[40].type.code = #CodeableConcept


* differential.element[41].id = "Radiotherapy.target.boost.totalDose"
* differential.element[41].path = "Radiotherapy.target.boost.totalDose"
* differential.element[41].short = "Total dose"
* differential.element[41].definition = "Specify the total dose given to the boost site."
* differential.element[41].min = 1
* differential.element[41].max = "1"
* differential.element[41].type.code = #BackboneElement


* differential.element[42].id = "Radiotherapy.target.boost.totalDose.completionStatus"
* differential.element[42].path = "Radiotherapy.target.boost.totalDose.completionStatus"
* differential.element[42].short = "The reported doses are incomplete (either under- or over-estimated)"
* differential.element[42].definition = "Check in case of incomplete doses"
* differential.element[42].min = 0
* differential.element[42].max = "1"
* differential.element[42].type.code = #CodeableConcept


* differential.element[43].id = "Radiotherapy.target.boost.totalDose.statusReason"
* differential.element[43].path = "Radiotherapy.target.boost.totalDose.statusReason"
* differential.element[43].short = "Specify reasons why"
* differential.element[43].definition = "Specify reasons of incomplete estimated doses"
* differential.element[43].min = 0
* differential.element[43].max = "1"
* differential.element[43].type.code = #CodeableConcept


* differential.element[44].id = "Radiotherapy.target.boost.totalDose.notKnown"
* differential.element[44].path = "Radiotherapy.target.boost.totalDose.notKnown"
* differential.element[44].short = "Not known dose"
* differential.element[44].definition = "Not known dose"
* differential.element[44].min = 0
* differential.element[44].max = "1"
* differential.element[44].type.code = #CodeableConcept


* differential.element[45].id = "Radiotherapy.target.boost.totalDose.dose"
* differential.element[45].path = "Radiotherapy.target.boost.totalDose.dose"
* differential.element[45].short = "Dose"
* differential.element[45].definition = "Specify the total dose given to the boost site."
* differential.element[45].min = 0
* differential.element[45].max = "1"
* differential.element[45].type.code = #decimal


* differential.element[46].id = "Radiotherapy.target.boost.totalDose.unit"
* differential.element[46].path = "Radiotherapy.target.boost.totalDose.unit"
* differential.element[46].short = "Unit"
* differential.element[46].definition = "Specify the unit of the boost in case of external beam radiotherapy as  Gy. 
specify if dose is recorded in bequerels (MBq or GBq) or curies (Ci) or Unkwnon"
* differential.element[46].min = 0
* differential.element[46].max = "1"
* differential.element[46].type.code = #CodeableConcept


* differential.element[47].id = "Radiotherapy.target.boost.totalDose.fractions"
* differential.element[47].path = "Radiotherapy.target.boost.totalDose.fractions"
* differential.element[47].short = "Number of fractions (if  external beam)"
* differential.element[47].definition = "A fraction of radiation treatment is a single attendance for treatment. Please specify the number of fractions given as included in the boost. If not known, insert NK."
* differential.element[47].min = 0
* differential.element[47].max = "1"
* differential.element[47].type.code = #integer


* differential.element[48].id = "Radiotherapy.target.shielding"
* differential.element[48].path = "Radiotherapy.target.shielding"
* differential.element[48].short = "Shielding"
* differential.element[48].definition = "Shielding, in some records this is called ?blocking? or ?blocks?. "
* differential.element[48].min = 0
* differential.element[48].max = "1"
* differential.element[48].type.code = #BackboneElement


* differential.element[49].id = "Radiotherapy.target.shielding.status"
* differential.element[49].path = "Radiotherapy.target.shielding.status"
* differential.element[49].short = "Shielding status"
* differential.element[49].definition = "Specify if shielding was used or not. 
Yes;  No;  NK �"
* differential.element[49].min = 0
* differential.element[49].max = "1"
* differential.element[49].type.code = #CodeableConcept


* differential.element[50].id = "Radiotherapy.target.shielding.position"
* differential.element[50].path = "Radiotherapy.target.shielding.position"
* differential.element[50].short = "Position of shielding"
* differential.element[50].definition = "Describe the positioning of shielding"
* differential.element[50].min = 0
* differential.element[50].max = "1"
* differential.element[50].type.code = #string


* differential.element[51].id = "Radiotherapy.target.site.notes"
* differential.element[51].path = "Radiotherapy.target.site.notes"
* differential.element[51].short = "Additional description"
* differential.element[51].definition = "Record any available details on the shielded tissue/organ (or size of shielded area)."
* differential.element[51].min = 0
* differential.element[51].max = "1"
* differential.element[51].type.code = #string


* differential.element[52].id = "Radiotherapy.organAtRisk"
* differential.element[52].path = "Radiotherapy.organAtRisk"
* differential.element[52].short = "Organ at Risk"
* differential.element[52].definition = "Organs at Risk"
* differential.element[52].min = 0
* differential.element[52].max = "1"
* differential.element[52].type.code = #BackboneElement


* differential.element[53].id = "Radiotherapy.organAtRisk.dosimetry"
* differential.element[53].path = "Radiotherapy.organAtRisk.dosimetry"
* differential.element[53].short = "Dosimetry on Organ at Risk"
* differential.element[53].definition = "Specify if there is available information on Dosimetry of Organs at Risk [Yes/No]"
* differential.element[53].min = 0
* differential.element[53].max = "1"
* differential.element[53].type.code = #CodeableConcept


* differential.element[54].id = "Radiotherapy.organAtRisk.dosimetryDocument"
* differential.element[54].path = "Radiotherapy.organAtRisk.dosimetryDocument"
* differential.element[54].short = "Electronic / scanned version(s) of relevant document(s)"
* differential.element[54].definition = "If Dosimetry on Organ at Risk is available, upload here the electronic / scanned version(s) of any relevant document(s)"
* differential.element[54].min = 0
* differential.element[54].max = "2"
* differential.element[54].type.code = #Binary


* differential.element[55].id = "Radiotherapy.files"
* differential.element[55].path = "Radiotherapy.files"
* differential.element[55].short = "Upload radiotherapy file (1)"
* differential.element[55].definition = "Radiotherapy file(s) can be uploaded here"
* differential.element[55].min = 0
* differential.element[55].max = "2"
* differential.element[55].type.code = #Binary


* differential.element[56].id = "Radiotherapy.notes"
* differential.element[56].path = "Radiotherapy.notes"
* differential.element[56].short = "Notes"
* differential.element[56].definition = "Notes"
* differential.element[56].min = 0
* differential.element[56].max = "1"
* differential.element[56].type.code = #string


// 
//  
// === MAPPING === 
// 
* differential.element[0].mapping[0].identity = "fhir"
* differential.element[0].mapping[0].map = "Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-radiotheraphy-eu-pcsp')"

* differential.element[1].mapping[0].identity = "fhir"
* differential.element[1].mapping[0].map = ".reasonReference"
* differential.element[1].mapping[0].comment = "note"
* differential.element[2].mapping[0].identity = "fhir"
* differential.element[2].mapping[0].map = ".reasonReference"

* differential.element[3].mapping[0].identity = "fhir"
* differential.element[3].mapping[0].map = ".identifier"

* differential.element[4].mapping[0].identity = "fhir"
* differential.element[4].mapping[0].map = ".location.resolve().conformsTo(http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Location-eu-pcsp)"

* differential.element[5].mapping[0].identity = "fhir"
* differential.element[5].mapping[0].map = "Location.description"

* differential.element[6].mapping[0].identity = "fhir"
* differential.element[6].mapping[0].map = "Location.name"

* differential.element[7].mapping[0].identity = "fhir"
* differential.element[7].mapping[0].map = "Location.address.city"




* differential.element[9].mapping[0].identity = "fhir"
* differential.element[9].mapping[0].map = "Location.address.country"

* differential.element[10].mapping[0].identity = "fhir"
* differential.element[10].mapping[0].map = ".performedPeriod.start"

* differential.element[11].mapping[0].identity = "fhir"
* differential.element[11].mapping[0].map = ".performedPeriod.end"

* differential.element[12].mapping[0].identity = "fhir"
* differential.element[12].mapping[0].map = ".code"

* differential.element[13].mapping[0].identity = "fhir"
* differential.element[13].mapping[0].map = ".usedCode"

* differential.element[14].mapping[0].identity = "fhir"
* differential.element[14].mapping[0].map = ".extension('http://hl7.org/fhir/StructureDefinition/procedure-method').valueCodeableConcept"

* differential.element[15].mapping[0].identity = "fhir"
* differential.element[15].mapping[0].map = ".extension('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/radiotherapy-energy-or-isotope').valueCodeableConcept"

* differential.element[16].mapping[0].identity = "fhir"
* differential.element[16].mapping[0].map = ".extension('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/radiotherapy-energy-or-isotope').valueCodeableConcept"

* differential.element[17].mapping[0].identity = "fhir"
* differential.element[17].mapping[0].map = ".extension(http://hl7.eu/fhir/ig/pcsp/StructureDefinition/procedure-performedTiming).valueTiming.repeat.count"

* differential.element[18].mapping[0].identity = "fhir"
* differential.element[18].mapping[0].map = ".bodySite"

* differential.element[18].mapping[1].identity = "fhir"
* differential.element[18].mapping[1].map = ".extension(http://hl7.eu/fhir/ig/pcsp/StructureDefinition/ResourceRelatedInfo-eu-pcsp).resolve().conformsTo(http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Observation-cumulativeDoseRad-eu-pcsp)"

* differential.element[19].mapping[0].identity = "fhir"
* differential.element[19].mapping[0].map = ".bodySite"

* differential.element[20].mapping[0].identity = "fhir"
* differential.element[20].mapping[0].map = ".extension(http://hl7.eu/fhir/ig/pcsp/StructureDefinition/mcode-laterality-qualifier).valueCodeableConcept"

* differential.element[21].mapping[0].identity = "fhir"
* differential.element[21].mapping[0].map = ".text"

* differential.element[22].mapping[0].identity = "fhir"
* differential.element[22].mapping[0].map = ".bodySite.where(extension('mcode-body-location-qualifier').valueCodeableConcept = http://snomed.info/sct#272488003 'From-structure')"

* differential.element[23].mapping[0].identity = "fhir"
* differential.element[23].mapping[0].map = ".bodySite.where(extension('mcode-body-location-qualifier').valueCodeableConcept = http://hl7.eu/fhir/ig/pcsp/CodeSystem/cs-generic-eu-pcsp#to-structure 'To-structure')"

* differential.element[24].mapping[0].identity = "fhir"
* differential.element[24].mapping[0].map = ".extension('http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-body-location-qualifier').valueCodeableConcept"

* differential.element[25].mapping[0].identity = "fhir"
* differential.element[25].mapping[0].map = ".extension(http://hl7.eu/fhir/ig/pcsp/StructureDefinition/ResourceRelatedInfo-eu-pcsp).resolve().conformsTo(http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Observation-cumulativeDoseRad-eu-pcsp)"

* differential.element[26].mapping[0].identity = "fhir"
* differential.element[26].mapping[0].map = ".status = #preliminary"

* differential.element[27].mapping[0].identity = "fhir"
* differential.element[27].mapping[0].map = ".extension('http://hl7.org/fhir/StructureDefinition/event-statusReason')"

* differential.element[28].mapping[0].identity = "fhir"
* differential.element[28].mapping[0].map = ".valueCodeableConcept = http://terminology.hl7.org/CodeSystem/data-absent-reason#unknown"

* differential.element[29].mapping[0].identity = "fhir"
* differential.element[29].mapping[0].map = ".valueQuantity.value"

* differential.element[30].mapping[0].identity = "fhir"
* differential.element[30].mapping[0].map = ".valueQuantity.code"

* differential.element[31].mapping[0].identity = "fhir"
* differential.element[31].mapping[0].map = ".extension(http://hl7.eu/fhir/ig/pcsp/StructureDefinition/procedure-performedTiming).valueTiming.repeat.count"

* differential.element[32].mapping[0].identity = "fhir"
* differential.element[32].mapping[0].map = "Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-radiotheraphyBoost-eu-pcsp')"

* differential.element[33].mapping[0].identity = "fhir"
* differential.element[33].mapping[0].map = ".partOf.resolve().code"

* differential.element[34].mapping[0].identity = "fhir"
* differential.element[34].mapping[0].map = ".status"

* differential.element[35].mapping[0].identity = "fhir"
* differential.element[35].mapping[0].map = ".bodySite"

* differential.element[35].mapping[1].identity = "fhir"
* differential.element[35].mapping[1].map = ".extension(http://hl7.eu/fhir/ig/pcsp/StructureDefinition/ResourceRelatedInfo-eu-pcsp).resolve().conformsTo(http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Observation-cumulativeDoseRad-eu-pcsp).bodySite"

* differential.element[36].mapping[0].identity = "fhir"
* differential.element[36].mapping[0].map = ".extension(http://hl7.eu/fhir/ig/pcsp/StructureDefinition/mcode-laterality-qualifier).valueCodeableConcept"

* differential.element[37].mapping[0].identity = "fhir"
* differential.element[37].mapping[0].map = ".note"

* differential.element[38].mapping[0].identity = "fhir"
* differential.element[38].mapping[0].map = ".bodySite.where(extension(http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-body-location-qualifier).valueCodeableConcept = http://snomed.info/sct#272488003 'From-structure')"

* differential.element[39].mapping[0].identity = "fhir"
* differential.element[39].mapping[0].map = ".bodySite.where(extension(http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-body-location-qualifier).valueCodeableConcept = http://hl7.eu/fhir/ig/pcsp/CodeSystem/cs-generic-eu-pcsp#to-structure 'To-structure')"

* differential.element[40].mapping[0].identity = "fhir"
* differential.element[40].mapping[0].map = ".extension(http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-body-location-qualifier).valueCodeableConcept"

* differential.element[41].mapping[0].identity = "fhir"
* differential.element[41].mapping[0].map = ".extension(http://hl7.eu/fhir/ig/pcsp/StructureDefinition/ResourceRelatedInfo-eu-pcsp).resolve().conformsTo(http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Observation-cumulativeDoseRad-eu-pcsp)"

* differential.element[42].mapping[0].identity = "fhir"
* differential.element[42].mapping[0].map = ".status = #preliminary"

* differential.element[43].mapping[0].identity = "fhir"
* differential.element[43].mapping[0].map = ".extension('http://hl7.org/fhir/StructureDefinition/event-statusReason')"

* differential.element[44].mapping[0].identity = "fhir"
* differential.element[44].mapping[0].map = ".valueCodeableConcept = http://terminology.hl7.org/CodeSystem/data-absent-reason#unknown"

* differential.element[45].mapping[0].identity = "fhir"
* differential.element[45].mapping[0].map = ".valueQuantity.value"

* differential.element[46].mapping[0].identity = "fhir"
* differential.element[46].mapping[0].map = ".valueQuantity.code"

* differential.element[47].mapping[0].identity = "fhir"
* differential.element[47].mapping[0].map = ".extension(http://hl7.eu/fhir/ig/pcsp/StructureDefinition/procedure-performedTiming).valueTiming.repeat.count"

* differential.element[48].mapping[0].identity = "fhir"
* differential.element[48].mapping[0].map = "Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-radiotheraphyShield-eu-pcsp')"

* differential.element[49].mapping[0].identity = "fhir"
* differential.element[49].mapping[0].map = ".status"

* differential.element[50].mapping[0].identity = "fhir"
* differential.element[50].mapping[0].map = ".bodySite"

* differential.element[51].mapping[0].identity = "fhir"
* differential.element[51].mapping[0].map = ".note"

* differential.element[52].mapping[0].identity = "fhir"
* differential.element[52].mapping[0].map = ".extension(http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo).ofType(DocumentReference)"

* differential.element[53].mapping[0].identity = "fhir"
* differential.element[53].mapping[0].map = ".exists()"
* differential.element[54].mapping[0].identity = "fhir"
* differential.element[54].mapping[0].map = "."
* differential.element[55].mapping[0].identity = "fhir"
* differential.element[55].mapping[0].map = ".extension(http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo).ofType(DocumentReference)"
* differential.element[56].mapping[0].identity = "fhir"
* differential.element[56].mapping[0].map = ".note"








// 
