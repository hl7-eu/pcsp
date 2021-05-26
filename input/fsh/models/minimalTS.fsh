Instance: MinimalTreatmentSummary
InstanceOf: StructureDefinition
Description: "Minimal Treatment Summary data required by the PancareSurPass platform to generate the draft Care Plan"
Title: "Minimal Treatment Summary"
Usage: #definition
* publisher = "PanCareSurPass project"
* status = #draft
* url = "http://hl7.eu/fhir/ig/pcsp/StructureDefinition/MinimalTreatmentSummary"
* name = "MinimalTreatmentSummary"
* title = "Minimal Treatment Summary"
* status = #draft
* experimental = true
* description = "Minimal Treatment Summary data required by the PancareSurPass platform to generate the draft Care Plan"
* version = "0.0.1"
* mapping[0].identity = "fhir"
* mapping[0].uri = "hl7.org/fhir/r4"
* mapping[0].name = "FHIR"
* kind = #logical
* abstract = true
* type = "MinimalTreatmentSummary"
* baseDefinition = "http://hl7.org/fhir/StructureDefinition/Element"
* derivation = #specialization
* differential.element[0].id = "MinimalTreatmentSummary"
* differential.element[0].path = "MinimalTreatmentSummary"
* differential.element[0].short = "Minimal Treatment Summary"
* differential.element[0].definition = "Minimal Treatment Summary data required by the PancareSurPass platform to generate the draft Care Plan"
* differential.element[0].min = 1
* differential.element[0].max = "1"
* differential.element[1].id = "MinimalTreatmentSummary.subject"
* differential.element[1].path = "MinimalTreatmentSummary.subject"
* differential.element[1].short = "Subject"
* differential.element[1].definition = "Subject"
* differential.element[1].min = 1
* differential.element[1].max = "1"
* differential.element[1].type.code = #BackboneElement


* differential.element[2].id = "MinimalTreatmentSummary.subject.gender"
* differential.element[2].path = "MinimalTreatmentSummary.subject.gender"
* differential.element[2].short = "Gender/Sex"
* differential.element[2].definition = "Gender/Sex"
* differential.element[2].min = 1
* differential.element[2].max = "1"
* differential.element[2].type.code = #CodeableConcept


* differential.element[3].id = "MinimalTreatmentSummary.subject.dateOfBirth"
* differential.element[3].path = "MinimalTreatmentSummary.subject.dateOfBirth"
* differential.element[3].short = "Date of birth"
* differential.element[3].definition = "Date of birth"
* differential.element[3].min = 1
* differential.element[3].max = "1"
* differential.element[3].type.code = #dateTime


* differential.element[4].id = "MinimalTreatmentSummary.diagnosis"
* differential.element[4].path = "MinimalTreatmentSummary.diagnosis"
* differential.element[4].short = "Diagnosis"
* differential.element[4].definition = "Diagnosis"
* differential.element[4].min = 1
* differential.element[4].max = "*"
* differential.element[4].type.code = #BackboneElement


* differential.element[5].id = "MinimalTreatmentSummary.diagnosis.site"
* differential.element[5].path = "MinimalTreatmentSummary.diagnosis.site"
* differential.element[5].short = "ICD-O-3 code (topography)"
* differential.element[5].definition = "Report the site of the tumor using the ICD-O-3 Topography (an help tool is built into the system).  If also ICD-O-3 Morphology  data have been reported, the system will automatically define the tumor also according to ICCC-3 classic pediatric classification  (see: Cancer category)"
* differential.element[5].min = 1
* differential.element[5].max = "1"
* differential.element[5].type.code = #CodeableConcept


* differential.element[6].id = "MinimalTreatmentSummary.diagnosis.predispositionOrCondition"
* differential.element[6].path = "MinimalTreatmentSummary.diagnosis.predispositionOrCondition"
* differential.element[6].short = "Hereditary Cancer Predisposition Syndromeor medical condition cancer associated"
* differential.element[6].definition = "Report here if the survivor has some Hereditary Cancer Predisposition Syndrome or a medical conditions, cancer associated."
* differential.element[6].min = 1
* differential.element[6].max = "1"
* differential.element[6].type.code = #CodeableConcept


* differential.element[7].id = "MinimalTreatmentSummary.frontLineTreatment"
* differential.element[7].path = "MinimalTreatmentSummary.frontLineTreatment"
* differential.element[7].short = "Front line treatment"
* differential.element[7].definition = "Front line treatment"
* differential.element[7].min = 1
* differential.element[7].max = "1"
* differential.element[7].type.code = #BackboneElement


* differential.element[8].id = "MinimalTreatmentSummary.frontLineTreatment.stemCellTransplantation"
* differential.element[8].path = "MinimalTreatmentSummary.frontLineTreatment.stemCellTransplantation"
* differential.element[8].short = "Stem Cell transplantation"
* differential.element[8].definition = "Specify if the survivor received any hematopoietic stem cell transplant. Details will be given in the appropriate section."
* differential.element[8].min = 1
* differential.element[8].max = "1"
* differential.element[8].type.code = #CodeableConcept


* differential.element[9].id = "MinimalTreatmentSummary.chemotherapy"
* differential.element[9].path = "MinimalTreatmentSummary.chemotherapy"
* differential.element[9].short = "Chemotherapy"
* differential.element[9].definition = "Chemotherapy"
* differential.element[9].min = 1
* differential.element[9].max = "1"
* differential.element[9].type.code = #BackboneElement


* differential.element[10].id = "MinimalTreatmentSummary.chemotherapy.productAdministration"
* differential.element[10].path = "MinimalTreatmentSummary.chemotherapy.productAdministration"
* differential.element[10].short = "Product(s) administartion data"
* differential.element[10].definition = "Information about the product(s) administered"
* differential.element[10].min = 1
* differential.element[10].max = "20"
* differential.element[10].type.code = #BackboneElement


* differential.element[11].id = "MinimalTreatmentSummary.chemotherapy.productAdministration.agent"
* differential.element[11].path = "MinimalTreatmentSummary.chemotherapy.productAdministration.agent"
* differential.element[11].short = "Antineoplastic and immunostimulating agents"
* differential.element[11].definition = "In this section, any of the 'antineoplastic and immunostimulating agents' received by the survivor should be reported,  Drugs names are reported based on the ATC code listed under L01 to L04 in Appendix.  Synonyms are included. When you start typing the name of the drug, the possible options will automatically suggested by the system. 
Up to 20 drugs are allowed into the system.  The variable acronym changes based on the ordinal cmulative number of drugs received (e.g. FN_1, FN_2, FN_3, ?)"
* differential.element[11].min = 1
* differential.element[11].max = "1"
* differential.element[11].type.code = #CodeableConcept
* differential.element[11].binding.valueSet = "http://hl7.eu/fhir/ig/pcsp/ValueSet/drugs-atc-pcsp"
* differential.element[11].binding.strength = #extensible
* differential.element[12].id = "MinimalTreatmentSummary.chemotherapy.productAdministration.cumulativeDose"
* differential.element[12].path = "MinimalTreatmentSummary.chemotherapy.productAdministration.cumulativeDose"
* differential.element[12].short = "Cumulative Dose"
* differential.element[12].definition = "Report the total cumulative dose received of each drug. "
* differential.element[12].min = 1
* differential.element[12].max = "1"
* differential.element[12].type.code = #BackboneElement


* differential.element[13].id = "MinimalTreatmentSummary.chemotherapy.productAdministration.cumulativeDose.notAvailable"
* differential.element[13].path = "MinimalTreatmentSummary.chemotherapy.productAdministration.cumulativeDose.notAvailable"
* differential.element[13].short = "Not calculated or not known dose"
* differential.element[13].definition = "Flag indicating if the dose was not calculated or it was not known"
* differential.element[13].min = 0
* differential.element[13].max = "1"
* differential.element[13].type.code = #CodeableConcept


* differential.element[14].id = "MinimalTreatmentSummary.chemotherapy.productAdministration.cumulativeDose.value"
* differential.element[14].path = "MinimalTreatmentSummary.chemotherapy.productAdministration.cumulativeDose.value"
* differential.element[14].short = "Total cumulative dose"
* differential.element[14].definition = "Report the total cumulative dose received of each drug."
* differential.element[14].min = 0
* differential.element[14].max = "1"
* differential.element[14].type.code = #decimal


* differential.element[15].id = "MinimalTreatmentSummary.chemotherapy.productAdministration.cumulativeDose.unit"
* differential.element[15].path = "MinimalTreatmentSummary.chemotherapy.productAdministration.cumulativeDose.unit"
* differential.element[15].short = "Measure unit"
* differential.element[15].definition = "If the dose was calculated, please report the measure unit of the calculation
1 => mg/m2
2 => gr/m2
3 => UI/m2
4 => NK
5 => NC (not calculated)"
* differential.element[15].min = 0
* differential.element[15].max = "1"
* differential.element[15].type.code = #CodeableConcept


* differential.element[16].id = "MinimalTreatmentSummary.chemotherapy.corticosteroids"
* differential.element[16].path = "MinimalTreatmentSummary.chemotherapy.corticosteroids"
* differential.element[16].short = "Prolonged corticosteroids as anti-cancer treatment at least 4 weeks continuously"
* differential.element[16].definition = "Report 'yes' if the survivor was treated with steroids for at least 4 weeks continuously
1 => Yes
2 => No
-9922 => NK"
* differential.element[16].min = 1
* differential.element[16].max = "1"
* differential.element[16].type.code = #CodeableConcept


* differential.element[17].id = "MinimalTreatmentSummary.chemotherapy.intrathecalInjections"
* differential.element[17].path = "MinimalTreatmentSummary.chemotherapy.intrathecalInjections"
* differential.element[17].short = "Intrathecal injections"
* differential.element[17].definition = "Please state if the survivor received any therapeutic intrathecal injections
1 => Yes
2 => No
-9922 => NK"
* differential.element[17].min = 1
* differential.element[17].max = "1"
* differential.element[17].type.code = #CodeableConcept


* differential.element[18].id = "MinimalTreatmentSummary.sct"
* differential.element[18].path = "MinimalTreatmentSummary.sct"
* differential.element[18].short = "SCT"
* differential.element[18].definition = "SCT"
* differential.element[18].min = 0
* differential.element[18].max = "*"
* differential.element[18].type.code = #BackboneElement


* differential.element[19].id = "MinimalTreatmentSummary.sct.type"
* differential.element[19].path = "MinimalTreatmentSummary.sct.type"
* differential.element[19].short = "Type of transplant"
* differential.element[19].definition = "Indicate if the transplant was autologous or allogeneic.
1 = Autologous
2 = Allogeneic
-9922 = NK"
* differential.element[19].min = 1
* differential.element[19].max = "1"
* differential.element[19].type.code = #CodeableConcept


* differential.element[20].id = "MinimalTreatmentSummary.sct.gvhdChronic"
* differential.element[20].path = "MinimalTreatmentSummary.sct.gvhdChronic"
* differential.element[20].short = "GVHD Chronic"
* differential.element[20].definition = "Please State if chronic GVHD occurred
Required if DONOR1 = 2 (Type of transplant = Allogenic)"
* differential.element[20].min = 0
* differential.element[20].max = "1"
* differential.element[20].type.code = #CodeableConcept


* differential.element[21].id = "MinimalTreatmentSummary.radiotherapy"
* differential.element[21].path = "MinimalTreatmentSummary.radiotherapy"
* differential.element[21].short = "Radiotherapy"
* differential.element[21].definition = "Radiotherapy"
* differential.element[21].min = 1
* differential.element[21].max = "*"
* differential.element[21].type.code = #BackboneElement


* differential.element[22].id = "MinimalTreatmentSummary.radiotherapy.type"
* differential.element[22].path = "MinimalTreatmentSummary.radiotherapy.type"
* differential.element[22].short = "Type of radiotherapy"
* differential.element[22].definition = "External Beam Radiation: The radiation is produced by a large machine, and the type of the machine needs to be recorded in the subsequent field.
Brachytherapy: a material that is radioactive (often a fine wire or a tiny ?seed?) is placed on or in the body to give a very localized high dose of radiation. Details will be asked in the next field
Metabolic or radionuclide treatment/therapy: a liquid substance is injected into the blood stream and carries radiation throughout the body with the aim of reaching tumour tissue.  Also in this case, details will be asked in the subsequent field.
1 => External beam
2 => Brachytherapy
3 => Metabolic/radionuclide therapy"
* differential.element[22].min = 1
* differential.element[22].max = "1"
* differential.element[22].type.code = #CodeableConcept


* differential.element[23].id = "MinimalTreatmentSummary.radiotherapy.startDate"
* differential.element[23].path = "MinimalTreatmentSummary.radiotherapy.startDate"
* differential.element[23].short = "Start date"
* differential.element[23].definition = "Enter the date on which the first treatment (fraction) of radiotherapy was given, in a DD/MM/YYYY format. If the date is unkown or partially missed insert the year at the best of your knowledge."
* differential.element[23].min = 1
* differential.element[23].max = "1"
* differential.element[23].type.code = #dateTime


* differential.element[24].id = "MinimalTreatmentSummary.radiotherapy.target"
* differential.element[24].path = "MinimalTreatmentSummary.radiotherapy.target"
* differential.element[24].short = "Target Body Site"
* differential.element[24].definition = "Site' refers to the radiation therapy treatment field, i.e. the part of the body that received the radiation dose in order to treat the tumour. 
Required if Type of radiotherapy = 1 or 2 (External Beam, Brachytherapy)ÿ
If more than one body site was treated with radiotherapy, you can add anther site and describe; upto 5 sites are allowed by the system "
* differential.element[24].min = 0
* differential.element[24].max = "5"
* differential.element[24].type.code = #BackboneElement


* differential.element[25].id = "MinimalTreatmentSummary.radiotherapy.target.site"
* differential.element[25].path = "MinimalTreatmentSummary.radiotherapy.target.site"
* differential.element[25].short = "Body Site"
* differential.element[25].definition = "RT sites are coded with a 3 tier level (see list). The first is ?Tier 1?.  The first digit/s of the code, describes the large topographical body areas e.g. brain, chest, abdomen, limb. Since radiation fields often involve more than one topographical area we have added ?cervico-thoracic?, ?thoraco abdominal? and ?abdomino pelvic? areas to Tier 1. 
The second (Tier 2) includes subcategories of Tier 1 sites e.g. brain stem, heart, liver, upper limb. 
Where the information is available a third (Tier 3) of further subdivisions includes more detailed areas. 
When using the SurPass platform, as you start typing the name of the site, a drop down list with related terms will appear (special sites like Inverted Y are included). If the RT site listed in the medical record cannot reasonably be matched to one of the sites listed in the computer, choose ??Other' (.98 in tier 2) and then add in free text the name of this RT site. "
* differential.element[25].min = 1
* differential.element[25].max = "1"
* differential.element[25].type.code = #CodeableConcept
* differential.element[25].binding.valueSet = "http://hl7.eu/fhir/ig/pcsp/ValueSet/vs-radiotherapy-pcsp"
* differential.element[25].binding.strength = #required
* differential.element[26].id = "MinimalTreatmentSummary.radiotherapy.target.comulativeDose"
* differential.element[26].path = "MinimalTreatmentSummary.radiotherapy.target.comulativeDose"
* differential.element[26].short = "Comulative dose"
* differential.element[26].definition = "Specify the cumulative / total dose given to the primary radiation therapy site.
If the dose is not known, write NK."
* differential.element[26].min = 1
* differential.element[26].max = "1"
* differential.element[26].type.code = #BackboneElement


* differential.element[27].id = "MinimalTreatmentSummary.radiotherapy.target.comulativeDose.notKnown"
* differential.element[27].path = "MinimalTreatmentSummary.radiotherapy.target.comulativeDose.notKnown"
* differential.element[27].short = "Not nown dose"
* differential.element[27].definition = "Not nown dose"
* differential.element[27].min = 0
* differential.element[27].max = "1"
* differential.element[27].type.code = #CodeableConcept


* differential.element[28].id = "MinimalTreatmentSummary.radiotherapy.target.comulativeDose.dose"
* differential.element[28].path = "MinimalTreatmentSummary.radiotherapy.target.comulativeDose.dose"
* differential.element[28].short = "Dose"
* differential.element[28].definition = "Specify the cumulative / total dose given to the primary radiation therapy site."
* differential.element[28].min = 0
* differential.element[28].max = "1"
* differential.element[28].type.code = #decimal


* differential.element[29].id = "MinimalTreatmentSummary.radiotherapy.target.comulativeDose.unit"
* differential.element[29].path = "MinimalTreatmentSummary.radiotherapy.target.comulativeDose.unit"
* differential.element[29].short = "Measure unit"
* differential.element[29].definition = "External Beam Radiation Therapy (EBRT) and Brachytherapy doses are in Gy. If doses are reported in cGY, roughly two zeroes need to be deleted (e.g. 100 cGy = 1 Gy)."
* differential.element[29].min = 0
* differential.element[29].max = "1"
* differential.element[29].type.code = #CodeableConcept


* differential.element[30].id = "MinimalTreatmentSummary.radiotherapy.target.boost"
* differential.element[30].path = "MinimalTreatmentSummary.radiotherapy.target.boost"
* differential.element[30].short = "Boost"
* differential.element[30].definition = "A boost is an extra dose of radiotherapy directed to a smaller area inside the primary radiation field.
"
* differential.element[30].min = 1
* differential.element[30].max = "1"
* differential.element[30].type.code = #BackboneElement


* differential.element[31].id = "MinimalTreatmentSummary.radiotherapy.target.boost.given"
* differential.element[31].path = "MinimalTreatmentSummary.radiotherapy.target.boost.given"
* differential.element[31].short = "Boost given"
* differential.element[31].definition = "Flag indicating if a boost was given, not given or unknown
"
* differential.element[31].min = 0
* differential.element[31].max = "1"
* differential.element[31].type.code = #CodeableConcept


* differential.element[32].id = "MinimalTreatmentSummary.radiotherapy.target.boost.site"
* differential.element[32].path = "MinimalTreatmentSummary.radiotherapy.target.boost.site"
* differential.element[32].short = "Boost site"
* differential.element[32].definition = "Site' refers to the radiation therapy treatment field. As you start typing the name of the site, a drop down list with related terms will appear (special sites like Inverted Y are included). If the RT site listed in the medical record cannot reasonably be matched to one of the sites listed in the computer, choose: ??Other' and then add in free text the name of this RT site. 
required if given"
* differential.element[32].min = 0
* differential.element[32].max = "1"
* differential.element[32].type.code = #CodeableConcept


* differential.element[33].id = "MinimalTreatmentSummary.radiotherapy.target.boost.comulativeDose"
* differential.element[33].path = "MinimalTreatmentSummary.radiotherapy.target.boost.comulativeDose"
* differential.element[33].short = "Comulative dose"
* differential.element[33].definition = "Specify the cumulative / total dose given to the boost site."
* differential.element[33].min = 1
* differential.element[33].max = "1"
* differential.element[33].type.code = #BackboneElement


* differential.element[34].id = "MinimalTreatmentSummary.radiotherapy.target.boost.comulativeDose.notKnown"
* differential.element[34].path = "MinimalTreatmentSummary.radiotherapy.target.boost.comulativeDose.notKnown"
* differential.element[34].short = "Not nown dose"
* differential.element[34].definition = "Not nown dose"
* differential.element[34].min = 0
* differential.element[34].max = "1"
* differential.element[34].type.code = #CodeableConcept


* differential.element[35].id = "MinimalTreatmentSummary.radiotherapy.target.boost.comulativeDose.dose"
* differential.element[35].path = "MinimalTreatmentSummary.radiotherapy.target.boost.comulativeDose.dose"
* differential.element[35].short = "Dose"
* differential.element[35].definition = "Specify the cumulative / total dose given to the boost site."
* differential.element[35].min = 0
* differential.element[35].max = "1"
* differential.element[35].type.code = #decimal


* differential.element[36].id = "MinimalTreatmentSummary.radiotherapy.target.boost.comulativeDose.unit"
* differential.element[36].path = "MinimalTreatmentSummary.radiotherapy.target.boost.comulativeDose.unit"
* differential.element[36].short = "Unit (of external beam boost)"
* differential.element[36].definition = "Specify the unit of the boost in case of external beam radiotherapy.
1 = Gy"
* differential.element[36].min = 0
* differential.element[36].max = "1"
* differential.element[36].type.code = #CodeableConcept


* differential.element[37].id = "MinimalTreatmentSummary.radiotherapy.radionuclides"
* differential.element[37].path = "MinimalTreatmentSummary.radiotherapy.radionuclides"
* differential.element[37].short = "Radionuclides"
* differential.element[37].definition = "A detailed description of the radionuclides can be found in the user's manual.
If you have the name of a radionuclide but cannot find it in this list, please select Other and add the name in free text. 
If you know the treatment was with external beam but not which machine or energy, select 'Unknown'.

Required if Metabolic/radionuclide therapy

1 => Iodine-131
2 => MIBG
3 =>Yttrium 90
4 => Other
-9922 => Unknown"
* differential.element[37].min = 1
* differential.element[37].max = "1"
* differential.element[37].type.code = #CodeableConcept


* differential.element[38].id = "MinimalTreatmentSummary.majorSurgery"
* differential.element[38].path = "MinimalTreatmentSummary.majorSurgery"
* differential.element[38].short = "Major Surgery"
* differential.element[38].definition = "Major Surgery"
* differential.element[38].min = 0
* differential.element[38].max = "*"
* differential.element[38].type.code = #BackboneElement


* differential.element[39].id = "MinimalTreatmentSummary.majorSurgery.isOesophagus"
* differential.element[39].path = "MinimalTreatmentSummary.majorSurgery.isOesophagus"
* differential.element[39].short = "Oesophagus involved?"
* differential.element[39].definition = "Was the oesophagus involved in the surgery?"
* differential.element[39].min = 1
* differential.element[39].max = "1"
* differential.element[39].type.code = #CodeableConcept


* differential.element[40].id = "MinimalTreatmentSummary.majorSurgery.isAbdomen"
* differential.element[40].path = "MinimalTreatmentSummary.majorSurgery.isAbdomen"
* differential.element[40].short = "Abdomen involved?"
* differential.element[40].definition = "Was the abdomen involved in the surgery?"
* differential.element[40].min = 1
* differential.element[40].max = "1"
* differential.element[40].type.code = #CodeableConcept


* differential.element[41].id = "MinimalTreatmentSummary.majorSurgery.isBrain"
* differential.element[41].path = "MinimalTreatmentSummary.majorSurgery.isBrain"
* differential.element[41].short = "Brain involved?"
* differential.element[41].definition = "Was the brain involved in the surgery?"
* differential.element[41].min = 1
* differential.element[41].max = "1"
* differential.element[41].type.code = #CodeableConcept


* differential.element[42].id = "MinimalTreatmentSummary.majorSurgery.isFace"
* differential.element[42].path = "MinimalTreatmentSummary.majorSurgery.isFace"
* differential.element[42].short = "Face involved?"
* differential.element[42].definition = "Was the face involved in the surgery?"
* differential.element[42].min = 1
* differential.element[42].max = "1"
* differential.element[42].type.code = #CodeableConcept


* differential.element[43].id = "MinimalTreatmentSummary.majorSurgery.isLiver"
* differential.element[43].path = "MinimalTreatmentSummary.majorSurgery.isLiver"
* differential.element[43].short = "Liver involved?"
* differential.element[43].definition = "Was the liver involved in the surgery?"
* differential.element[43].min = 1
* differential.element[43].max = "1"
* differential.element[43].type.code = #CodeableConcept


* differential.element[44].id = "MinimalTreatmentSummary.majorSurgery.isSpine"
* differential.element[44].path = "MinimalTreatmentSummary.majorSurgery.isSpine"
* differential.element[44].short = "Spine involved?"
* differential.element[44].definition = "Was the spine involved in the surgery?"
* differential.element[44].min = 1
* differential.element[44].max = "1"
* differential.element[44].type.code = #CodeableConcept


* differential.element[45].id = "MinimalTreatmentSummary.majorSurgery.isSpinalCord"
* differential.element[45].path = "MinimalTreatmentSummary.majorSurgery.isSpinalCord"
* differential.element[45].short = "Spinal Cord involved?"
* differential.element[45].definition = "Was the spinal cord involved in the surgery ?
"
* differential.element[45].min = 1
* differential.element[45].max = "1"
* differential.element[45].type.code = #CodeableConcept


* differential.element[46].id = "MinimalTreatmentSummary.majorSurgery.isSympatheticNerves"
* differential.element[46].path = "MinimalTreatmentSummary.majorSurgery.isSympatheticNerves"
* differential.element[46].short = "Sympathetic nerves involved?"
* differential.element[46].definition = "Were the sympathetic nerves involved in the surgery ?"
* differential.element[46].min = 1
* differential.element[46].max = "1"
* differential.element[46].type.code = #CodeableConcept


* differential.element[47].id = "MinimalTreatmentSummary.majorSurgery.isChestThorax"
* differential.element[47].path = "MinimalTreatmentSummary.majorSurgery.isChestThorax"
* differential.element[47].short = "Chest/thorax involved?"
* differential.element[47].definition = "Was the chest or thorax involved in the surgery?
This does not include a central venous catheter (CVC)"
* differential.element[47].min = 1
* differential.element[47].max = "1"
* differential.element[47].type.code = #CodeableConcept


* differential.element[48].id = "MinimalTreatmentSummary.majorSurgery.isPelvis"
* differential.element[48].path = "MinimalTreatmentSummary.majorSurgery.isPelvis"
* differential.element[48].short = "Pelvis involved?"
* differential.element[48].definition = "Was the pelvis involved in the surgery ?"
* differential.element[48].min = 1
* differential.element[48].max = "1"
* differential.element[48].type.code = #CodeableConcept


* differential.element[49].id = "MinimalTreatmentSummary.majorSurgery.sacrifiedOrgans"
* differential.element[49].path = "MinimalTreatmentSummary.majorSurgery.sacrifiedOrgans"
* differential.element[49].short = "Sacrified Organs"
* differential.element[49].definition = "During surgery it is possible that some organs are 'sacrified' either to allow a radical excision of the tumor or on purpose (spleen) for staging procedures.
In case of partial resection of an organ (e.g. thyroid, kidney), the organ is not 'sacrified', this type of surgery should be then reported only in the 'tumor description' 
For other organs (e.g. hypothalamus) the only surgical procedure on it may determine some 'sacrifcice' of function, thus in this case, the organ should be coded as 'sacrified'."
* differential.element[49].min = 1
* differential.element[49].max = "*"
* differential.element[49].type.code = #CodeableConcept


* differential.element[50].id = "MinimalTreatmentSummary.majorSurgery.shuntApplied"
* differential.element[50].path = "MinimalTreatmentSummary.majorSurgery.shuntApplied"
* differential.element[50].short = "Shunt application "
* differential.element[50].definition = "Please report if a cerebrovascular shunt was inserted 

1 => Yes 
2 => No
 -9911 => NA
 -9922 => NK"
* differential.element[50].min = 1
* differential.element[50].max = "1"
* differential.element[50].type.code = #CodeableConcept


* differential.element[51].id = "MinimalTreatmentSummary.otherInfo"
* differential.element[51].path = "MinimalTreatmentSummary.otherInfo"
* differential.element[51].short = "Other info and relevant events"
* differential.element[51].definition = "Other info and relevant events"
* differential.element[51].min = 1
* differential.element[51].max = "1"
* differential.element[51].type.code = #BackboneElement


* differential.element[52].id = "MinimalTreatmentSummary.otherInfo.hypogonadal"
* differential.element[52].path = "MinimalTreatmentSummary.otherInfo.hypogonadal"
* differential.element[52].short = "Hypogonadal ?"
* differential.element[52].definition = "Please specify if hypogonadal occured during therapy
1 => Yes
2 => No
-9922 => NK"
* differential.element[52].min = 1
* differential.element[52].max = "1"
* differential.element[52].type.code = #CodeableConcept


* differential.element[53].id = "MinimalTreatmentSummary.otherInfo.growthHormoneDeficiency"
* differential.element[53].path = "MinimalTreatmentSummary.otherInfo.growthHormoneDeficiency"
* differential.element[53].short = "Growth hormone deficiency ?"
* differential.element[53].definition = "Please specify if growth hormon deficiency occured during therapy"
* differential.element[53].min = 1
* differential.element[53].max = "1"
* differential.element[53].type.code = #CodeableConcept


* differential.element[54].id = "MinimalTreatmentSummary.otherInfohydrocephalus"
* differential.element[54].path = "MinimalTreatmentSummary.otherInfohydrocephalus"
* differential.element[54].short = "Hydrocephalus ?"
* differential.element[54].definition = "Please specify if hydrocephalus occured during therapy"
* differential.element[54].min = 1
* differential.element[54].max = "1"
* differential.element[54].type.code = #CodeableConcept


* differential.element[55].id = "MinimalTreatmentSummary.otherInfo.chronicViralHepatitis"
* differential.element[55].path = "MinimalTreatmentSummary.otherInfo.chronicViralHepatitis"
* differential.element[55].short = "Chronic viral hepatitis ?"
* differential.element[55].definition = "Please specify if chronic viral hepatitis occured during therapy"
* differential.element[55].min = 1
* differential.element[55].max = "1"
* differential.element[55].type.code = #CodeableConcept


* differential.element[56].id = "MinimalTreatmentSummary.otherInfo.sinusoidalObstructionSyndrome"
* differential.element[56].path = "MinimalTreatmentSummary.otherInfo.sinusoidalObstructionSyndrome"
* differential.element[56].short = "Sinusoidal obstruction syndrome ?"
* differential.element[56].definition = "Please specify if sinusoidal obstruction syndrome occuredduring therapy"
* differential.element[56].min = 1
* differential.element[56].max = "1"
* differential.element[56].type.code = #CodeableConcept


* differential.element[57].id = "MinimalTreatmentSummary.otherInfo.moreOf10Transfusions"
* differential.element[57].path = "MinimalTreatmentSummary.otherInfo.moreOf10Transfusions"
* differential.element[57].short = ">= 10 Transfusions ?"
* differential.element[57].definition = "Please specify if patient recieved 10 or more than 10 trasfusions during therapy"
* differential.element[57].min = 0
* differential.element[57].max = "1"
* differential.element[57].type.code = #CodeableConcept


* differential.element[58].id = "MinimalTreatmentSummary.progressionRelapseAfterEOT"
* differential.element[58].path = "MinimalTreatmentSummary.progressionRelapseAfterEOT"
* differential.element[58].short = "Progression-relapse after the End of Treatment"
* differential.element[58].definition = "Progression-relapse after the End of Treatment"
* differential.element[58].min = 0
* differential.element[58].max = "*"
* differential.element[58].type.code = #BackboneElement


* differential.element[59].id = "MinimalTreatmentSummary.progressionRelapseAfterEOT.stemCelltransplantation"
* differential.element[59].path = "MinimalTreatmentSummary.progressionRelapseAfterEOT.stemCelltransplantation"
* differential.element[59].short = "Stem Cell transplantation"
* differential.element[59].definition = "Please specify if the survivor received any hematopoietic stem cell transplant. Details will be given in the appropriate section 
1 => Yes
2 => No
-9922 => NK"
* differential.element[59].min = 1
* differential.element[59].max = "1"
* differential.element[59].type.code = #CodeableConcept


