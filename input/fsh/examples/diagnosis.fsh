
Instance:  ConditionPrimCancerMainzZeisig
InstanceOf: ConditionPrimaryCancerPcsp
Title:   "Mainz - Condition: complete Primary Cancer Condition example (TBC) (Zeisig)"
Description: "Sample of Primary Cancer Condition  based on information available by Mainz (Zeisig)"
Usage:  #example
//----------------------------------------------------------
// DIADT	CENTER	D_CENTER	PLACE_TREAT	PL_TREAT	ARRIVALDT	ICDO3_MORPH	MORPH_SPEC	ICDO3_TOPO	TOPO_SPEC	LATERAL	METASTATIC	METASTATIC1
// 2007-04-04	52	UKE Hamburg	2	Hamburg	07/07/2007	91813		C401		2	1	C412

				
* extension[condition-assertedDate].valueDateTime =  "2007-04-04"
* extension[histologyMorphologyBehavior].valueCodeableConcept = $icd03#91813 // how ICD-0-3  are coded ?
* code = $iccc3#081 // to be checked see https://seer.cancer.gov/iccc/iccc3.html
* subject = Reference (PatientMainzZeisig)
* bodySite = $icd03#C401
* bodySite.extension[mcode-laterality-qualifier].valueCodeableConcept = $loinc#LA4585-1 "Left"
* encounter = Reference (EncounterPrimCancerMainzZeisig )
* stage.summary.text = "textual description of stage" 
// metastasis C412
* evidence[0]
  * detail = Reference ( ObservationPrimCancerMainzZeisig )
* evidence[+]
  * code = $sct#106221001 "Genetic finding" 
  * code.text = "Textual description of Genetic markers" 
* evidence[+]
  * code = $sct#365861007 "Finding of immune status" 
  * code.text = "Textual description of Immunology"
* evidence[+]
  * code = $sct#32895009 "Hereditary disease" 
  * code.text = "Textual description of hereditary predisposition"

//----------------------------------------------------------
Instance:  ConditionSecCancerMainzZeisig
InstanceOf: ConditionSecondaryCancerPcsp
Title:   "Mainz - Condition: complete metastatic site Condition example (TBC) (Zeisig)"
Description: "Sample of metastatic site Condition based on information available by Mainz (Zeisig)"
Usage:  #example
//----------------------------------------------------------

//reference to Condition Primary Cancer Mainz
* extension[$condition-related].valueReference = Reference(ConditionPrimCancerMainzZeisig)

// Reference to Patient: "Patient: Sample created on Mainz data (Zeisig)"
* subject = Reference (PatientMainzZeisig)

* bodySite = $icd03#C41.2 "Bones, joints and articular cartilage of other and unspecified sites"

//----------------------------------------------------------
Instance:  ObservationPrimCancerMainzZeisig
InstanceOf: ObservationDiagnosisPcsp
Title:   "Mainz - Observation: Primary Cancer (Zeisig)"
Description: "Sample of Observation associated to the Primary Cancer Condition Mainz sample to provide details about the diagnosis (Zeisig)"
Usage:  #example
//----------------------------------------------------------
* code = $loinc#29308-4 "Diagnosis"
* status = #final
* effectiveDateTime = "2007-04-04"
* subject = Reference (PatientMainzZeisig)
* valueCodeableConcept.coding[0] = $iccc3#081
* valueCodeableConcept.coding[+] = $icd10#C41.9
* performer.identifier
  * system = $org-id-mainz
  * value = "52"
* performer.display = "UKE Hamburg"

//----------------------------------------------------------
Instance:  EncounterPrimCancerMainzZeisig
InstanceOf: EncounterPcsp
Title:   "Mainz - Encounter: Primary Cancer (Zeisig)"
Description: "Sample of Encounter associated to the Primary Cancer Condition Mainz sample (Zeisig)"
Usage:  #example
//----------------------------------------------------------
* status = #finished
* class = $v3-ActCode#AMB
* period.start = "2007-07-07"
* serviceProvider.identifier
  * system = $org-id-mainz
  * value = "52"
* serviceProvider.display = "UKE Hamburg"
// * diagnosis.condition = Reference (ConditionPrimCancerMainz)


Instance:  ConditionPrimCancerMainzFischer
InstanceOf: ConditionPrimaryCancerPcsp
Title:   "Mainz - Condition: Primary Cancer (Fischer)"
Description: "Sample of Primary Cancer Condition based on information available by Mainz (Fischer)"
Usage:  #example
//----------------------------------------------------------
// DIA_NUM	DIADT	CENTER	D_CENTER	PLACE_TREAT	PL_TREAT	ARRIVALDT	ICDO3_MORPH	MORPH_SPEC	ICDO3_TOPO	TOPO_SPEC	LATERAL	METASTATIC	METASTATIC1	METASTATIC2	METASTATIC3	METASTATIC_DESCR
// 1	1994-04-21	12	UKK Essen				95103		C692		4	

				
* extension[condition-assertedDate].valueDateTime =  "1994-04-21"
* extension[histologyMorphologyBehavior].valueCodeableConcept = $icd03#95103
* code = $v3-NullFlavor#NI // to be discussed
* subject = Reference (PatientMainzFischer)
* bodySite = $icd03#C692
* encounter = Reference (EncounterPrimCancerMainzFischer) 


//----------------------------------------------------------
Instance:  EncounterPrimCancerMainzFischer
InstanceOf: EncounterPcsp
Title:   "Mainz - Encounter: Primary Cancer (Fischer)"
Description: "Sample of Encounter associated to the Primary Cancer Condition Mainz sample (Fischer)"
Usage:  #example
//----------------------------------------------------------
* status = #finished
* class = $v3-ActCode#AMB
* period.start = "1994-04-21"
* serviceProvider.identifier
  * system = $org-id-mainz
  * value = "12"
* serviceProvider.display = "UKK Essen"
// * diagnosis.condition = Reference (ConditionPrimCancerMainz)