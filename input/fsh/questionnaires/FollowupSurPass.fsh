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
  //* text = "Se sì, specificare"
  * text = "If yes, specify"
  * insert enableIfYes ( {linkid} )

RuleSet: NewConditionGroup ( linkid, block )
* item[+]
  * linkId  =  "group-condition-{block}"
  * type = #group
  //* text = "Condizioni patologiche"
  * text = "Pathological conditions"
  * required = true
  * repeats = true
  * extension[$questionnaire-maxOccurs].valueInteger = 15
  * insert enableIfYes ( {linkid} )   
  * item[+]
    * linkId  =  "condition-{block}"
    * type = #choice
    //* text = "Condizione"
    * text = "Condition"
    * required = true
    * answerValueSet = Canonical( ConditionsVS )
  * item[+]
    * linkId  =  "condition-note-{block}"
    * type = #text
    * readOnly = true
    * initial[+].valueString = "This space will contain guidance for the selected condition. Content is not yet available."
  * insert specifyConditionQuestion ( condition-other-{block}, {block} )
  * item[+]
    * linkId  =  "appearance-date-{block}"
    * type = #date
    //* text = "Data comparsa"
    * text = "Onset date"
    * required = true
  * item[+]
    * linkId  =  "condition-grading-{block}"
    * type = #choice
    //* text = "Grading m-CTCAE alla comparsa/ultima visita"
    * text = "Grading m-CTCAE at onset/last visit"
    * required = true
    * answerValueSet = Canonical( GradeVS )
  * item[+]
    * linkId  = "condition-evolution-{block}"
    * type = #choice
    //* text = "Evoluzione"
    * text = "Evolution"
    * required = true
    * extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
    * extension.valueCodeableConcept = $questionnaire-item-control#radio-button
    * answerOption[+].valueString = "Yes, resolved"
    * answerOption[+].valueString = "No, not resolved"
  * item[+]
    * linkId  =  "resolution-date-{block}"
    * type = #date
    //* text = "Se sì, Data"
    * text = "If yes, date"
    * required = true
    * enableBehavior = #any
    * insert enableIf( condition-evolution-{block}, [[Yes, resolved]])
  * item[+]
    * linkId  =  "new-condition-grading-{block}"
    * type = #choice
    //* text = "Se Modificata, Nuovo Grading"
    * text = "If changed, new grading"
    * required = true
    * answerValueSet = Canonical( GradeVS )
    * insert enableIf( condition-evolution-{block}, [[No, not resolved]])
  * item[+]
    * linkId  =  "details-{block}"
    * type = #text
    //* text = "Dettagli"
    * text = "Details"
  * item[+]
    * linkId  =  "next-check-{block}"
    * type = #text
    //* text = "Prossimo controllo planificato per"
    * text = "Next check-up planned on"


RuleSet: EvolveConditionGroup ( linkid, block )
* item[+]
  * linkId  =  "group-condition-{block}"
  * type = #group
  //* text = "Condizioni patologiche"
  * text = "Pathological conditions"
  * required = true
  * repeats = true
  * extension[$questionnaire-maxOccurs].valueInteger = 15
  * insert enableIfYes ( {linkid} )   
  * item[+]
    * linkId  =  "condition-{block}"
    * type = #choice
    //* text = "Condizione"
    * text = "Condition"
    * required = true
    * answerValueSet = Canonical( ConditionsVS )
  * item[+]
    * linkId  =  "condition-note-{block}"
    * type = #text
    * readOnly = true
    * initial[+].valueString = "This space will contain guidance for the selected condition. Content is not yet available."
  * insert specifyConditionQuestion ( condition-other-{block}, {block} )
  * item[+]
    * linkId  =  "appearance-date-{block}"
    * type = #date
    //* text = "Data comparsa"
    * text = "Onset date"
    * required = true
  * item[+]
    * linkId  =  "condition-grading-{block}"
    * type = #choice
    //* text = "Grading m-CTCAE alla comparsa/ultima visita"
    * text = "Grading m-CTCAE at onset/last visit"
    * required = true
    * answerValueSet = Canonical( GradeVS )
  * item[+]
    * linkId  = "condition-evolution-{block}"
    * type = #choice
    //* text = "Evoluzione"
    * text = "Evolution"
    * required = true
    * extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
    * extension.valueCodeableConcept = $questionnaire-item-control#radio-button
    //* answerOption[+].valueString = "No, Invariata"
    //* answerOption[+].valueString = "Si, Modificata"
    //* answerOption[+].valueString = "Si, Risolta"
    * answerOption[+].valueString = "No, unchanged"
    * answerOption[+].valueString = "Yes, changed"
    * answerOption[+].valueString = "Yes, solved"
  * item[+]
    * linkId  =  "resolution-date-{block}"
    * type = #date
    //* text = "Se sì, Data"
    * text = "If yes, date"
    * required = true
    * enableBehavior = #any
    * insert enableIf( condition-evolution-{block}, [[Yes, solved]])
  * item[+]
    * linkId  =  "new-condition-grading-{block}"
    * type = #choice
    //* text = "Se Modificata, Nuovo Grading alla visita m-CTCAE"
    * text = "If changed, new grading"
    * required = true
    * answerValueSet = Canonical( GradeVS )
    * insert enableIf( condition-evolution-{block}, [[Yes, changed]])
  * item[+]
    * linkId  =  "details-{block}"
    * type = #text
    //* text = "Dettagli"
    * text = "Details"
  * item[+]
    * linkId  =  "next-check-{block}"
    * type = #text
    //* text = "Prossimo controllo planificato per"
    * text = "Next check-up planned on"

RuleSet: specifyConditionQuestion( linkId, block ) 
* item[+]
  * linkId  =  "{linkId}"
  * type = #text
  //* text = "Se altro, specificare"
  * text = "If other, specify"
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

Instance: FollowupSurPass
InstanceOf: Questionnaire
Usage: #definition
* status = #draft
* name = "FollowupSurPass"
* subjectType = #Patient
//* description = """Scheda di follow up.
//La compilazione della prima scheda ROT-Surpass dovrà avvenire contestualmente alla consegna del SurPass o comunque alla prima visita dopo la fine del trattamento (OT)."""
* description = """Follow up form.
The first ROT-Surpass form must be completed at the same time as the SurPass is delivered or in any case at the first visit after the end of the treatment (OT)."""
* contained[+] = YesNoVS
/* * contained[+] = GradeVS
* contained[+] = ConditionsVS */

* item[+]
  * linkId  = "first-visit"
  * type = #choice
  //* text = "Prima visita?"
  * text = "First visit?"
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
  //* text = "Consenso informato a partecipare al ROT-SurPass"
  * text = "Informed consent to participate in the ROT-SurPass"
  * required = true
  * extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
  * extension.valueCodeableConcept = $questionnaire-item-control#radio-button
  * answerValueSet = Canonical(YesNoVS)
  * insert enableIfYes ( first-visit )

* item[+]
  * linkId  =  "consent-date"
  * type = #date
  //* text = "Data del consenso"
  * text = "Consent date"
  * insert enableIfYes ( first-visit )
  * extension[+]
    * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
    * valueBoolean = true
  * extension[+]
    * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-calculatedExpression"
    * valueExpression.language = #text/fhirpath
    * valueExpression.expression = "%resource.item.where(linkId='source-question').answer.first().value"

* item[+]
  * linkId  =  "visit-date"
  * type = #date
  //* text = "Data della visita"
  * text = "Visit date"
  * required = true

* item[+]
  * linkId  = "new-cancer-after-off-therapy"
  * type = #choice
  //* text = "Sindromi genetiche predisponenti o condizioni cliniche associate al tumore diagnosticate dopo il primo off therapy"
  * text = "Predisposing genetic syndromes or clinical conditions associated with the tumor diagnosed after the first off-therapy"
  * answerValueSet = Canonical(YesNoVS)
  * insert enableIfYes ( first-visit )
  // Enable a text question for details 
  * insert IfTrueSpecify ( new-cancer-after-off-therapy, new-cancer-txt-1 )

* item[+]
  * linkId  = "other-clinical"
  * type = #choice
  //* text = "Altri quadri clinci, non associati al tumore al momento della diognosi"
  * text = "Other clinical pictures, not associated with the tumor at the time of diagnosis"
  * answerValueSet = Canonical(YesNoVS)
  * insert enableIfYes ( first-visit )
  // Enable a text question for details 
  * insert IfTrueSpecify ( other-clinical, other-clinical-txt-1 )


* item[+]
  * linkId  = "clinical-condition-incidence"
  * type = #choice
  //* text = "Condizioni cliniche potenzialmente associate ad un aumento dell'incidenza del cancro"  
  * text = "Clinical conditions potentially associated with an increased incidence of cancer" 
  * answerValueSet = Canonical(YesNoVS)
  * required = true
  * insert enableIfYes ( first-visit )
  * insert IfTrueSpecify ( clinical-condition-incidence, clinical-condition-incidence-txt-1 )

* item[+]
  * linkId  =  "new-condition-after-off-therapy"
  * type = #choice
  //* text = "Dopo il primo off therapy il/la paziente  ha sperimentato una o più condizioni patologica"
  * text = "After the first off therapy the patient experienced one or more pathological conditions"
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
  //* text = "Le condizioni patologiche ancora presenti (non risolte) alla visita precedente si sono risolte o modificate di grado?"    
  * text = "Have any pathological conditions that were still present (unresolved) at the previous visit resolved or changed in degree?"    
  * required = true
  * extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
  * extension.valueCodeableConcept = $questionnaire-item-control#radio-button
  * answerValueSet = Canonical(YesNoVS)
  * insert enableIfNo ( first-visit )
  * insert EvolveConditionGroup ( condition-changed, 2 )

* item[+]
  * linkId  = "new-cancer-after-last-visit"
  * type = #choice
    //* text = "Sindromi genetiche predisponenti o condizioni cliniche associate al tumore diagnosticate dall’ultima visita?"  
  * text = "After the first off therapy the patient experienced one or more pathological conditions?"  
  * insert enableIfNo ( first-visit )
  * answerValueSet = Canonical(YesNoVS)
  // This group is activated only if this choice is true
  * insert NewConditionGroup ( new-cancer-after-last-visit, 3)

// COMMON

* item[+]
  * linkId  =  "notes"
  * type = #string
  //* text = "Note"
  * text = "Notes"
  * required = false
* item[+]
  * linkId  =  "notes-attachments"
  * type = #attachment
  //* text = "Documenti relativi ad esami strumentali di laboratorio significativi"
  * text = "Reports relating to significant laboratory instrumental tests"
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