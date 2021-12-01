Instance: TreatmentSummary
InstanceOf: StructureDefinition
Description: "Treatment Summary data model"
Title: "Treatment Summary"
Usage: #definition
* publisher = "PanCareSurPass project"
* status = #draft
* url = "http://hl7.eu/fhir/ig/pcsp/StructureDefinition/TreatmentSummary"
* name = "TreatmentSummary"
* title = "Treatment Summary"
* status = #draft
* experimental = true
* description = "Treatment Summary data model"
* version = "0.0.1"
* mapping[0].identity = "fhir"
* mapping[0].uri = "hl7.org/fhir/r4"
* mapping[0].name = "FHIR"
* kind = #logical
* abstract = true
* type = "TreatmentSummary"
* baseDefinition = "http://hl7.org/fhir/StructureDefinition/Element"
* derivation = #specialization
* differential.element[0].id = "TreatmentSummary"
* differential.element[0].path = "TreatmentSummary"
* differential.element[0].short = "Treatment Summary"
* differential.element[0].definition = "PanCareSurPass Treatment Summary"
* differential.element[0].min = 1
* differential.element[0].max = "1"
* differential.element[1].id = "TreatmentSummary.subject"
* differential.element[1].path = "TreatmentSummary.subject"
* differential.element[1].short = "Subject"
* differential.element[1].definition = "Subject"
* differential.element[1].min = 1
* differential.element[1].max = "1"
* differential.element[1].type.code = #http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Subject
* differential.element[2].id = "TreatmentSummary.diagnosis"
* differential.element[2].path = "TreatmentSummary.diagnosis"
* differential.element[2].short = "Diagnosis"
* differential.element[2].definition = "Diagnosis"
* differential.element[2].min = 0
* differential.element[2].max = "5"
* differential.element[2].type.code = #BackboneElement
* differential.element[3].id = "TreatmentSummary.diagnosis.details"
* differential.element[3].path = "TreatmentSummary.diagnosis.details"
* differential.element[3].short = "Details about this diagnosis"
* differential.element[3].definition = "Details about this diagnosis"
* differential.element[3].min = 0
* differential.element[3].max = "1"
* differential.element[3].type.code = #http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Diagnosis
* differential.element[4].id = "TreatmentSummary.diagnosis.frontLineTreatment"
* differential.element[4].path = "TreatmentSummary.diagnosis.frontLineTreatment"
* differential.element[4].short = "Front line treatment"
* differential.element[4].definition = "Front line treatment"
* differential.element[4].min = 0
* differential.element[4].max = "*"
* differential.element[4].type.code = #BackboneElement
* differential.element[5].id = "TreatmentSummary.diagnosis.frontLineTreatment.followedProtocol"
* differential.element[5].path = "TreatmentSummary.diagnosis.frontLineTreatment.followedProtocol"
* differential.element[5].short = "Followed Protocol"
* differential.element[5].definition = "Followed Protocol"
* differential.element[5].min = 0
* differential.element[5].max = "1"
* differential.element[5].type.code = #BackboneElement
* differential.element[6].id = "TreatmentSummary.diagnosis.frontLineTreatment.followedProtocol.type"
* differential.element[6].path = "TreatmentSummary.diagnosis.frontLineTreatment.followedProtocol.type"
* differential.element[6].short = "Protocole type"
* differential.element[6].definition = "2 => Trial/protocol
2 => Personalized
3 => Guidelines
-9922 => NK"
* differential.element[6].min = 1
* differential.element[6].max = "1"
* differential.element[6].type.code = #CodeableConcept
* differential.element[7].id = "TreatmentSummary.diagnosis.frontLineTreatment.followedProtocol.description"
* differential.element[7].path = "TreatmentSummary.diagnosis.frontLineTreatment.followedProtocol.description"
* differential.element[7].short = "Protocol name or description"
* differential.element[7].definition = "If a specific trial/protocol was used, please specify.  
In case of relapse/progression during front line treatment,please report both the name of the front line as well of the salvage treatment
If personalized, please specify.  "
* differential.element[7].min = 1
* differential.element[7].max = "1"
* differential.element[7].type.code = #string
* differential.element[8].id = "TreatmentSummary.diagnosis.frontLineTreatment.followedProtocol.arm"
* differential.element[8].path = "TreatmentSummary.diagnosis.frontLineTreatment.followedProtocol.arm"
* differential.element[8].short = "Group/Arm/Randomization"
* differential.element[8].definition = "If the trial was randomized, please define randomization arm"
* differential.element[8].min = 0
* differential.element[8].max = "1"
* differential.element[8].type.code = #string
* differential.element[9].id = "TreatmentSummary.diagnosis.frontLineTreatment.dateEOT"
* differential.element[9].path = "TreatmentSummary.diagnosis.frontLineTreatment.dateEOT"
* differential.element[9].short = "Date of first elective end of treatment"
* differential.element[9].definition = "Date of first elective end of treatment"
* differential.element[9].min = 0
* differential.element[9].max = "1"
* differential.element[9].type.code = #dateTime
* differential.element[10].id = "TreatmentSummary.diagnosis.frontLineTreatment.completeRemission"
* differential.element[10].path = "TreatmentSummary.diagnosis.frontLineTreatment.completeRemission"
* differential.element[10].short = "Complete remission"
* differential.element[10].definition = "Complete remission"
* differential.element[10].min = 1
* differential.element[10].max = "1"
* differential.element[10].type.code = #BackboneElement
* differential.element[11].id = "TreatmentSummary.diagnosis.frontLineTreatment.completeRemission.status"
* differential.element[11].path = "TreatmentSummary.diagnosis.frontLineTreatment.completeRemission.status"
* differential.element[11].short = "Complete remission (Yes/No)"
* differential.element[11].definition = "Complete remission (Yes/No)"
* differential.element[11].min = 1
* differential.element[11].max = "1"
* differential.element[11].type.code = #CodeableConcept
* differential.element[12].id = "TreatmentSummary.diagnosis.frontLineTreatment.completeRemission.description"
* differential.element[12].path = "TreatmentSummary.diagnosis.frontLineTreatment.completeRemission.description"
* differential.element[12].short = "Textual description in case of no remission"
* differential.element[12].definition = "Textual description in case of no remission"
* differential.element[12].min = 0
* differential.element[12].max = "1"
* differential.element[12].type.code = #string
* differential.element[13].id = "TreatmentSummary.diagnosis.frontLineTreatment.isChemotherapy"
* differential.element[13].path = "TreatmentSummary.diagnosis.frontLineTreatment.isChemotherapy"
* differential.element[13].short = "Chemotherapy ?"
* differential.element[13].definition = "Chemotherapy ?"
* differential.element[13].min = 0
* differential.element[13].max = "1"
* differential.element[13].type.code = #CodeableConcept
* differential.element[14].id = "TreatmentSummary.diagnosis.frontLineTreatment.isStemCellTransplantation"
* differential.element[14].path = "TreatmentSummary.diagnosis.frontLineTreatment.isStemCellTransplantation"
* differential.element[14].short = "Stem Cell transplantation ?"
* differential.element[14].definition = "Stem Cell transplantation ?"
* differential.element[14].min = 0
* differential.element[14].max = "1"
* differential.element[14].type.code = #CodeableConcept
* differential.element[15].id = "TreatmentSummary.diagnosis.frontLineTreatment.isRadiotherapy"
* differential.element[15].path = "TreatmentSummary.diagnosis.frontLineTreatment.isRadiotherapy"
* differential.element[15].short = "Radiotherapy ?"
* differential.element[15].definition = "Radiotherapy ?"
* differential.element[15].min = 0
* differential.element[15].max = "1"
* differential.element[15].type.code = #CodeableConcept
* differential.element[16].id = "TreatmentSummary.diagnosis.frontLineTreatment.isMajorSurgery"
* differential.element[16].path = "TreatmentSummary.diagnosis.frontLineTreatment.isMajorSurgery"
* differential.element[16].short = "Major Surgery ?"
* differential.element[16].definition = "Major Surgery ?"
* differential.element[16].min = 0
* differential.element[16].max = "1"
* differential.element[16].type.code = #CodeableConcept
* differential.element[17].id = "TreatmentSummary.diagnosis.frontLineTreatment.isProgressionRelapseDuringFLT"
* differential.element[17].path = "TreatmentSummary.diagnosis.frontLineTreatment.isProgressionRelapseDuringFLT"
* differential.element[17].short = "Progression/relapse during frontline treatment ?"
* differential.element[17].definition = "Progression/relapse during frontline treatment ?"
* differential.element[17].min = 0
* differential.element[17].max = "1"
* differential.element[17].type.code = #CodeableConcept
* differential.element[18].id = "TreatmentSummary.diagnosis.frontLineTreatment.isProgressionRelapseAfterFLT"
* differential.element[18].path = "TreatmentSummary.diagnosis.frontLineTreatment.isProgressionRelapseAfterFLT"
* differential.element[18].short = "Progression/relapse after first elective end of treatment ?"
* differential.element[18].definition = "Progression/relapse after first elective end of treatment ?"
* differential.element[18].min = 0
* differential.element[18].max = "1"
* differential.element[18].type.code = #CodeableConcept
* differential.element[19].id = "TreatmentSummary.diagnosis.chemotherapy"
* differential.element[19].path = "TreatmentSummary.diagnosis.chemotherapy"
* differential.element[19].short = "Chemotherapy"
* differential.element[19].definition = "Chemotherapy"
* differential.element[19].min = 0
* differential.element[19].max = "*"
* differential.element[19].type.code = #http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Chemotherapy
* differential.element[20].id = "TreatmentSummary.diagnosis.stemCellTransplantation"
* differential.element[20].path = "TreatmentSummary.diagnosis.stemCellTransplantation"
* differential.element[20].short = "Stem Cell transplantation"
* differential.element[20].definition = "Stem Cell transplantation"
* differential.element[20].min = 0
* differential.element[20].max = "*"
* differential.element[20].type.code = #BackboneElement
* differential.element[21].id = "TreatmentSummary.diagnosis.radiotherapy"
* differential.element[21].path = "TreatmentSummary.diagnosis.radiotherapy"
* differential.element[21].short = "Radiotherapy"
* differential.element[21].definition = "Radiotherapy"
* differential.element[21].min = 0
* differential.element[21].max = "*"
* differential.element[21].type.code = #http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Radiotherapy-min
* differential.element[22].id = "TreatmentSummary.diagnosis.majorSurgery"
* differential.element[22].path = "TreatmentSummary.diagnosis.majorSurgery"
* differential.element[22].short = "Major Surgery"
* differential.element[22].definition = "Major Surgery"
* differential.element[22].min = 0
* differential.element[22].max = "*"
* differential.element[22].type.code = #BackboneElement
* differential.element[23].id = "TreatmentSummary.diagnosis.progressionRelapseDuringFLT"
* differential.element[23].path = "TreatmentSummary.diagnosis.progressionRelapseDuringFLT"
* differential.element[23].short = "Progression-Relapse during FLT"
* differential.element[23].definition = "Progression-Relapse during Front line treatment"
* differential.element[23].min = 0
* differential.element[23].max = "*"
* differential.element[23].type.code = #BackboneElement
* differential.element[24].id = "TreatmentSummary.diagnosis.otherInfo"
* differential.element[24].path = "TreatmentSummary.diagnosis.otherInfo"
* differential.element[24].short = "Other info and relevant events"
* differential.element[24].definition = "Other info and relevant events"
* differential.element[24].min = 0
* differential.element[24].max = "*"
* differential.element[24].type.code = #BackboneElement
* differential.element[25].id = "TreatmentSummary.diagnosis.medicalSuggestion"
* differential.element[25].path = "TreatmentSummary.diagnosis.medicalSuggestion"
* differential.element[25].short = "Medical suggestion"
* differential.element[25].definition = "Medical suggestion"
* differential.element[25].min = 0
* differential.element[25].max = "*"
* differential.element[25].type.code = #BackboneElement
* differential.element[26].id = "TreatmentSummary.diagnosis.progressionRelapseAfterEOT"
* differential.element[26].path = "TreatmentSummary.diagnosis.progressionRelapseAfterEOT"
* differential.element[26].short = "Progression-relapse after the End of Treatment"
* differential.element[26].definition = "Progression-relapse after the End of Treatment"
* differential.element[26].min = 0
* differential.element[26].max = "*"
* differential.element[26].type.code = #BackboneElement
* differential.element[27].id = "TreatmentSummary.diagnosis.otherConditions"
* differential.element[27].path = "TreatmentSummary.diagnosis.otherConditions"
* differential.element[27].short = "Other medical conditions, not cancer associated"
* differential.element[27].definition = "Please list here if the patient has or had other medical conditions not reported to be cancer-associated (e.g. diabetes, congenital cardiopathy, amputations, kidney transplant)"
* differential.element[27].min = 0
* differential.element[27].max = "*"
* differential.element[27].type.code = #string
