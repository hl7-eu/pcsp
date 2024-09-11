// --------- 

/* ValueSet: YesNoVS
Id: yes-no-vs
Title: "Yes/No Value Set"
Description: "Yes/No Value Set"

* ^experimental = false
* $loinc#LA32-8 "NO"
* $loinc#LA33-6 "YES" */

// --------- 

ValueSet: ConditionsVS
Id: cond-test-vs
Title: "Conditions: follow up"
Description: "Conditions: follow up"

* ^experimental = true
* $iccc3#011 "Lymphoid leukemias"
* $iccc3#021 "Hodgkin lymphomas"
* $iccc3#036 "Unspecified intracranial and intraspinal neoplasms"

ValueSet: GradeVS
Id: grade-test-vs
Title: "Grade: follow up"
Description: "Grade: follow up"

* ^experimental = true
* $sct#54102005 "G1 grade"
* $sct#313147000 "Tumor grade G0"
* $sct#1663004 "G2 grade"