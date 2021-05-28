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
* differential.element[4].max = "5"
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
* differential.element[6].definition = "Report here if the survivor has some Hereditary Cancer Predisposition Syndrome or a medical conditions, cancer associated. (Yes/No)"
* differential.element[6].min = 0
* differential.element[6].max = "1"
* differential.element[6].type.code = #CodeableConcept


* differential.element[7].id = "MinimalTreatmentSummary.diagnosis.chemotherapy"
* differential.element[7].path = "MinimalTreatmentSummary.diagnosis.chemotherapy"
* differential.element[7].short = "Chemotherapy"
* differential.element[7].definition = "Chemotherapy"
* differential.element[7].min = 0
* differential.element[7].max = "1"
* differential.element[7].type.code = #http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Chemotherapy


* differential.element[8].id = "MinimalTreatmentSummary.diagnosis.radiotherapy"
* differential.element[8].path = "MinimalTreatmentSummary.diagnosis.radiotherapy"
* differential.element[8].short = "Radiotherapy"
* differential.element[8].definition = "Radiotherapy"
* differential.element[8].min = 0
* differential.element[8].max = "1"
* differential.element[8].type.code = #http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Radiotherapy


* differential.element[9].id = "MinimalTreatmentSummary.diagnosis.stemCellTransplantation"
* differential.element[9].path = "MinimalTreatmentSummary.diagnosis.stemCellTransplantation"
* differential.element[9].short = "Stem Cell transplantation"
* differential.element[9].definition = "Stem Cell transplantation"
* differential.element[9].min = 0
* differential.element[9].max = "*"
* differential.element[9].type.code = #BackboneElement


* differential.element[10].id = "MinimalTreatmentSummary.diagnosis.stemCellTransplantation.type"
* differential.element[10].path = "MinimalTreatmentSummary.diagnosis.stemCellTransplantation.type"
* differential.element[10].short = "Type of transplant"
* differential.element[10].definition = "Indicate if the transplant was autologous or allogeneic.
1 = Autologous
2 = Allogeneic
-9922 = NK"
* differential.element[10].min = 0
* differential.element[10].max = "1"
* differential.element[10].type.code = #CodeableConcept


* differential.element[11].id = "MinimalTreatmentSummary.diagnosis.stemCellTransplantation.gvhdChronic"
* differential.element[11].path = "MinimalTreatmentSummary.diagnosis.stemCellTransplantation.gvhdChronic"
* differential.element[11].short = "GVHD Chronic"
* differential.element[11].definition = "Please State if chronic GVHD occurred
Required if DONOR1 = 2 (Type of transplant = Allogenic)"
* differential.element[11].min = 0
* differential.element[11].max = "1"
* differential.element[11].type.code = #CodeableConcept


* differential.element[12].id = "MinimalTreatmentSummary.diagnosis.majorSurgery"
* differential.element[12].path = "MinimalTreatmentSummary.diagnosis.majorSurgery"
* differential.element[12].short = "Major Surgery"
* differential.element[12].definition = "Major Surgery"
* differential.element[12].min = 0
* differential.element[12].max = "*"
* differential.element[12].type.code = #BackboneElement


* differential.element[13].id = "MinimalTreatmentSummary.diagnosis.majorSurgery.isOesophagus"
* differential.element[13].path = "MinimalTreatmentSummary.diagnosis.majorSurgery.isOesophagus"
* differential.element[13].short = "Oesophagus involved?"
* differential.element[13].definition = "Was the oesophagus involved in the surgery?"
* differential.element[13].min = 0
* differential.element[13].max = "1"
* differential.element[13].type.code = #CodeableConcept


* differential.element[14].id = "MinimalTreatmentSummary.diagnosis.majorSurgery.isAbdomen"
* differential.element[14].path = "MinimalTreatmentSummary.diagnosis.majorSurgery.isAbdomen"
* differential.element[14].short = "Abdomen involved?"
* differential.element[14].definition = "Was the abdomen involved in the surgery?"
* differential.element[14].min = 0
* differential.element[14].max = "1"
* differential.element[14].type.code = #CodeableConcept


* differential.element[15].id = "MinimalTreatmentSummary.diagnosis.majorSurgery.isBrain"
* differential.element[15].path = "MinimalTreatmentSummary.diagnosis.majorSurgery.isBrain"
* differential.element[15].short = "Brain involved?"
* differential.element[15].definition = "Was the brain involved in the surgery?"
* differential.element[15].min = 0
* differential.element[15].max = "1"
* differential.element[15].type.code = #CodeableConcept


* differential.element[16].id = "MinimalTreatmentSummary.diagnosis.majorSurgery.isFace"
* differential.element[16].path = "MinimalTreatmentSummary.diagnosis.majorSurgery.isFace"
* differential.element[16].short = "Face involved?"
* differential.element[16].definition = "Was the face involved in the surgery?"
* differential.element[16].min = 0
* differential.element[16].max = "1"
* differential.element[16].type.code = #CodeableConcept


* differential.element[17].id = "MinimalTreatmentSummary.diagnosis.majorSurgery.isLiver"
* differential.element[17].path = "MinimalTreatmentSummary.diagnosis.majorSurgery.isLiver"
* differential.element[17].short = "Liver involved?"
* differential.element[17].definition = "Was the liver involved in the surgery?"
* differential.element[17].min = 0
* differential.element[17].max = "1"
* differential.element[17].type.code = #CodeableConcept


* differential.element[18].id = "MinimalTreatmentSummary.diagnosis.majorSurgery.isSpine"
* differential.element[18].path = "MinimalTreatmentSummary.diagnosis.majorSurgery.isSpine"
* differential.element[18].short = "Spine involved?"
* differential.element[18].definition = "Was the spine involved in the surgery?"
* differential.element[18].min = 0
* differential.element[18].max = "1"
* differential.element[18].type.code = #CodeableConcept


* differential.element[19].id = "MinimalTreatmentSummary.diagnosis.majorSurgery.isSpinalCord"
* differential.element[19].path = "MinimalTreatmentSummary.diagnosis.majorSurgery.isSpinalCord"
* differential.element[19].short = "Spinal Cord involved?"
* differential.element[19].definition = "Was the spinal cord involved in the surgery ?
"
* differential.element[19].min = 0
* differential.element[19].max = "1"
* differential.element[19].type.code = #CodeableConcept


* differential.element[20].id = "MinimalTreatmentSummary.diagnosis.majorSurgery.isSympatheticNerves"
* differential.element[20].path = "MinimalTreatmentSummary.diagnosis.majorSurgery.isSympatheticNerves"
* differential.element[20].short = "Sympathetic nerves involved?"
* differential.element[20].definition = "Were the sympathetic nerves involved in the surgery ?"
* differential.element[20].min = 0
* differential.element[20].max = "1"
* differential.element[20].type.code = #CodeableConcept


* differential.element[21].id = "MinimalTreatmentSummary.diagnosis.majorSurgery.isChestThorax"
* differential.element[21].path = "MinimalTreatmentSummary.diagnosis.majorSurgery.isChestThorax"
* differential.element[21].short = "Chest/thorax involved?"
* differential.element[21].definition = "Was the chest or thorax involved in the surgery?
This does not include a central venous catheter (CVC)"
* differential.element[21].min = 0
* differential.element[21].max = "1"
* differential.element[21].type.code = #CodeableConcept


* differential.element[22].id = "MinimalTreatmentSummary.diagnosis.majorSurgery.isPelvis"
* differential.element[22].path = "MinimalTreatmentSummary.diagnosis.majorSurgery.isPelvis"
* differential.element[22].short = "Pelvis involved?"
* differential.element[22].definition = "Was the pelvis involved in the surgery ?"
* differential.element[22].min = 0
* differential.element[22].max = "1"
* differential.element[22].type.code = #CodeableConcept


* differential.element[23].id = "MinimalTreatmentSummary.diagnosis.majorSurgery.sacrifiedOrgans"
* differential.element[23].path = "MinimalTreatmentSummary.diagnosis.majorSurgery.sacrifiedOrgans"
* differential.element[23].short = "Sacrified Organs"
* differential.element[23].definition = "During surgery it is possible that some organs are 'sacrified' either to allow a radical excision of the tumor or on purpose (spleen) for staging procedures.
In case of partial resection of an organ (e.g. thyroid, kidney), the organ is not 'sacrified', this type of surgery should be then reported only in the 'tumor description' 
For other organs (e.g. hypothalamus) the only surgical procedure on it may determine some 'sacrifcice' of function, thus in this case, the organ should be coded as 'sacrified'."
* differential.element[23].min = 0
* differential.element[23].max = "*"
* differential.element[23].type.code = #CodeableConcept


* differential.element[24].id = "MinimalTreatmentSummary.diagnosis.majorSurgery.shuntApplied"
* differential.element[24].path = "MinimalTreatmentSummary.diagnosis.majorSurgery.shuntApplied"
* differential.element[24].short = "Shunt application"
* differential.element[24].definition = "Please report if a cerebrovascular shunt was inserted 

1 => Yes 
2 => No
 -9911 => NA
 -9922 => NK"
* differential.element[24].min = 0
* differential.element[24].max = "1"
* differential.element[24].type.code = #CodeableConcept


* differential.element[25].id = "MinimalTreatmentSummary.diagnosis.otherInfo"
* differential.element[25].path = "MinimalTreatmentSummary.diagnosis.otherInfo"
* differential.element[25].short = "Other info and relevant events"
* differential.element[25].definition = "Other info and relevant events"
* differential.element[25].min = 1
* differential.element[25].max = "1"
* differential.element[25].type.code = #BackboneElement


* differential.element[26].id = "MinimalTreatmentSummary.diagnosis.otherInfo.hypogonadal"
* differential.element[26].path = "MinimalTreatmentSummary.diagnosis.otherInfo.hypogonadal"
* differential.element[26].short = "Hypogonadal ?"
* differential.element[26].definition = "Please specify if hypogonadal occured during therapy
1 => Yes
2 => No
-9922 => NK"
* differential.element[26].min = 0
* differential.element[26].max = "1"
* differential.element[26].type.code = #CodeableConcept


* differential.element[27].id = "MinimalTreatmentSummary.diagnosis.otherInfo.growthHormoneDeficiency"
* differential.element[27].path = "MinimalTreatmentSummary.diagnosis.otherInfo.growthHormoneDeficiency"
* differential.element[27].short = "Growth hormone deficiency ?"
* differential.element[27].definition = "Please specify if growth hormon deficiency occured during therapy"
* differential.element[27].min = 0
* differential.element[27].max = "1"
* differential.element[27].type.code = #CodeableConcept


* differential.element[28].id = "MinimalTreatmentSummary.diagnosis.otherInfo.hydrocephalus"
* differential.element[28].path = "MinimalTreatmentSummary.diagnosis.otherInfo.hydrocephalus"
* differential.element[28].short = "Hydrocephalus ?"
* differential.element[28].definition = "Please specify if hydrocephalus occured during therapy"
* differential.element[28].min = 0
* differential.element[28].max = "1"
* differential.element[28].type.code = #CodeableConcept


* differential.element[29].id = "MinimalTreatmentSummary.diagnosis.otherInfo.chronicViralHepatitis"
* differential.element[29].path = "MinimalTreatmentSummary.diagnosis.otherInfo.chronicViralHepatitis"
* differential.element[29].short = "Chronic viral hepatitis ?"
* differential.element[29].definition = "Please specify if chronic viral hepatitis occured during therapy"
* differential.element[29].min = 0
* differential.element[29].max = "1"
* differential.element[29].type.code = #CodeableConcept


* differential.element[30].id = "MinimalTreatmentSummary.diagnosis.otherInfo.sinusoidalObstructionSyndrome"
* differential.element[30].path = "MinimalTreatmentSummary.diagnosis.otherInfo.sinusoidalObstructionSyndrome"
* differential.element[30].short = "Sinusoidal obstruction syndrome ?"
* differential.element[30].definition = "Please specify if sinusoidal obstruction syndrome occuredduring therapy"
* differential.element[30].min = 0
* differential.element[30].max = "1"
* differential.element[30].type.code = #CodeableConcept


* differential.element[31].id = "MinimalTreatmentSummary.diagnosis.otherInfo.moreOf10Transfusions"
* differential.element[31].path = "MinimalTreatmentSummary.diagnosis.otherInfo.moreOf10Transfusions"
* differential.element[31].short = ">= 10 Transfusions ?"
* differential.element[31].definition = "Please specify if patient recieved 10 or more than 10 trasfusions during therapy"
* differential.element[31].min = 0
* differential.element[31].max = "1"
* differential.element[31].type.code = #CodeableConcept


* differential.element[32].id = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT"
* differential.element[32].path = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT"
* differential.element[32].short = "Progression-relapse after the End of Treatment"
* differential.element[32].definition = "Progression-relapse after the End of Treatment"
* differential.element[32].min = 0
* differential.element[32].max = "*"
* differential.element[32].type.code = #BackboneElement


* differential.element[33].id = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT.chemotherapy"
* differential.element[33].path = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT.chemotherapy"
* differential.element[33].short = "Chemotherapy"
* differential.element[33].definition = "Chemotherapy"
* differential.element[33].min = 0
* differential.element[33].max = "1"
* differential.element[33].type.code = #http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Chemotherapy


* differential.element[37].id = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT.radiotherapy"
* differential.element[37].path = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT.radiotherapy"
* differential.element[37].short = "Radiotherapy"
* differential.element[37].definition = "Radiotherapy"
* differential.element[37].min = 0
* differential.element[37].max = "1"
* differential.element[37].type.code = #http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Radiotherapy


* differential.element[34].id = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT.stemCellTransplantation"
* differential.element[34].path = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT.stemCellTransplantation"
* differential.element[34].short = "Stem Cell transplantation"
* differential.element[34].definition = "Stem Cell transplantation"
* differential.element[34].min = 0
* differential.element[34].max = "*"
* differential.element[34].type.code = #BackboneElement


* differential.element[35].id = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT.stemCellTransplantation.type"
* differential.element[35].path = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT.stemCellTransplantation.type"
* differential.element[35].short = "Type of transplant"
* differential.element[35].definition = "Indicate if the transplant was autologous or allogeneic.
1 = Autologous
2 = Allogeneic
-9922 = NK"
* differential.element[35].min = 0
* differential.element[35].max = "1"
* differential.element[35].type.code = #CodeableConcept


* differential.element[36].id = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT.stemCellTransplantation.gvhdChronic"
* differential.element[36].path = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT.stemCellTransplantation.gvhdChronic"
* differential.element[36].short = "GVHD Chronic"
* differential.element[36].definition = "Please State if chronic GVHD occurred
Required if DONOR1 = 2 (Type of transplant = Allogenic)"
* differential.element[36].min = 0
* differential.element[36].max = "1"
* differential.element[36].type.code = #CodeableConcept


* differential.element[38].id = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT.majorSurgery"
* differential.element[38].path = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT.majorSurgery"
* differential.element[38].short = "Major Surgery"
* differential.element[38].definition = "Major Surgery"
* differential.element[38].min = 0
* differential.element[38].max = "*"
* differential.element[38].type.code = #BackboneElement


* differential.element[39].id = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT.majorSurgery.isOesophagus"
* differential.element[39].path = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT.majorSurgery.isOesophagus"
* differential.element[39].short = "Oesophagus involved?"
* differential.element[39].definition = "Was the oesophagus involved in the surgery?"
* differential.element[39].min = 0
* differential.element[39].max = "1"
* differential.element[39].type.code = #CodeableConcept


* differential.element[40].id = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT.majorSurgery.isAbdomen"
* differential.element[40].path = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT.majorSurgery.isAbdomen"
* differential.element[40].short = "Abdomen involved?"
* differential.element[40].definition = "Was the abdomen involved in the surgery?"
* differential.element[40].min = 0
* differential.element[40].max = "1"
* differential.element[40].type.code = #CodeableConcept


* differential.element[41].id = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT.majorSurgery.isBrain"
* differential.element[41].path = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT.majorSurgery.isBrain"
* differential.element[41].short = "Brain involved?"
* differential.element[41].definition = "Was the brain involved in the surgery?"
* differential.element[41].min = 0
* differential.element[41].max = "1"
* differential.element[41].type.code = #CodeableConcept


* differential.element[42].id = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT.majorSurgery.isFace"
* differential.element[42].path = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT.majorSurgery.isFace"
* differential.element[42].short = "Face involved?"
* differential.element[42].definition = "Was the face involved in the surgery?"
* differential.element[42].min = 0
* differential.element[42].max = "1"
* differential.element[42].type.code = #CodeableConcept


* differential.element[43].id = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT.majorSurgery.isLiver"
* differential.element[43].path = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT.majorSurgery.isLiver"
* differential.element[43].short = "Liver involved?"
* differential.element[43].definition = "Was the liver involved in the surgery?"
* differential.element[43].min = 0
* differential.element[43].max = "1"
* differential.element[43].type.code = #CodeableConcept


* differential.element[44].id = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT.majorSurgery.isSpine"
* differential.element[44].path = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT.majorSurgery.isSpine"
* differential.element[44].short = "Spine involved?"
* differential.element[44].definition = "Was the spine involved in the surgery?"
* differential.element[44].min = 0
* differential.element[44].max = "1"
* differential.element[44].type.code = #CodeableConcept


* differential.element[45].id = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT.majorSurgery.isSpinalCord"
* differential.element[45].path = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT.majorSurgery.isSpinalCord"
* differential.element[45].short = "Spinal Cord involved?"
* differential.element[45].definition = "Was the spinal cord involved in the surgery ?
"
* differential.element[45].min = 0
* differential.element[45].max = "1"
* differential.element[45].type.code = #CodeableConcept


* differential.element[46].id = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT.majorSurgery.isSympatheticNerves"
* differential.element[46].path = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT.majorSurgery.isSympatheticNerves"
* differential.element[46].short = "Sympathetic nerves involved?"
* differential.element[46].definition = "Were the sympathetic nerves involved in the surgery ?"
* differential.element[46].min = 0
* differential.element[46].max = "1"
* differential.element[46].type.code = #CodeableConcept


* differential.element[47].id = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT.majorSurgery.isChestThorax"
* differential.element[47].path = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT.majorSurgery.isChestThorax"
* differential.element[47].short = "Chest/thorax involved?"
* differential.element[47].definition = "Was the chest or thorax involved in the surgery?
This does not include a central venous catheter (CVC)"
* differential.element[47].min = 0
* differential.element[47].max = "1"
* differential.element[47].type.code = #CodeableConcept


* differential.element[48].id = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT.majorSurgery.isPelvis"
* differential.element[48].path = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT.majorSurgery.isPelvis"
* differential.element[48].short = "Pelvis involved?"
* differential.element[48].definition = "Was the pelvis involved in the surgery ?"
* differential.element[48].min = 0
* differential.element[48].max = "1"
* differential.element[48].type.code = #CodeableConcept


* differential.element[49].id = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT.majorSurgery.sacrifiedOrgans"
* differential.element[49].path = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT.majorSurgery.sacrifiedOrgans"
* differential.element[49].short = "Sacrified Organs"
* differential.element[49].definition = "During surgery it is possible that some organs are 'sacrified' either to allow a radical excision of the tumor or on purpose (spleen) for staging procedures.
In case of partial resection of an organ (e.g. thyroid, kidney), the organ is not 'sacrified', this type of surgery should be then reported only in the 'tumor description' 
For other organs (e.g. hypothalamus) the only surgical procedure on it may determine some 'sacrifcice' of function, thus in this case, the organ should be coded as 'sacrified'."
* differential.element[49].min = 0
* differential.element[49].max = "*"
* differential.element[49].type.code = #CodeableConcept


* differential.element[50].id = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT.majorSurgery.shuntApplied"
* differential.element[50].path = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT.majorSurgery.shuntApplied"
* differential.element[50].short = "Shunt application"
* differential.element[50].definition = "Please report if a cerebrovascular shunt was inserted 

1 => Yes 
2 => No
 -9911 => NA
 -9922 => NK"
* differential.element[50].min = 0
* differential.element[50].max = "1"
* differential.element[50].type.code = #CodeableConcept


* differential.element[51].id = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT.otherInfo"
* differential.element[51].path = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT.otherInfo"
* differential.element[51].short = "Other info and relevant events"
* differential.element[51].definition = "Other info and relevant events"
* differential.element[51].min = 1
* differential.element[51].max = "1"
* differential.element[51].type.code = #BackboneElement


* differential.element[52].id = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT.otherInfo.hypogonadal"
* differential.element[52].path = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT.otherInfo.hypogonadal"
* differential.element[52].short = "Hypogonadal ?"
* differential.element[52].definition = "Please specify if hypogonadal occured during therapy
1 => Yes
2 => No
-9922 => NK"
* differential.element[52].min = 0
* differential.element[52].max = "1"
* differential.element[52].type.code = #CodeableConcept


* differential.element[53].id = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT.otherInfo.growthHormoneDeficiency"
* differential.element[53].path = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT.otherInfo.growthHormoneDeficiency"
* differential.element[53].short = "Growth hormone deficiency ?"
* differential.element[53].definition = "Please specify if growth hormon deficiency occured during therapy"
* differential.element[53].min = 0
* differential.element[53].max = "1"
* differential.element[53].type.code = #CodeableConcept


* differential.element[54].id = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT.otherInfo.hydrocephalus"
* differential.element[54].path = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT.otherInfo.hydrocephalus"
* differential.element[54].short = "Hydrocephalus ?"
* differential.element[54].definition = "Please specify if hydrocephalus occured during therapy"
* differential.element[54].min = 0
* differential.element[54].max = "1"
* differential.element[54].type.code = #CodeableConcept


* differential.element[55].id = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT.otherInfo.chronicViralHepatitis"
* differential.element[55].path = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT.otherInfo.chronicViralHepatitis"
* differential.element[55].short = "Chronic viral hepatitis ?"
* differential.element[55].definition = "Please specify if chronic viral hepatitis occured during therapy"
* differential.element[55].min = 0
* differential.element[55].max = "1"
* differential.element[55].type.code = #CodeableConcept


* differential.element[56].id = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT.otherInfo.sinusoidalObstructionSyndrome"
* differential.element[56].path = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT.otherInfo.sinusoidalObstructionSyndrome"
* differential.element[56].short = "Sinusoidal obstruction syndrome ?"
* differential.element[56].definition = "Please specify if sinusoidal obstruction syndrome occuredduring therapy"
* differential.element[56].min = 0
* differential.element[56].max = "1"
* differential.element[56].type.code = #CodeableConcept


* differential.element[57].id = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT.otherInfo.moreOf10Transfusions"
* differential.element[57].path = "MinimalTreatmentSummary.diagnosis.progressionRelapseAfterEOT.otherInfo.moreOf10Transfusions"
* differential.element[57].short = ">= 10 Transfusions ?"
* differential.element[57].definition = "Please specify if patient recieved 10 or more than 10 trasfusions during therapy"
* differential.element[57].min = 0
* differential.element[57].max = "1"
* differential.element[57].type.code = #CodeableConcept


