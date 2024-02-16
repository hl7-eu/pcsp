RuleSet: enableIfYes ( linkid )
* enableWhen.operator = #=
* enableWhen.question = "{linkid}"
* enableWhen.answerCoding = $loinc#LA33-6 "YES"


Instance: Questionnaire
InstanceOf: Questionnaire
Usage: #example
* status = #draft
* name = "ROTSurPass"
* subjectType = #Patient
* description = """Prima scheda di follow up.
La compilazione della prima scheda ROT-Surpass dovrà avvenire contestualmente alla consegna del SurPass o comunque alla prima visita dopo la fine del trattamento (OT)."""
* contained[+] = YesNoVS
* contained[+] = GradeVS
* contained[+] = ConditionsVS


// * contained[+] = Canonical(YesNoVS)
* item[0]
  * linkId  = "811dfaad-bcaa-40ec-8675-3bd1ab4a5706"
  * prefix = "1"
  * type = #group
  * text = "Sindromi genetiche predisponenti o condizioni cliniche associate al tumore diagnosticate dopo il primo off therapy"
  * required = true
  * item[0]
    * linkId  =  "77355979-b496-4d8c-b374-9657052e2732"
    * prefix = "1.1"
    * type = #choice
    * text = "Sono state rilvate sindromi genetiche predisponenti o condizioni cliniche associate al tumore diagnosticate dopo il primo off therapy ?"
    * required = true
    * extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
    * extension.valueCodeableConcept = $questionnaire-item-control#radio-button
    * answerValueSet = Canonical(YesNoVS)
  * item[+]
    * prefix = "1.2"
    * linkId  =  "bea70d90-a056-45a8-878c-fd12298d999d"
    * type = #text
    * required = true
    * text = "Se si specificare"
    * insert enableIfYes ( 77355979-b496-4d8c-b374-9657052e2732 )
/*     * enableWhen.question = "77355979-b496-4d8c-b374-9657052e2732"
    * enableWhen.operator = #=
    * enableWhen.answerCoding = $loinc#LA33-6 "YES" */

* item[+]
  * linkId  =  "50a0a1d8-9242-4696-845f-99fc6d83a096"
  * prefix = "2"
  * type = #group
  * text = "Condizioni patologiche"
  * required = true
  * item[+]
    * linkId  =  "933460bc-08d7-4541-814d-755b3dee7aee"
    * type = #choice
    * text = "Dopo il primo off therapy il/la paziente ha sperimentato una o più condizioni patologica? "
    * required = true    
    * extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
    * extension.valueCodeableConcept = $questionnaire-item-control#radio-button
    * answerValueSet = Canonical(YesNoVS)
    * item[+]
      * linkId  =  "6ea0cebd-e8f8-4098-8b4f-75f3faabeef3"
      * type = #group
      * text = "Se sì, specificare:"      
      * required = true
      * insert enableIfYes ( 933460bc-08d7-4541-814d-755b3dee7aee )
/*       * enableWhen.question = "933460bc-08d7-4541-814d-755b3dee7aee"
      * enableWhen.operator = #=
      * enableWhen.answerCoding = $loinc#LA33-6 "YES" */
      * repeats = true
      * item[0]
        * linkId  =  "ab5618d2-169a-40a1-8f8e-5fb679d274b8"
        * type = #group
        * text = "Pregresso"
        * item[0]
          * linkId  =  "33c81c08-02f4-4472-97d1-2f26ec4ecd21"
          * type = #open-choice
          * text = "Condizione*§\n(Organo e Sistema automaticamente assegnati)"
          * required = false
          * answerValueSet = Canonical(ConditionsVS) // Change the value set
        * item[+]
          * linkId  =  "a1593167-53e5-4e19-a7c8-ab8ba4af6e92"
          * type = #open-choice
          * text = "Grading all’ultima visita"
          * required = false
          * answerValueSet = Canonical(GradeVS) // Change the value set
        * required = false
      * item[+]
        * linkId  =  "8df0c5fc-92a7-44a9-8ef2-96fd9928ef19"
        * type = #group
        * text = "Dati attuali"
        * item[0]
          * linkId  =  "0a504e0a-0656-4ccb-9470-4a4397005ff5"
          * type = #open-choice
          * text = "Evoluzione: risolta ?"
          * required = false
          * answerValueSet = Canonical(YesNoVS)
        * item[+]
          * linkId  =  "6c18e1ed-97bd-4ac6-82ca-de48ed51ee64"
          * type = #date
          * text = "Se si, Data*§"
          * required = false
          * insert enableIfYes ( 0a504e0a-0656-4ccb-9470-4a4397005ff5 )
        * item[+]
          * linkId  =  "8ca3759a-1bed-49d6-aed2-0f504fb0e477"
          * type = #open-choice
          * text = "Se MODIFICATO, \nNuovo Grading alla visita\n\n"
          * required = false
          * answerValueSet = Canonical(GradeVS)
          * insert enableIfYes ( 0a504e0a-0656-4ccb-9470-4a4397005ff5 )          
        * item[+]
          * linkId  =  "30f1dc23-7c64-4a07-c54f-421ef8fea9c6"
          * type = #string
          * text = "Dettagli§ (con possibilità di caricare dei documenti significativi)"
          * item[+]
            * linkId  =  "8894aec8-e592-45c3-8921-1a64e60c0240"
            * type = #attachment
            * text = "Attachments"
            * extension.url = "http://hl7.org/fhir/StructureDefinition/maxSize"
            * extension.valueDecimal = 5
            * required = false
            * repeats = true
          * required = false
        * item[+]
          * linkId  =  "6cf8594f-2323-4986-d3ef-a337524a27bf"
          * type = #date
          * text = "Prossimo controllo pianificato per§"
          * required = false
        * required = false
        * insert enableIfYes ( 933460bc-08d7-4541-814d-755b3dee7aee )
  * required = false
* item[+]
  * linkId  =  "b665bf51-a1ab-4ccc-89b4-41a731b6b488"
  * type = #string
  * text = "Note"
  * item[+]
    * linkId  =  "5ad820b7-cad6-490a-cbc4-a88429287cc0"
    * type = #attachment
    * text = "Possibilità di caricare "
    * extension.url = "http://hl7.org/fhir/StructureDefinition/maxSize"
    * extension.valueDecimal = 5
    * required = false
    * repeats = true
  * required = false