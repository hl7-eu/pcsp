//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: ICCC3Vs
Id: vs-iccc3-eu-pcsp
Title: "ICCC-3"
Description: "International Classification of Childhood Cancer, third edition + exceptional values"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* codes from system $iccc3
* codes from valueset OtherUnknownTextVs

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: ICDO3MorphologyVs
Id: vs-icdo3-morphology-eu-pcsp
Title: "ICD-O-3 Morphology"
Description: "ICD-O-3 Morphology"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* codes from system $icd03 // to be specialized....
* codes from system $data-absent-reason

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: ICDO3TopographyVs
Id: vs-icdo3-topography-eu-pcsp
Title: "ICD-O-3 Topography"
Description: "ICD-O-3 Topography"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* codes from system $icd03 // to be specialized....


ValueSet:   CancerStagingSystemVS
Id: mcode-cancer-staging-system-vs
Title: "Cancer Staging System Value Set"
Description: "System used for staging."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* ^experimental = false
* include codes from system $sct where concept is-a #254292007 "Tumor staging (tumor staging)"

ValueSet: ObservationCodesStageGroupVS
Id: mcode-observation-codes-stage-group-vs
Title: "Observation Codes for Stage Group Category"
Description: "Identifying codes based on the timing of classification for stage group observations."
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
* ^experimental = false
* $loinc#21908-9 "Stage group.clinical Cancer"
* $loinc#21902-2 "Stage group.pathology Cancer"
* $loinc#21914-7 "Stage group.other Cancer"
// Keep in sync with the intro .md page for this ValueSet, which lists these codes.

ValueSet: ObservationCodesPrimaryTumorVS
Id: mcode-observation-codes-primary-tumor-vs
Title: "Observation Codes for Primary Tumor Category"
Description: "Identifying codes based on the timing of classification for primary tumor (T) staging observations."
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
* ^experimental = false
* $loinc#21905-5 "Primary tumor.clinical [Class] Cancer"
* $loinc#21899-0 "Primary tumor.pathology Cancer"
* $loinc#21911-3 "Primary tumor.other [Class] Cancer"
// Keep in sync with the intro .md page for this ValueSet, which lists these codes.

ValueSet: ObservationCodesRegionalNodesVS
Id: mcode-observation-codes-regional-nodes-vs
Title: "Observation Codes for Regional Node Category"
Description: "Identifying codes based on the timing of classification for regional node (N) staging observations."
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
* ^experimental = false
* $loinc#21906-3 "Regional lymph nodes.clinical [Class] Cancer"
* $loinc#21900-6 "Regional lymph nodes.pathology [Class] Cancer"
* $loinc#21912-1 "Regional lymph nodes.other [Class] Cancer"
// Keep in sync with the intro .md page for this ValueSet, which lists these codes.

ValueSet: ObservationCodesDistantMetastasesVS
Id: mcode-observation-codes-distant-metastases-vs
Title: "Observation Codes for Distant Metastases Category"
Description: "Identifying codes based on the timing of classification for distant metastases (M) staging observations."
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
* ^experimental = false
* $loinc#21907-1 "Distant metastases.clinical [Class] Cancer"
* $loinc#21901-4 "Distant metastases.pathology [Class] Cancer"
* $loinc#21913-9 "Distant metastases.other [Class] Cancer"
// Keep in sync with the intro .md page for this ValueSet, which lists these codes.

ValueSet: CancerStageGroupVS
Id: mcode-cancer-stage-group-vs
Title: "Stage Group Value Set"
Description: "This value set is intended to contain allowable values for Stage Group, according to TNM staging rules. AJCC codes (preferably, version 8 for current cancers) SHOULD be used."
* ^experimental = false
* codes from system $ajcc

ValueSet: TNMPrimaryTumorCategoryVS
Id: mcode-tnm-primary-tumor-category-vs
Title: "TNM Primary Tumor Category Value Set"
Description: "This value set is intended to contain allowable values for the T category, according to TNM staging rules. AJCC codes (preferably, version 8 for current cancers) SHOULD be used."
* ^experimental = false
* codes from system $ajcc

ValueSet: TNMRegionalNodesCategoryVS
Id: mcode-tnm-regional-nodes-category-vs
Title: "TNM Regional Nodes Category Value Set"
Description: "This value set is intended to contain allowable values for the N category, according to TNM staging rules. AJCC codes (preferably, version 8 for current cancers) SHOULD be used."
* ^experimental = false
* include codes from system $ajcc

ValueSet: TNMDistantMetastasesCategoryVS
Id: mcode-tnm-distant-metastases-category-vs
Title: "TNM Distant Metastases Category Value Set"
Description: "This value set is intended to contain allowable values for the M category, according to TNM staging rules. AJCC codes (preferably, version 8 for current cancers) SHOULD be used."
* ^experimental = false
* codes from system $ajcc