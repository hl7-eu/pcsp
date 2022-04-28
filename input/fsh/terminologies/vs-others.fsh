


/* =======

ValueSet: CancerBodyLocationVS
Id: mcode-cancer-body-location-vs
Title: "Cancer Body Location Value Set"
Description:  "Codes describing the location(s) of primary or secondary cancer. The value set includes all codes from the SNOMED CT body structure hierarchy (codes descending from 123037004 'Body Structure'). The cancer body location may also be expressed using ICD-O-3 topography codes, however, those codes are not included here due to intellectual property restrictions. These topography terms have four-character codes that run from C00.0 to C80.9 [ref](https://apps.who.int/iris/bitstream/handle/10665/96612/9789241548496_eng.pdf). Only SNOMED CT and ICD-O-3 are considered conformant."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* include codes from system $sct where concept is-a #123037004  "Body Structure"
* include codes from system ICDO3  // currently no way to filter down to just topology codes (that I know of)

ValueSet:   ConditionStatusTrendVS
Id: mcode-condition-status-trend-vs
Title: "Condition Status Trend Value Set"
Description:  "How patient's given disease, condition, or ability is trending."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* $sct#281900007 "No abnormality detected (finding)" // better than $sct#260415000 "Not detected (qualifier)"
* $sct#268910001 "Patient's condition improved (finding)"
* $sct#359746009 "Patient's condition stable (finding)"
* $sct#271299001 "Patient's condition worsened (finding)"
* $sct#709137006 "Patient condition undetermined (finding)"


ValueSet: CancerDiseaseStatusEvidenceTypeVS
Id: mcode-cancer-disease-status-evidence-type-vs
Title: "Cancer Disease Status Evidence Type Value Set"
Description:  "The type of evidence backing up the clinical determination of cancer progression."
// The code '252416005 Histopathology test (procedure)' is intended to be used when there is a biopsy that contributes evidence of the cancer disease status.
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* include codes from system $sct where concept is-a #714797009 "Histologic test (procedure)" // Rolls up to NAACR 1 - Positive Histology
* include codes from system $sct where concept is-a #116147009 "Cytologic test (procedure)"  // Rolls up to NAACR 2 - Positive Cytology
//                                                                                             Rolls up to NAACR 3  - Combo of Tumor Maker + Histological Test
* include codes from system $sct where concept is-a #108257001 "Anatomic pathology procedure (procedure)" // Rolls up to NAACR 4 - Positive microscopic confirmation, method not specified
* include codes from system $sct where concept is-a #386344002 "Laboratory data interpretation (procedure)" // Rolls up to NAACR 5 - Positive laboratory test/marker study
* include codes from system $sct where concept is-a #5880005 "Clinical examination (procedure)"  // Rolls up to NAACR 6 Direct visualization without microscopic confirmation
* include codes from system $sct where concept is-a #363679005 "Imaging (procedure)"          // Rolls up to NAACR 7 Radiography and/or other imaging techniques without microscopic confirmation
//                                                                                              NAACR 8 intentionally NOT supported - Clinical Diagnosis
//                                                                                              NAACR 9 represented by no value provided -- Unknown
* include codes from system $sct where concept is-a #250724005 "Tumor marker measurement procedure (procedure)"



ValueSet: CancerRelatedSurgicalProcedureVS
Id: mcode-cancer-related-surgical-procedure-vs
Title: "Cancer-Related Surgical Procedure Value Set"
Description: "Includes surgical procedure codes from SNOMED CT, ICD-10-PCS and CPT. The value set may be a superset of cancer surgery codes, but narrowing the set further risks eliminating potentially useful and relevant codes."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement. Current Procedural Terminology (CPT) is copyright 2020 American Medical Association. All rights reserved"
* include codes from system $sct where concept is-a #387713003 "Surgical procedure (procedure)"
* include codes from system CPT
* include codes from system ICD10PCS

ValueSet:   TreatmentTerminationReasonVS
Id: mcode-treatment-termination-reason-vs
Title: "Treatment Termination Reason Value Set"
Description:  "Values used to describe the reasons for stopping a treatment or episode of care. Includes code for 'treatment completed' as well as codes for unplanned (early) stoppage. Applies to medications and other treatments that take place over a period of time, such as radiation treatments."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* $sct#182992009   "Treatment completed (situation)"
* $sct#266721009   "No response to treatment (situation)" // more general than $sct#58848006 "Lack of drug action (finding)"
* $sct#407563006   "Treatment not tolerated (situation)" // more general than $sct#281647001 "Adverse reaction (disorder)"
* $sct#160932005   "Financial problem (finding)" // more general than 454061000124102 "Unable to afford medication (finding)"
* $sct#105480006   "Refusal of treatment by patient (situation)"  // patient choice or decision
* $sct#184081006   "Patient has moved away (finding)" // better than $sct#107724000 "Patient transfer (procedure)"
* $sct#309846006   "Treatment not available (situation)"
* $sct#399307001   "Lost to follow-up (finding)" // added by mCODE Exec Council recommendation 2/12/2021


ValueSet:		ProcedureIntentVS
Id: mcode-procedure-intent-vs
Title: "Procedure Intent Value Set"
Description:	"The purpose of a procedure."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* $sct#373808002 "Curative - procedure intent"
* $sct#363676003 "Palliative - procedure intent"
* $sct#399707004 "Supportive - procedure intent"
* $sct#261004008 "Diagnostic intent"
* $sct#129428001 "Preventive - intent"
* $sct#429892002 "Guidance intent"
* $sct#360156006 "Screening - procedure intent"
* $sct#447295008 "Forensic intent"

//* $sct#360271000 "Prophylaxis - procedure intent"  // redundant with preventive. See https://en.wikipedia.org/wiki/Preventive_healthcare for the (slight) distinction between these terms.
//* $sct#73847000  "Neo-adjuvant - intent"  // relates to timing, not intent
//* $sct#373846009 "Adjuvant - intent"   // relates to timing, not intent
//* $sct#421974008 "Adjunct - intent"  // simply means accompanying or in support of another therapy. It is not an intent.

// Based on UnitsOfLengthVS, but limited to just mm and cm. In theory we could just use UnitsOfLengthVS if we don't care about restricting to just cm/mm.
ValueSet:        TumorSizeUnitsVS
Id:              mcode-tumor-size-units-vs
Title:           "Units of tumor size value set"
Description:     "Acceptable units for measuring tumor size"
* UCUM#mm        "Millimeter"
* UCUM#cm        "Centimeter"

ValueSet:        TumorSizeMethodVS
Id:              mcode-tumor-size-method-vs
Title:           "Methods for measuring tumor size"
Description:     "Code for methods of measuring tumor size, including physical examination, pathology, and imaging."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
// Pathology
* $sct#787377000 "Gross examination and sampling of tissue specimen (procedure)"
* $sct#104157003 "Light microscopy (procedure)"
// Physical exam
* $sct#5880005 "Physical examination procedure (procedure)"
// Diagnostic imaging
* $sct#16310003 "Diagnostic ultrasonography (procedure)"
* $sct#113091000 "Magnetic resonance imaging (procedure)"
* $sct#77477000 "Computerized axial tomography (procedure)"
* $sct#82918005 "Positron emission tomography (procedure)"
* $sct#363680008 "Radiographic imaging procedure (procedure)"
// Other Imaging.  If one of the above doesn't cut it.
* $sct#363679005 "Imaging (procedure)"
// * include codes from system $loinc where concept is-a #LP29684-5

==== */