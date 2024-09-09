RuleSet: enableIfYes ( linkid )
* enableWhen.operator = #=
* enableWhen.question = "{linkid}"
* enableWhen.answerCoding = $loinc#LA33-6 "YES"

RuleSet: enableIfNo ( linkid )
* enableWhen.operator = #=
* enableWhen.question = "{linkid}"
* enableWhen.answerCoding = $loinc#LA32-8 "NO"

RuleSet: NewCancerTxt ( linkid, block )
* item[+]
  * linkId  =  "new-cancer-txt-{block}"
  * type = #text
  * required = true
  * text = "Se si specificare"
  * insert enableIfYes ( {linkid} )

RuleSet: NewConditionsTxt ( linkid, block )
* item[+]
  * linkId  =  "new-condition-txt-{block}"
  * type = #text
  * required = true
  * text = "Se si specificare"
  * insert enableIfYes ( {linkid} )


RuleSet: ROTSurPassBody ( linkid, block )
* item[+]
  * linkId  =  "group-condition-{block}"
  * prefix = "3"
  * type = #group
  // * text = "Condizioni patologiche"
  * required = true
  * repeats = true
  * extension[$questionnaire-maxOccurs].valueInteger = 20
  * insert enableIfYes ( {linkid} )   
  * item[+]
    * linkId  =  "group-previous-{block}"
    * type = #group
    * text = "Pregresso"
    * required = true
    * item[+]
      * linkId  =  "condition-{block}"
      * type = #open-choice
      * text = "Condizione\n(Organo e Sistema automaticamente assegnati)"
      * required = true
      * answerValueSet = Canonical(ConditionsVS) // Change the value set
    * item[+]
      * linkId  =  "old-grading-{block}"
      * type = #choice
      * text = "Grading all’ultima visita"
      * required = true
      * answerValueSet = Canonical(GradeVS) // Change the value set
  * item[+]
    * linkId  =  "group-current-{block}"
    * type = #group
    * text = "Dati attuali"
    * item[+]
      * linkId  =  "condition-resolved-{block}"
      * type = #choice
      * text = "Evoluzione: risolta ?"
      * required = true
      * answerValueSet = Canonical(YesNoVS)
    * item[+]
      * linkId  =  "resolution-date-{block}"
      * type = #date
      * text = "Se si, Data*§"
      * required = true
      * insert enableIfYes ( condition-resolved-{block} )
    * item[+]
      * linkId  =  "new-grading-{block}"
      * type = #choice
      * text = "Nuovo Grading alla visita"
      * required = true
      * answerValueSet = Canonical(GradeVS)          
    * item[+]
      * linkId  =  "details-{block}"
      * type = #string
      * text = "Dettagli§ (con possibilità di caricare dei documenti significativi)"
      * item[+]
        * linkId  =  "details-attachments-{block}"
        * type = #attachment
        * text = "Attachments"
        * extension.url = "http://hl7.org/fhir/StructureDefinition/maxSize"
        * extension.valueDecimal = 5
        * required = false
        * repeats = true
    * item[+]
      * linkId  =  "next-control-{block}"
      * type = #date
      * text = "Prossimo controllo pianificato per§"
      * required = false

Instance: ROTSurPass
InstanceOf: Questionnaire
Usage: #example
* status = #draft
* name = "ROTSurPass"
* subjectType = #Patient
* description = """Scheda di follow up.
La compilazione della prima scheda ROT-Surpass dovrà avvenire contestualmente alla consegna del SurPass o comunque alla prima visita dopo la fine del trattamento (OT)."""

* contained[+] = YesNoVS
/* * contained[+] = GradeVS
* contained[+] = ConditionsVS */

* item[+]
  * linkId  = "first-visit"
  * type = #choice
  * text = "Prima visita ?"
  * required = true
  * extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
  * extension.valueCodeableConcept = $questionnaire-item-control#radio-button
  * answerValueSet = Canonical(YesNoVS)
  // ====================
  // First Visit begin 
  // ====================
* item[+]
  * linkId  = "new-cancer-after-off-therapy"
  * prefix = "1"
  * type = #choice
  * text = "Sindromi genetiche predisponenti o condizioni cliniche associate al tumore diagnosticate dopo il primo off therapy?"
  * insert enableIfYes ( first-visit)
  // This group is activated only if this choice is true
  * insert NewCancerTxt ( new-cancer-after-off-therapy, 1 )

* item[+]
  * linkId  =  "new-condition-after-off-therapy"
  * prefix = "2"
  * type = #choice
  * text = "Dopo il primo off therapy il/la paziente  ha sperimentato una o più condizioni patologica?"
  * required = true
  * extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
  * extension.valueCodeableConcept = $questionnaire-item-control#radio-button
  * answerValueSet = Canonical(YesNoVS)
  * insert enableIfYes ( first-visit)
  * insert NewConditionsTxt ( new-condition-after-off-therapy, 1 )
  * insert ROTSurPassBody ( new-condition-after-off-therapy, 1)


  // ====================
  // NOT First Visit begin 
  // ====================

* item[+]
  * linkId  = "new-cancer-after-last-visit"
  * prefix = "1"
  * type = #choice
  * text = "Sindromi genetiche predisponenti o condizioni cliniche associate al tumore diagnosticate dall’ultima visita?"  
  * insert enableIfNo ( first-visit )
  // This group is activated only if this choice is true
  * insert NewCancerTxt ( new-cancer-after-last-visit, 2 )

* item[+]
  * linkId  = "resolved-conditions"
  // * prefix = ""
  * type = #text
  * text = "Condizioni cliniche risolte"  
  * insert enableIfNo ( first-visit )
  * repeats = true

* item[+]
  * linkId  =  "condition-changed"
  * prefix = "2"
  * type = #choice
  * text = "Le condizioni patologiche ancora presenti (non risolte) alla visita precedente si sono risolte o modificate di grado?"    
  * required = true
  * extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
  * extension.valueCodeableConcept = $questionnaire-item-control#radio-button
  * answerValueSet = Canonical(YesNoVS)
  * insert enableIfNo ( first-visit )
  * insert NewConditionsTxt ( condition-changed,2 )
  * insert ROTSurPassBody ( condition-changed, 2 )

// COMMON

* item[+]
  * linkId  =  "notes"
  * type = #string
  * text = "Note"
  * required = false
  * item[+]
    * linkId  =  "notes-attachments"
    * type = #attachment
    * text = "Possibilità di caricare"
    * extension.url = "http://hl7.org/fhir/StructureDefinition/maxSize"
    * extension.valueDecimal = 5
    * required = false
    * repeats = true


//==================================================
// IN LINE VALUE SETS
//============================================

Instance: YesNoVS
InstanceOf: ValueSet
Title: "Yes/No Value Set"
Description: "Yes/No Value Set"
Usage: #inline

* experimental = false
* status = #draft

* compose.include
  * system = $loinc
  * concept[+]
    * code = #LA32-8
    * display = "NO"
  * concept[+]
    * code = #LA33-6
    * display = "YES"