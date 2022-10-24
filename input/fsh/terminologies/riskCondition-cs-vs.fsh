
// ------- Recommendations

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  CodeSystem:  CsRiskConditionPcsp
  Id: cs-riskcondition-eu-pcsp
  Title: "PCSP Conditions at risk"
  Description:  "Condition at risk proposed by the PCSP algorithm"
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// * ^caseSensitive = true

* ^experimental = false
* ^caseSensitive = true
* #1 "Subsequent thyroid cancer" "Subsequent thyroid cancer"
* #2 "Subsequent breast cancer" "Subsequent breast cancer"
* #3 "Cardiac problems (Cardiomyopathy and/or Valvular disease and/or Cardiac ischemia)" "Cardiac problems (Cardiomyopathy and/or Valvular disease and/or Cardiac ischemia)"
* #4 "Impaired fertility Impaired spermatogenesis" "Impaired fertility Impaired spermatogenesis"
* #5 "Testosterone deficiency" "Testosterone deficiency"
* #6 "Physical sexual dysfunction" "Physical sexual dysfunction"
* #7 "Premature ovarian insufficiency" "Premature ovarian insufficiency"
* #8 "Ear problems" "Ear problems"
* #9 "Impaired glucose metabolism and diabetes melitus" "Impaired glucose metabolism and diabetes melitus"
* #10 "Dyslipidemia" "Dyslipidemia"
* #11 "Overweight and obesity" "Overweight and obesity"
* #12 "Hypertension" "Hypertension"
* #13 "Reduced bone mineral density" "Reduced bone mineral density"
* #14 "Osteonecrosis" "Osteonecrosis"
* #15 "Hypothalamic-pituitary (HP) axis problems (High risk) Growth hormone deficiency (GHD) TSH deficiency (TSHD) LH/FSH deficiency (LH/FSHD) ACTH deficiency (ACTHD)" "Hypothalamic-pituitary (HP) axis problems (High risk) Growth hormone deficiency (GHD) TSH deficiency (TSHD) LH/FSH deficiency (LH/FSHD) ACTH deficiency (ACTHD)"
* #16 "Hypothalamic-pituitary (HP) axis problems (Standard risk) Growth hormone deficiency (GHD) TSH deficiency (TSHD) LH/FSH deficiency (LH/FSHD) ACTH deficiency (ACTHD)" "Hypothalamic-pituitary (HP) axis problems (Standard risk) Growth hormone deficiency (GHD) TSH deficiency (TSHD) LH/FSH deficiency (LH/FSHD) ACTH deficiency (ACTHD)"
* #17 "Central precocious puberty (CPP) For girls with age below 8 years" "Central precocious puberty (CPP) For girls with age below 8 years"
* #18 "Central precocious puberty (CPP) For boys with age below 9 yearss" "Central precocious puberty (CPP) For boys with age below 9 yearss"
* #19 "Thyroid function problems" "Thyroid function problems"
* #20 "Cerebrovascular problem" "Cerebrovascular problem"
* #21 "Neurocognitive problems" "Neurocognitive problems"
* #22 "Peripheral neuropathy" "Peripheral neuropathy"
* #23 "Cataract" "Cataract"
* #24 "Eye problems" "Eye problems"
* #25 "Craniofacial growth problems" "Craniofacial growth problems"
* #26 "Spine scoliosis and kyphosis" "Spine scoliosis and kyphosis"
* #27 "Lower urinary tract problems" "Lower urinary tract problems"
* #28 "Obstetric problems" "Obstetric problems"
* #29 "Dental and oral problems" "Dental and oral problems"
* #30 "Gastro-intestinal problems" "Gastro-intestinal problems"
* #31 "Arrhythmia" "Arrhythmia"
* #32 "Pulmonary problems" "Pulmonary problems"
* #33 "Renal problems (Glomerular dysfunction - Tubular dysfunction)" "Renal problems (Glomerular dysfunction - Tubular dysfunction)"
* #34 "Liver problems" "Liver problems"
* #35 "Iron overload" "Iron overload"
* #36 "Spleen problems" "Spleen problems"
* #37 "Tumor predisposition" "Tumor predisposition"
* #38 "Subsequent melanoma and non-melanoma skin cancer" "Subsequent melanoma and non-melanoma skin cancer"
* #39 "Subsequent colorectal cancer" "Subsequent colorectal cancer"
* #40 "Subsequent Oral Cancer" "Subsequent Oral Cancer"
* #41 "Subsequent acute myeloid leukaemia or myelodysplasia" "Subsequent acute myeloid leukaemia or myelodysplasia"
* #42 "Subsequent bladder cancer" "Subsequent bladder cancer"
* #43 "Subsequent Bone Cancer" "Subsequent Bone Cancer"
* #44 "Subsequent lung cancer" "Subsequent lung cancer"
* #45 "Subsequent CNS neoplasms" "Subsequent CNS neoplasms"
* #46 "Cardiac problems (Cardiomyopathy and/or Valvular disease and/or Cardiac ischemia)" "Cardiac problems (Cardiomyopathy and/or Valvular disease and/or Cardiac ischemia)"
* #47 "Renal problems (Tubular dysfunction)" "Renal problems (Tubular dysfunction)"


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: RiskCondition
Id: vs-riskcondition-eu-pcsp 
Title: "Conditions at risk"
Description: "Condition at risk proposed by the PCSP algorithm"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* codes from system CsRiskConditionPcsp
