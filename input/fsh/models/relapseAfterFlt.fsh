Instance: RelapseAfterFLT
InstanceOf: StructureDefinition
Description: "Progression-Relapse during FLT
Marturity Level: 1"
Title: "Progression-Relapse during FLT"
Usage: #definition
* publisher = "PanCareSurPass project"
* status = #draft
* url = "http://hl7.eu/fhir/ig/pcsp/StructureDefinition/RelapseAfterFLT"
* name = "RelapseAfterFLT"
* title = "Progression-Relapse during FLT"
* status = #draft
* experimental = true
* description = "Progression-Relapse during FLT
Marturity Level: 1"
* version = "0.0.1"
* mapping[0].identity = "fhir"
* mapping[0].uri = "hl7.org/fhir/r4"
* mapping[0].name = "FHIR"
* kind = #logical
* abstract = true
* type = "RelapseAfterFLT"
* baseDefinition = "http://hl7.org/fhir/StructureDefinition/Element"
* derivation = #specialization
* differential.element[0].id = "RelapseAfterFLT"
* differential.element[0].path = "RelapseAfterFLT"
* differential.element[0].short = "Progression-Relapse after  FLT"
* differential.element[0].definition = "Progression-Relapse after  FLT"
* differential.element[0].min = 1
* differential.element[0].max = "1"
* differential.element[1].id = "RelapseAfterFLT.identifier"
* differential.element[1].path = "RelapseAfterFLT.identifier"
* differential.element[1].short = "Progression-relapse after FLT number"
* differential.element[1].definition = "Progressive number of progression/relapse (1=first; 2= second; 3 = third; ?) after the end of treatment.
In this field must be reported the ordinal number of the progression/relapse after the end of treatment."
* differential.element[1].min = 0
* differential.element[1].max = "1"
* differential.element[1].type.code = #Identifier


* differential.element[2].id = "RelapseAfterFLT.relatedDiagnosis"
* differential.element[2].path = "RelapseAfterFLT.relatedDiagnosis"
* differential.element[2].short = "Progressive number of diagnosis"
* differential.element[2].definition = "Progressive number of diagnosis (1=first; 2= second; 3 = third; ?).  
In this field must be reported the ordinal number of the tumor diagnosis in which progression/relapse ocuured during front line treatment."
* differential.element[2].min = 0
* differential.element[2].max = "1"
* differential.element[2].type.code = #Identifier


* differential.element[3].id = "RelapseAfterFLT.type"
* differential.element[3].path = "RelapseAfterFLT.type"
* differential.element[3].short = "relapse | progression"
* differential.element[3].definition = "Report here if a relapse or progression occurred after the elective end of therapies.
Please note that 'progressions' may occurr since in some cases (e.g. stage 3 unoperable residual neuroblastoma or residual CNS tumor) that were considered as 'non active' may progress
1 => Relapse
2 => Progression
-9922= > NK"
* differential.element[3].min = 0
* differential.element[3].max = "1"
* differential.element[3].type.code = #CodeableConcept


* differential.element[4].id = "RelapseAfterFLT.qualifier"
* differential.element[4].path = "RelapseAfterFLT.qualifier"
* differential.element[4].short = "local | distant | combined"
* differential.element[4].definition = "Report here the date (dd/mm/yyyy ) of the relapse/progression. If the date is unkown or partially missed insert the year at the best of your knowledge."
* differential.element[4].min = 0
* differential.element[4].max = "1"
* differential.element[4].type.code = #CodeableConcept


* differential.element[5].id = "RelapseAfterFLT.site"
* differential.element[5].path = "RelapseAfterFLT.site"
* differential.element[5].short = "If distant, site of metastases"
* differential.element[5].definition = "Please define if the relapse/progression was local, distant or combined.
"
* differential.element[5].min = 0
* differential.element[5].max = "1"
* differential.element[5].type.code = #string


* differential.element[6].id = "RelapseAfterFLT.followedProtocol"
* differential.element[6].path = "RelapseAfterFLT.followedProtocol"
* differential.element[6].short = "Salvage treatment"
* differential.element[6].definition = "The salvage treatment has been executed following ÿ"
* differential.element[6].min = 0
* differential.element[6].max = "*"
* differential.element[6].type.code = #BackboneElement


* differential.element[7].id = "RelapseAfterFLT.followedProtocol.type"
* differential.element[7].path = "RelapseAfterFLT.followedProtocol.type"
* differential.element[7].short = "type"
* differential.element[7].definition = "Specify here (using the available codes) if because of the relapse/progression the patient was treated according to a protocol/trial or other treatment plans

1 => A trial/protocol
2 => Personalized
3 => Guidelines
-9922 => NK "
* differential.element[7].min = 0
* differential.element[7].max = "1"
* differential.element[7].type.code = #CodeableConcept


* differential.element[8].id = "RelapseAfterFLT.followedProtocol.flt"
* differential.element[8].path = "RelapseAfterFLT.followedProtocol.flt"
* differential.element[8].short = "First line treatment trial/protocol"
* differential.element[8].definition = "The system automatic display the trial/protocol executed during front line treatment"
* differential.element[8].min = 0
* differential.element[8].max = "1"
* differential.element[8].type.code = #identifier


* differential.element[9].id = "RelapseAfterFLT.followedProtocol.protocolDescription"
* differential.element[9].path = "RelapseAfterFLT.followedProtocol.protocolDescription"
* differential.element[9].short = "If trial/protocol, specify which one ÿ"
* differential.element[9].definition = "Specify the salvage trial/protocol (s) that was (were) used.  Free text"
* differential.element[9].min = 0
* differential.element[9].max = "1"
* differential.element[9].type.code = #string


* differential.element[10].id = "RelapseAfterFLT.followedProtocol.arm"
* differential.element[10].path = "RelapseAfterFLT.followedProtocol.arm"
* differential.element[10].short = "Group/Arm/Randomization ÿ"
* differential.element[10].definition = "If the trial was randomized, please define randomization arm"
* differential.element[10].min = 0
* differential.element[10].max = "1"
* differential.element[10].type.code = #string


* differential.element[11].id = "RelapseAfterFLT.followedProtocol.personalizedDescription"
* differential.element[11].path = "RelapseAfterFLT.followedProtocol.personalizedDescription"
* differential.element[11].short = "If personalized, please specify
"
* differential.element[11].definition = "If a personalized treatment was used, please specify."
* differential.element[11].min = 0
* differential.element[11].max = "1"
* differential.element[11].type.code = #string


* differential.element[12].id = "RelapseAfterFLT.isChemotherapy"
* differential.element[12].path = "RelapseAfterFLT.isChemotherapy"
* differential.element[12].short = "Chemotherapy ÿ"
* differential.element[12].definition = "Please specify if the survivor received any type of chemotherapy before the first elective end of therapies.
Classic anticancer drugs, monoclonal antibodies , protein kinase inhibitors, and immunostimulants/suppressant are all included in the 'chemotherapy' category.  Details will be given in the appropriate section

1 => Yes
2 => No
-9922 => NK ÿ"
* differential.element[12].min = 0
* differential.element[12].max = "1"
* differential.element[12].type.code = #CodeableConcept


* differential.element[13].id = "RelapseAfterFLT.isStemCellTransplantation"
* differential.element[13].path = "RelapseAfterFLT.isStemCellTransplantation"
* differential.element[13].short = "Stem Cell transplantation ÿ"
* differential.element[13].definition = "Please specify if the survivor received any hematopoietic stem cell transplant. Details will be given in the appropriate section 
1 => Yes
2 => No
-9922 => NK ÿ"
* differential.element[13].min = 0
* differential.element[13].max = "1"
* differential.element[13].type.code = #CodeableConcept


* differential.element[14].id = "RelapseAfterFLT.isRadiotherapy"
* differential.element[14].path = "RelapseAfterFLT.isRadiotherapy"
* differential.element[14].short = "Radiotherapy ÿ"
* differential.element[14].definition = "Please specify if the survivor received any radiotherapeutic treatment. Details will be given in the appropriate section "
* differential.element[14].min = 0
* differential.element[14].max = "1"
* differential.element[14].type.code = #CodeableConcept


* differential.element[15].id = "RelapseAfterFLT.isMajorSurgery"
* differential.element[15].path = "RelapseAfterFLT.isMajorSurgery"
* differential.element[15].short = "Major Surgery ÿ"
* differential.element[15].definition = "Please specify if the survivor received any treatment related surgery.  Please consider only major surgeries either performed for diagnosis or treatment.  As for diagnostic surgeries please report only biopsies after craniotomy or abdominal laparoscopic biopsies. Details will be given in the appropriate section.
Surgeries given for other conditions not treatment related should be reported in the 'Diagnosis' form under 'Other medical conditions, NOT cancer associated'"
* differential.element[15].min = 0
* differential.element[15].max = "1"
* differential.element[15].type.code = #CodeableConcept


* differential.element[16].id = "RelapseAfterFLT.dateEOT"
* differential.element[16].path = "RelapseAfterFLT.dateEOT"
* differential.element[16].short = "Date of end of treatment ÿ"
* differential.element[16].definition = "This is the date of the second (or further) end of treatment after the first one. If the date is unkown or partially missed insert the year at the best of your knowledge."
* differential.element[16].min = 0
* differential.element[16].max = "1"
* differential.element[16].type.code = #dateTime



