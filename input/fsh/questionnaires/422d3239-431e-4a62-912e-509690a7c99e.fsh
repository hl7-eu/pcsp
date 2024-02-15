Instance: 422d3239-431e-4a62-912e-509690a7c99e
InstanceOf: Questionnaire
Usage: #example
* status = #draft
* publisher = "NHN"
* subjectType = #Patient
* contained[0] = YesNoVS
* contained[+] = YesNoVS
* item[0].linkId = "811dfaad-bcaa-40ec-8675-3bd1ab4a5706"
* item[=].type = #group
* item[=].text = "Sindromi genetiche predisponenti o condizioni cliniche associate al tumore diagnosticate dopo il primo off therapy"
/* * item[=].code[0] = $loinc#LA33-6 "YES"
* item[=].code[=].id = "30ba7e4a-179c-46e0-a068-5a1d82d8fba0"
* item[=].code[+] = $loinc#LA32-8 "NO"
* item[=].code[=].id = "1476f2fa-22b5-4780-fc03-774191deecf7"*/
* item[=].item[0].linkId = "77355979-b496-4d8c-b374-9657052e2732" 
* item[=].item[=].type = #choice
* item[=].item[=].text = "Sono state rilvate sindromi genetiche predisponenti o condizioni cliniche associate al tumore diagnosticate dopo il primo off therapy ?"
* item[=].item[=].required = false
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#radio-button
* item[=].item[=].answerValueSet = "#YesNoVS"
* item[=].item[+].linkId = "bea70d90-a056-45a8-878c-fd12298d999d"
* item[=].item[=].type = #text
* item[=].item[=].required = false
* item[=].item[=].enableWhen.question = "77355979-b496-4d8c-b374-9657052e2732"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding = $loinc#LA33-6 "YES"
* item[=].item[=].text = "Se si specificare"
* item[=].required = false
* item[+].linkId = "50a0a1d8-9242-4696-845f-99fc6d83a096"
* item[=].type = #group
* item[=].text = "Condizioni patologiche"
* item[=].item.linkId = "933460bc-08d7-4541-814d-755b3dee7aee"
* item[=].item.type = #choice
* item[=].item.text = "Dopo il primo off therapy il/la paziente  ha sperimentato una o più condizioni patologica? "
* item[=].item.item.linkId = "6ea0cebd-e8f8-4098-8b4f-75f3faabeef3"
* item[=].item.item.type = #group
* item[=].item.item.text = "se sì, specificare:"
* item[=].item.item.item[0].linkId = "ab5618d2-169a-40a1-8f8e-5fb679d274b8"
* item[=].item.item.item[=].type = #group
* item[=].item.item.item[=].text = "Pregresso"
* item[=].item.item.item[=].item[0].linkId = "33c81c08-02f4-4472-97d1-2f26ec4ecd21"
* item[=].item.item.item[=].item[=].type = #open-choice
* item[=].item.item.item[=].item[=].text = "Condizione*§\n(Organo e Sistema automaticamente assegnati)"
* item[=].item.item.item[=].item[=].required = false
* item[=].item.item.item[=].item[=].answerValueSet = "#9523"
* item[=].item.item.item[=].item[+].linkId = "a1593167-53e5-4e19-a7c8-ab8ba4af6e92"
* item[=].item.item.item[=].item[=].type = #open-choice
* item[=].item.item.item[=].item[=].text = "Grading all’ultima visita"
* item[=].item.item.item[=].item[=].required = false
* item[=].item.item.item[=].item[=].answerValueSet = "#9523"
* item[=].item.item.item[=].required = false
* item[=].item.item.item[+].linkId = "8df0c5fc-92a7-44a9-8ef2-96fd9928ef19"
* item[=].item.item.item[=].type = #group
* item[=].item.item.item[=].text = "Dati attuali"
* item[=].item.item.item[=].item[0].linkId = "0a504e0a-0656-4ccb-9470-4a4397005ff5"
* item[=].item.item.item[=].item[=].type = #open-choice
* item[=].item.item.item[=].item[=].text = "Evoluzione§*"
* item[=].item.item.item[=].item[=].required = false
* item[=].item.item.item[=].item[=].answerValueSet = "#9523"
* item[=].item.item.item[=].item[+].linkId = "6c18e1ed-97bd-4ac6-82ca-de48ed51ee64"
* item[=].item.item.item[=].item[=].type = #open-choice
* item[=].item.item.item[=].item[=].text = "Se si, Data*§\n"
* item[=].item.item.item[=].item[=].required = false
* item[=].item.item.item[=].item[=].answerValueSet = "#9523"
* item[=].item.item.item[=].item[=].enableWhen.question = "0a504e0a-0656-4ccb-9470-4a4397005ff5"
* item[=].item.item.item[=].item[=].enableWhen.operator = #=
* item[=].item.item.item[=].item[=].enableWhen.answerCoding = urn:oid:2.16.578.1.12.4.1.9523#1
* item[=].item.item.item[=].item[+].linkId = "8ca3759a-1bed-49d6-aed2-0f504fb0e477"
* item[=].item.item.item[=].item[=].type = #open-choice
* item[=].item.item.item[=].item[=].text = "Se MODIFICATO, \nNuovo Grading alla visita\n\n"
* item[=].item.item.item[=].item[=].required = false
* item[=].item.item.item[=].item[=].answerValueSet = "#9523"
* item[=].item.item.item[=].item[=].enableWhen.question = "0a504e0a-0656-4ccb-9470-4a4397005ff5"
* item[=].item.item.item[=].item[=].enableWhen.operator = #=
* item[=].item.item.item[=].item[=].enableWhen.answerCoding = urn:oid:2.16.578.1.12.4.1.9523#1
* item[=].item.item.item[=].item[+].linkId = "30f1dc23-7c64-4a07-c54f-421ef8fea9c6"
* item[=].item.item.item[=].item[=].type = #string
* item[=].item.item.item[=].item[=].text = "Dettagli§ (con possibilità di caricare dei documenti significativi)"
* item[=].item.item.item[=].item[=].item.linkId = "8894aec8-e592-45c3-8921-1a64e60c0240"
* item[=].item.item.item[=].item[=].item.type = #attachment
* item[=].item.item.item[=].item[=].item.text = "Attachments"
* item[=].item.item.item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/maxSize"
* item[=].item.item.item[=].item[=].item.extension.valueDecimal = 5
* item[=].item.item.item[=].item[=].item.required = false
* item[=].item.item.item[=].item[=].item.repeats = true
* item[=].item.item.item[=].item[=].required = false
* item[=].item.item.item[=].item[+].linkId = "6cf8594f-2323-4986-d3ef-a337524a27bf"
* item[=].item.item.item[=].item[=].type = #date
* item[=].item.item.item[=].item[=].text = "Prossimo controllo pianificato per§"
* item[=].item.item.item[=].item[=].required = false
* item[=].item.item.item[=].required = false
* item[=].item.item.item[=].enableWhen.question = "933460bc-08d7-4541-814d-755b3dee7aee"
* item[=].item.item.item[=].enableWhen.operator = #=
* item[=].item.item.item[=].enableWhen.answerCoding = urn:oid:2.16.578.1.12.4.1.1101#1
* item[=].item.item.required = false
* item[=].item.item.enableWhen.question = "933460bc-08d7-4541-814d-755b3dee7aee"
* item[=].item.item.enableWhen.operator = #=
* item[=].item.item.enableWhen.answerCoding = urn:oid:2.16.578.1.12.4.1.1101#1
* item[=].item.item.repeats = true
* item[=].item.required = false
* item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#radio-button
* item[=].item.answerValueSet = "#1101"
* item[=].required = false
* item[+].linkId = "b665bf51-a1ab-4ccc-89b4-41a731b6b488"
* item[=].type = #string
* item[=].text = "Note"
* item[=].item.linkId = "5ad820b7-cad6-490a-cbc4-a88429287cc0"
* item[=].item.type = #attachment
* item[=].item.text = "Possibilità di caricare "
* item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/maxSize"
* item[=].item.extension.valueDecimal = 5
* item[=].item.required = false
* item[=].item.repeats = true
* item[=].required = false