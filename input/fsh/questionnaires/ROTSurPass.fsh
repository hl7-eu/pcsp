RuleSet: enableIf ( linkid, value )
* enableWhen[+].operator = #=
* enableWhen[=].question = "{linkid}"
* enableWhen[=].answerString = "{value}"

RuleSet: enableIfYes ( linkid )
* enableWhen[+].operator = #=
* enableWhen[=].question = "{linkid}"
* enableWhen[=].answerCoding = $loinc#LA33-6 "YES"

RuleSet: enableIfNo ( linkid )
* enableWhen[+].operator = #=
* enableWhen[=].question = "{linkid}"
* enableWhen[=].answerCoding = $loinc#LA32-8 "NO"

RuleSet: IfTrueSpecify ( linkid, block )
* item[+]
  * linkId  =  "sepcify-{block}"
  * type = #text
  * required = true
  * text = "Se sì, specificare"
  * insert enableIfYes ( {linkid} )

RuleSet: NewConditionGroup ( linkid, block )
* item[+]
  * linkId  =  "group-condition-{block}"
  * type = #group
  * text = "Condizioni patologiche"
  * required = true
  * repeats = true
  * extension[$questionnaire-maxOccurs].valueInteger = 15
  * insert enableIfYes ( {linkid} )   
  * item[+]
    * linkId  =  "condition-{block}"
    * type = #choice
    * text = "Condizione"
    * required = true
    * answerValueSet = Canonical( ConditionsVS )
  * item[+]
    * linkId  =  "condition-note-{block}"
    * type = #text
    * readOnly = true
  * insert specifyConditionQuestion ( condition-other-{block}, {block} )
  * item[+]
    * linkId  =  "appearance-date-{block}"
    * type = #date
    * text = "Data comparsa"
    * required = true
  * item[+]
    * linkId  =  "condition-grading-{block}"
    * type = #choice
    * text = "Grading m-CTCAE alla comparsa/ultima visita"
    * required = true
    * answerValueSet = Canonical( GradeVS )
  * item[+]
    * linkId  = "condition-evolution-{block}"
    * type = #choice
    * text = "Evoluzione"
    * required = true
    * extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
    * extension.valueCodeableConcept = $questionnaire-item-control#radio-button
    * answerValueSet = Canonical(YesNoVS)
  * item[+]
    * linkId  =  "details-{block}"
    * type = #text
    * text = "Dettagli"
  * item[+]
    * linkId  =  "next-check-{block}"
    * type = #text
    * text = "Prossimo controllo planificato per"


RuleSet: EvolveConditionGroup ( linkid, block )
* item[+]
  * linkId  =  "group-condition-{block}"
  * type = #group
  * text = "Condizioni patologiche"
  * required = true
  * repeats = true
  * extension[$questionnaire-maxOccurs].valueInteger = 15
  * insert enableIfYes ( {linkid} )   
  * item[+]
    * linkId  =  "condition-{block}"
    * type = #choice
    * text = "Condizione"
    * required = true
    * answerValueSet = Canonical( ConditionsVS )
  * item[+]
    * linkId  =  "condition-note-{block}"
    * type = #text
    * readOnly = true
  * insert specifyConditionQuestion ( condition-other-{block}, {block} )
  * item[+]
    * linkId  =  "appearance-date-{block}"
    * type = #date
    * text = "Data comparsa"
    * required = true
  * item[+]
    * linkId  =  "condition-grading-{block}"
    * type = #choice
    * text = "Grading m-CTCAE alla comparsa/ultima visita"
    * required = true
    * answerValueSet = Canonical( GradeVS )
  * item[+]
    * linkId  = "condition-evolution-{block}"
    * type = #choice
    * text = "Evoluzione"
    * required = true
    * extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
    * extension.valueCodeableConcept = $questionnaire-item-control#radio-button
    * answerOption[+].valueString = "No, Invariata"
    * answerOption[+].valueString = "Si, Modificata"
    * answerOption[+].valueString = "Si, Risolta"
  * item[+]
    * linkId  =  "resolution-date-{block}"
    * type = #date
    * text = "Se sì, Data"
    * required = true
    * enableBehavior = #any
    * insert enableIf( condition-evolution-{block}, [[Si, Modificata]])
    * insert enableIf( condition-evolution-{block}, [[Si, Risolta]])
  * item[+]
    * linkId  =  "new-condition-grading-{block}"
    * type = #choice
    * text = "Se Modificata, Nuovo Grading alla visita m-CTCAE"
    * required = true
    * answerValueSet = Canonical( GradeVS )
    * insert enableIf( condition-evolution-{block}, [[Si, Modificata]])
  * item[+]
    * linkId  =  "details-{block}"
    * type = #text
    * text = "Dettagli"
  * item[+]
    * linkId  =  "next-check-{block}"
    * type = #text
    * text = "Prossimo controllo planificato per"

RuleSet: specifyConditionQuestion( linkId, block ) 
* item[+]
  * linkId  =  "{linkId}"
  * type = #text
  * text = "Se altro, specificare"
  * required = true
  * readOnly = false
  * enableBehavior = #any
  * enableWhen[+]
    * question = "condition-{block}"
    * operator = #=
    * answerCoding = http://hl7.eu/fhir/ig/pcsp/CodeSystem/ConditionsCS#1001,99
  * enableWhen[+]
    * question = "condition-{block}"
    * operator = #=
    * answerCoding = http://hl7.eu/fhir/ig/pcsp/CodeSystem/ConditionsCS#2001,99
  * enableWhen[+]
    * question = "condition-{block}"
    * operator = #=
    * answerCoding = http://hl7.eu/fhir/ig/pcsp/CodeSystem/ConditionsCS#2002,99
  * enableWhen[+]
    * question = "condition-{block}"
    * operator = #=
    * answerCoding = http://hl7.eu/fhir/ig/pcsp/CodeSystem/ConditionsCS#2003,99
  * enableWhen[+]
    * question = "condition-{block}"
    * operator = #=
    * answerCoding = http://hl7.eu/fhir/ig/pcsp/CodeSystem/ConditionsCS#3001,99
  * enableWhen[+]
    * question = "condition-{block}"
    * operator = #=
    * answerCoding = http://hl7.eu/fhir/ig/pcsp/CodeSystem/ConditionsCS#4001,99
  * enableWhen[+]
    * question = "condition-{block}"
    * operator = #=
    * answerCoding = http://hl7.eu/fhir/ig/pcsp/CodeSystem/ConditionsCS#4002,99
  * enableWhen[+]
    * question = "condition-{block}"
    * operator = #=
    * answerCoding = http://hl7.eu/fhir/ig/pcsp/CodeSystem/ConditionsCS#4003,99
  * enableWhen[+]
    * question = "condition-{block}"
    * operator = #=
    * answerCoding = http://hl7.eu/fhir/ig/pcsp/CodeSystem/ConditionsCS#5001,99
  * enableWhen[+]
    * question = "condition-{block}"
    * operator = #=
    * answerCoding = http://hl7.eu/fhir/ig/pcsp/CodeSystem/ConditionsCS#5002,99
  * enableWhen[+]
    * question = "condition-{block}"
    * operator = #=
    * answerCoding = http://hl7.eu/fhir/ig/pcsp/CodeSystem/ConditionsCS#5003,99
  * enableWhen[+]
    * question = "condition-{block}"
    * operator = #=
    * answerCoding = http://hl7.eu/fhir/ig/pcsp/CodeSystem/ConditionsCS#6001,99
  * enableWhen[+]
    * question = "condition-{block}"
    * operator = #=
    * answerCoding = http://hl7.eu/fhir/ig/pcsp/CodeSystem/ConditionsCS#6002,99
  * enableWhen[+]
    * question = "condition-{block}"
    * operator = #=
    * answerCoding = http://hl7.eu/fhir/ig/pcsp/CodeSystem/ConditionsCS#6003,99
  * enableWhen[+]
    * question = "condition-{block}"
    * operator = #=
    * answerCoding = http://hl7.eu/fhir/ig/pcsp/CodeSystem/ConditionsCS#6004,99
  * enableWhen[+]
    * question = "condition-{block}"
    * operator = #=
    * answerCoding = http://hl7.eu/fhir/ig/pcsp/CodeSystem/ConditionsCS#6005,99
  * enableWhen[+]
    * question = "condition-{block}"
    * operator = #=
    * answerCoding = http://hl7.eu/fhir/ig/pcsp/CodeSystem/ConditionsCS#6006,99
  * enableWhen[+]
    * question = "condition-{block}"
    * operator = #=
    * answerCoding = http://hl7.eu/fhir/ig/pcsp/CodeSystem/ConditionsCS#7001,99
  * enableWhen[+]
    * question = "condition-{block}"
    * operator = #=
    * answerCoding = http://hl7.eu/fhir/ig/pcsp/CodeSystem/ConditionsCS#7002,99
  * enableWhen[+]
    * question = "condition-{block}"
    * operator = #=
    * answerCoding = http://hl7.eu/fhir/ig/pcsp/CodeSystem/ConditionsCS#7003,99
  * enableWhen[+]
    * question = "condition-{block}"
    * operator = #=
    * answerCoding = http://hl7.eu/fhir/ig/pcsp/CodeSystem/ConditionsCS#8001,99
  * enableWhen[+]
    * question = "condition-{block}"
    * operator = #=
    * answerCoding = http://hl7.eu/fhir/ig/pcsp/CodeSystem/ConditionsCS#8002,99
  * enableWhen[+]
    * question = "condition-{block}"
    * operator = #=
    * answerCoding = http://hl7.eu/fhir/ig/pcsp/CodeSystem/ConditionsCS#8003,99
  * enableWhen[+]
    * question = "condition-{block}"
    * operator = #=
    * answerCoding = http://hl7.eu/fhir/ig/pcsp/CodeSystem/ConditionsCS#8004,99
  * enableWhen[+]
    * question = "condition-{block}"
    * operator = #=
    * answerCoding = http://hl7.eu/fhir/ig/pcsp/CodeSystem/ConditionsCS#8005,99
  * enableWhen[+]
    * question = "condition-{block}"
    * operator = #=
    * answerCoding = http://hl7.eu/fhir/ig/pcsp/CodeSystem/ConditionsCS#9001,99
  * enableWhen[+]
    * question = "condition-{block}"
    * operator = #=
    * answerCoding = http://hl7.eu/fhir/ig/pcsp/CodeSystem/ConditionsCS#9002,99
  * enableWhen[+]
    * question = "condition-{block}"
    * operator = #=
    * answerCoding = http://hl7.eu/fhir/ig/pcsp/CodeSystem/ConditionsCS#10001,99
  * enableWhen[+]
    * question = "condition-{block}"
    * operator = #=
    * answerCoding = http://hl7.eu/fhir/ig/pcsp/CodeSystem/ConditionsCS#10002,99
  * enableWhen[+]
    * question = "condition-{block}"
    * operator = #=
    * answerCoding = http://hl7.eu/fhir/ig/pcsp/CodeSystem/ConditionsCS#11001,99
  * enableWhen[+]
    * question = "condition-{block}"
    * operator = #=
    * answerCoding = http://hl7.eu/fhir/ig/pcsp/CodeSystem/ConditionsCS#11002,99
  * enableWhen[+]
    * question = "condition-{block}"
    * operator = #=
    * answerCoding = http://hl7.eu/fhir/ig/pcsp/CodeSystem/ConditionsCS#12001,99
  * enableWhen[+]
    * question = "condition-{block}"
    * operator = #=
    * answerCoding = http://hl7.eu/fhir/ig/pcsp/CodeSystem/ConditionsCS#13001,99
  * enableWhen[+]
    * question = "condition-{block}"
    * operator = #=
    * answerCoding = http://hl7.eu/fhir/ig/pcsp/CodeSystem/ConditionsCS#13002,99
  * enableWhen[+]
    * question = "condition-{block}"
    * operator = #=
    * answerCoding = http://hl7.eu/fhir/ig/pcsp/CodeSystem/ConditionsCS#14001,99
  * enableWhen[+]
    * question = "condition-{block}"
    * operator = #=
    * answerCoding = http://hl7.eu/fhir/ig/pcsp/CodeSystem/ConditionsCS#15001,99
  * enableWhen[+]
    * question = "condition-{block}"
    * operator = #=
    * answerCoding = http://hl7.eu/fhir/ig/pcsp/CodeSystem/ConditionsCS#15002,99 
  * enableWhen[+]
    * question = "condition-{block}"
    * operator = #=
    * answerCoding = http://hl7.eu/fhir/ig/pcsp/CodeSystem/ConditionsCS#15003,99
  * enableWhen[+]
    * question = "condition-{block}"
    * operator = #=
    * answerCoding = http://hl7.eu/fhir/ig/pcsp/CodeSystem/ConditionsCS#15004,99
  * enableWhen[+]
    * question = "condition-{block}"
    * operator = #=
    * answerCoding = http://hl7.eu/fhir/ig/pcsp/CodeSystem/ConditionsCS#16001,99
  * enableWhen[+]
    * question = "condition-{block}"
    * operator = #=
    * answerCoding = http://hl7.eu/fhir/ig/pcsp/CodeSystem/ConditionsCS#16002,99
  * enableWhen[+]
    * question = "condition-{block}"
    * operator = #=
    * answerCoding = http://hl7.eu/fhir/ig/pcsp/CodeSystem/ConditionsCS#16003,99
  * enableWhen[+]
    * question = "condition-{block}"
    * operator = #=
    * answerCoding = http://hl7.eu/fhir/ig/pcsp/CodeSystem/ConditionsCS#16004,99
  * enableWhen[+]
    * question = "condition-{block}"
    * operator = #=
    * answerCoding = http://hl7.eu/fhir/ig/pcsp/CodeSystem/ConditionsCS#17001,99
  * enableWhen[+]
    * question = "condition-{block}"
    * operator = #=
    * answerCoding = http://hl7.eu/fhir/ig/pcsp/CodeSystem/ConditionsCS#17002,99

Instance: ROTSurPass
InstanceOf: Questionnaire
Usage: #definition
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
  * text = "Prima visita?"
  * required = true
  * extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
  * extension.valueCodeableConcept = $questionnaire-item-control#radio-button
  * answerValueSet = Canonical(YesNoVS)
  // ====================
  // First Visit begin 
  // ====================

* item[+]
  * linkId  = "consent"
  * type = #choice
  * text = "Consenso informato a partecipare al ROT-SurPass"
  * required = true
  * extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
  * extension.valueCodeableConcept = $questionnaire-item-control#radio-button
  * answerValueSet = Canonical(YesNoVS)
  * insert enableIfYes ( first-visit )

* item[+]
  * linkId  =  "visit-date"
  * type = #date
  * text = "Data della visita"
  * required = true
  * insert enableIfYes ( first-visit )

* item[+]
  * linkId  = "new-cancer-after-off-therapy"
  * type = #choice
  * text = "Sindromi genetiche predisponenti o condizioni cliniche associate al tumore diagnosticate dopo il primo off therapy"
  * insert enableIfYes ( first-visit )
  // Enable a text question for details 
  * insert IfTrueSpecify ( new-cancer-after-off-therapy, new-cancer-txt-1 )

* item[+]
  * linkId  = "other-clinical"
  * type = #choice
  * text = "Altri quadri clinci, non associati al tumore al momento della diognosi"
  * insert enableIfYes ( first-visit )
  // Enable a text question for details 
  * insert IfTrueSpecify ( other-clinical, other-clinical-txt-1 )


* item[+]
  * linkId  = "clinical-condition-incidence"
  * type = #text
  * text = "Condizioni cliniche potenzialmente associate ad un aumento dell'incidenza del cancro"  
  * required = true
  * insert enableIfYes ( first-visit )

* item[+]
  * linkId  =  "new-condition-after-off-therapy"
  * type = #choice
  * text = "Dopo il primo off therapy il/la paziente  ha sperimentato una o più condizioni patologica"
  * required = true
  * extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
  * extension.valueCodeableConcept = $questionnaire-item-control#radio-button
  * answerValueSet = Canonical(YesNoVS)
  * insert enableIfYes ( first-visit )
  //Insert Group for conditions
  * insert NewConditionGroup ( new-condition-after-off-therapy, 1)


  // ====================
  // NOT First Visit begin 
  // ====================

* item[+]
  * linkId  =  "condition-changed"
  * type = #choice
  * text = "Le condizioni patologiche ancora presenti (non risolte) alla visita precedente si sono risolte o modificate di grado?"    
  * required = true
  * extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
  * extension.valueCodeableConcept = $questionnaire-item-control#radio-button
  * answerValueSet = Canonical(YesNoVS)
  * insert enableIfNo ( first-visit )
  * insert EvolveConditionGroup ( condition-changed, 2 )

* item[+]
  * linkId  = "new-cancer-after-last-visit"
  * type = #choice
  * text = "Sindromi genetiche predisponenti o condizioni cliniche associate al tumore diagnosticate dall’ultima visita?"  
  * insert enableIfNo ( first-visit )
  * answerValueSet = Canonical(YesNoVS)
  // This group is activated only if this choice is true
  * insert NewConditionGroup ( new-cancer-after-last-visit, 3)

// COMMON

* item[+]
  * linkId  =  "notes"
  * type = #string
  * text = "Note"
  * required = false
* item[+]
  * linkId  =  "notes-attachments"
  * type = #attachment
  * text = "Documenti relativi ad esami strumentali di laboratorio significativi"
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