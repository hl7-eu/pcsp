
Instance:  ConditionPrimCancerMainz
InstanceOf: ConditionPrimaryCancerPcsp
Title:   "Condition: Sample from Mainz"
Description: "Sample of Primary Cancer Condition  based on information available by Mainz"
Usage:  #example
//----------------------------------------------------------
// DIA_NUM	DIADT	CENTER	D_CENTER	PLACE_TREAT	PL_TREAT	ARRIVALDT	ICDO3_MORPH	MORPH_SPEC	ICDO3_TOPO	TOPO_SPEC	LATERAL	METASTATIC	METASTATIC1	METASTATIC2	METASTATIC3	METASTATIC_DESCR
// 1	1994-04-21	12	UKK Essen				95103		C692		4	

				
* extension[condition-assertedDate].valueDateTime =  "1994-04-21"
* extension[histologyMorphologyBehavior].valueCodeableConcept = $icd03#95103
* code = $v3-NullFlavor#NI // to be discussed
* subject = Reference (PatientMainz)
* bodySite = $icd03#C692
* encounter = Reference (EncounterPrimCancerMainz) 


//----------------------------------------------------------
Instance:  EncounterPrimCancerMainz
InstanceOf: Encounter
Title:   "Encounter: Sample from Mainz"
Description: "Sample of Encounter associated to the Primary Cancer Condition Mainz sample"
Usage:  #example
//----------------------------------------------------------
* status = #finished
* class = $v3-ActCode#AMB
* period.start = "1994-04-21"
* serviceProvider.identifier
  * system = $org-id-mainz
  * value = "12"
* serviceProvider.display = "UKK Essen"
* diagnosis.condition = Reference ( ConditionPrimCancerMainz )


