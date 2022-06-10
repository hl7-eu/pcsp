
// ------- Recommendations

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  CodeSystem:  CsRecomandationPcsp
  Id: cs-recommendation-eu-pcsp
  Title: "PCSP Recommendations"
  Description:  "Recommendations proposed by the PCSP algorithm"
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

* ^caseSensitive = true

* #passport_n.GUIDELINE_T1.GUIDELINE_T1 "Subsequent thyroid cancer" "Counselling regarding the increased risk for developing differentiated thyroid  to inform their HCP if they detect a thyroid mass (independent of the presence or absence of associated symptoms), every 5 years
- Physical examination of the neck as part of a complete physical examination, whenever a survivor is assessed by a HCP
- Counselling regarding options for differentiated thyroid carcinoma surveillance, at least every 5 years
If the decision to commence surveillance is made, make a shared decision for one of these two surveillance modalities:
- Neck palpation, every 1-2 years, starting 5 years after radiotherapy, or
- Thyroid ultrasonographyw, every 3-5 years, starting 5 years after radiotherapy"
* #passport_n.GUIDELINE_T2.GUIDELINE_T2 "Subsequent breast cancer" "Mammography and breast MRI
every year if ≥ 25 years of age or ≥ 8 years from radiation, whichever occurs last"
* #passport_n.GUIDELINE_T3.GUIDELINE_T3 "Cardiac problems (High risk)" "A physical cardiac examination at every LTFU visit, at least every 5 years. Screening for modifiable cardiovascular risk factors (hypertension, diabetes, dyslipidaemia, obesity, smoking and low levels of physical activity).

- ECG once at entry into LTFU. Repeat ECG once after the age of 18 years if entry into LTFU was at a younger age.
- Echocardiogram with specific attention to left ventricular systolic function, to valvular structure and function and to the pericardium, starting 2 years after treatment and at least every 2-3 years;
Echocardiogram with specific attention to left ventricular function, prior to pregnancy or in the first trimester, if female
- Refer to a cardiologist if an abnormal ejection fraction or if other abnormalities are identified
- Refer for interventions to help avert the risk of symptomatic cardiomyopathy if modifiable cardiovascular risk factors are identified  Refer to a cardiologist if an abnormal ejection fraction or if other abnormalities are identified
- Refer for interventions to help avert the risk of symptomatic cardiomyopathy if modifiable cardiovascular risk factors are identified"  

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: Recommendation
Id: vs-recommendation-eu-pcsp 
Title: "Recommendations"
Description: "Recommendations proposed by the PCSP algorithm"
//-------------------------------------------------------------------------------------------
* codes from system CsRecomandationPcsp
