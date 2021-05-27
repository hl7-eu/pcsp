Instance: Radiotherapy
InstanceOf: StructureDefinition
Description: "Radiotherapy"
Title: "Radiotherapy"
Usage: #definition
* publisher = "PanCareSurPass project"
* status = #draft
* url = "http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Radiotherapy"
* name = "Radiotherapy"
* title = "Radiotherapy"
* status = #draft
* experimental = true
* description = "Radiotherapy"
* version = "0.0.1"
* mapping[0].identity = "fhir"
* mapping[0].uri = "hl7.org/fhir/r4"
* mapping[0].name = "FHIR"
* kind = #logical
* abstract = true
* type = "Radiotherapy"
* baseDefinition = "http://hl7.org/fhir/StructureDefinition/Element"
* derivation = #specialization
* differential.element[0].id = "Radiotherapy"
* differential.element[0].path = "Radiotherapy"
* differential.element[0].short = "Radiotherapy"
* differential.element[0].definition = "Radiotherapy"
* differential.element[0].min = 1
* differential.element[0].max = "1"
* differential.element[1].id = "Radiotherapy.type"
* differential.element[1].path = "Radiotherapy.type"
* differential.element[1].short = "Type of radiotherapy"
* differential.element[1].definition = "External Beam Radiation: The radiation is produced by a large machine, and the type of the machine needs to be recorded in the subsequent field.
Brachytherapy: a material that is radioactive (often a fine wire or a tiny ?seed?) is placed on or in the body to give a very localized high dose of radiation. Details will be asked in the next field
Metabolic or radionuclide treatment/therapy: a liquid substance is injected into the blood stream and carries radiation throughout the body with the aim of reaching tumour tissue.  Also in this case, details will be asked in the subsequent field.
1 => External beam
2 => Brachytherapy
3 => Metabolic/radionuclide therapy"
* differential.element[1].min = 1
* differential.element[1].max = "1"
* differential.element[1].type.code = #CodeableConcept


* differential.element[2].id = "Radiotherapy.startDate"
* differential.element[2].path = "Radiotherapy.startDate"
* differential.element[2].short = "Start date"
* differential.element[2].definition = "Enter the date on which the first treatment (fraction) of radiotherapy was given, in a DD/MM/YYYY format. If the date is unkown or partially missed insert the year at the best of your knowledge."
* differential.element[2].min = 1
* differential.element[2].max = "1"
* differential.element[2].type.code = #dateTime


* differential.element[3].id = "Radiotherapy.target"
* differential.element[3].path = "Radiotherapy.target"
* differential.element[3].short = "Target Body Site"
* differential.element[3].definition = "Site' refers to the radiation therapy treatment field, i.e. the part of the body that received the radiation dose in order to treat the tumour. 
Required if Type of radiotherapy = 1 or 2 (External Beam, Brachytherapy)ÿ
If more than one body site was treated with radiotherapy, you can add anther site and describe; upto 5 sites are allowed by the system "
* differential.element[3].min = 0
* differential.element[3].max = "5"
* differential.element[3].type.code = #BackboneElement


* differential.element[4].id = "Radiotherapy.target.site"
* differential.element[4].path = "Radiotherapy.target.site"
* differential.element[4].short = "Body Site"
* differential.element[4].definition = "RT sites are coded with a 3 tier level (see list). The first is ?Tier 1?.  The first digit/s of the code, describes the large topographical body areas e.g. brain, chest, abdomen, limb. Since radiation fields often involve more than one topographical area we have added ?cervico-thoracic?, ?thoraco abdominal? and ?abdomino pelvic? areas to Tier 1. 
The second (Tier 2) includes subcategories of Tier 1 sites e.g. brain stem, heart, liver, upper limb. 
Where the information is available a third (Tier 3) of further subdivisions includes more detailed areas. 
When using the SurPass platform, as you start typing the name of the site, a drop down list with related terms will appear (special sites like Inverted Y are included). If the RT site listed in the medical record cannot reasonably be matched to one of the sites listed in the computer, choose ??Other' (.98 in tier 2) and then add in free text the name of this RT site. "
* differential.element[4].min = 1
* differential.element[4].max = "1"
* differential.element[4].type.code = #CodeableConcept
* differential.element[4].binding.valueSet = "http://hl7.eu/fhir/ig/pcsp/ValueSet/vs-radiotherapy-pcsp"
* differential.element[4].binding.strength = #required
* differential.element[5].id = "Radiotherapy.target.comulativeDose"
* differential.element[5].path = "Radiotherapy.target.comulativeDose"
* differential.element[5].short = "Comulative dose"
* differential.element[5].definition = "Specify the cumulative / total dose given to the primary radiation therapy site.
If the dose is not known, write NK."
* differential.element[5].min = 0
* differential.element[5].max = "1"
* differential.element[5].type.code = #BackboneElement


* differential.element[6].id = "Radiotherapy.target.comulativeDose.notKnown"
* differential.element[6].path = "Radiotherapy.target.comulativeDose.notKnown"
* differential.element[6].short = "Not nown dose"
* differential.element[6].definition = "Not nown dose"
* differential.element[6].min = 0
* differential.element[6].max = "1"
* differential.element[6].type.code = #CodeableConcept


* differential.element[7].id = "Radiotherapy.target.comulativeDose.dose"
* differential.element[7].path = "Radiotherapy.target.comulativeDose.dose"
* differential.element[7].short = "Dose"
* differential.element[7].definition = "Specify the cumulative / total dose given to the primary radiation therapy site."
* differential.element[7].min = 0
* differential.element[7].max = "1"
* differential.element[7].type.code = #decimal


* differential.element[8].id = "Radiotherapy.target.comulativeDose.unit"
* differential.element[8].path = "Radiotherapy.target.comulativeDose.unit"
* differential.element[8].short = "Measure unit"
* differential.element[8].definition = "External Beam Radiation Therapy (EBRT) and Brachytherapy doses are in Gy. If doses are reported in cGY, roughly two zeroes need to be deleted (e.g. 100 cGy = 1 Gy)."
* differential.element[8].min = 0
* differential.element[8].max = "1"
* differential.element[8].type.code = #CodeableConcept


* differential.element[9].id = "Radiotherapy.target.boost"
* differential.element[9].path = "Radiotherapy.target.boost"
* differential.element[9].short = "Boost"
* differential.element[9].definition = "A boost is an extra dose of radiotherapy directed to a smaller area inside the primary radiation field.
"
* differential.element[9].min = 1
* differential.element[9].max = "1"
* differential.element[9].type.code = #BackboneElement


* differential.element[10].id = "Radiotherapy.target.boost.given"
* differential.element[10].path = "Radiotherapy.target.boost.given"
* differential.element[10].short = "Boost given"
* differential.element[10].definition = "Flag indicating if a boost was given, not given or unknown
"
* differential.element[10].min = 0
* differential.element[10].max = "1"
* differential.element[10].type.code = #CodeableConcept


* differential.element[11].id = "Radiotherapy.target.boost.site"
* differential.element[11].path = "Radiotherapy.target.boost.site"
* differential.element[11].short = "Boost site"
* differential.element[11].definition = "Site' refers to the radiation therapy treatment field. As you start typing the name of the site, a drop down list with related terms will appear (special sites like Inverted Y are included). If the RT site listed in the medical record cannot reasonably be matched to one of the sites listed in the computer, choose: ??Other' and then add in free text the name of this RT site. 
required if given"
* differential.element[11].min = 0
* differential.element[11].max = "1"
* differential.element[11].type.code = #CodeableConcept
* differential.element[11].binding.valueSet = "http://hl7.eu/fhir/ig/pcsp/ValueSet/vs-radiotherapy-pcsp"
* differential.element[11].binding.strength = #required
* differential.element[12].id = "Radiotherapy.target.boost.comulativeDose"
* differential.element[12].path = "Radiotherapy.target.boost.comulativeDose"
* differential.element[12].short = "Comulative dose"
* differential.element[12].definition = "Specify the cumulative / total dose given to the boost site."
* differential.element[12].min = 1
* differential.element[12].max = "1"
* differential.element[12].type.code = #BackboneElement


* differential.element[13].id = "Radiotherapy.target.boost.comulativeDose.notKnown"
* differential.element[13].path = "Radiotherapy.target.boost.comulativeDose.notKnown"
* differential.element[13].short = "Not nown dose"
* differential.element[13].definition = "Not nown dose"
* differential.element[13].min = 0
* differential.element[13].max = "1"
* differential.element[13].type.code = #CodeableConcept


* differential.element[14].id = "Radiotherapy.target.boost.comulativeDose.dose"
* differential.element[14].path = "Radiotherapy.target.boost.comulativeDose.dose"
* differential.element[14].short = "Dose"
* differential.element[14].definition = "Specify the cumulative / total dose given to the boost site."
* differential.element[14].min = 0
* differential.element[14].max = "1"
* differential.element[14].type.code = #decimal


* differential.element[15].id = "Radiotherapy.target.boost.comulativeDose.unit"
* differential.element[15].path = "Radiotherapy.target.boost.comulativeDose.unit"
* differential.element[15].short = "Unit (of external beam boost)"
* differential.element[15].definition = "Specify the unit of the boost in case of external beam radiotherapy.
1 = Gy"
* differential.element[15].min = 0
* differential.element[15].max = "1"
* differential.element[15].type.code = #CodeableConcept


* differential.element[16].id = "Radiotherapy.radionuclides"
* differential.element[16].path = "Radiotherapy.radionuclides"
* differential.element[16].short = "Radionuclides"
* differential.element[16].definition = "A detailed description of the radionuclides can be found in the user's manual.
If you have the name of a radionuclide but cannot find it in this list, please select Other and add the name in free text. 
If you know the treatment was with external beam but not which machine or energy, select 'Unknown'.

Required if Metabolic/radionuclide therapy

1 => Iodine-131
2 => MIBG
3 =>Yttrium 90
4 => Other
-9922 => Unknown"
* differential.element[16].min = 1
* differential.element[16].max = "1"
* differential.element[16].type.code = #CodeableConcept


