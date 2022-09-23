
// === Condition
Instance: CarePlanExample-1
InstanceOf: CarePlanPcsp
Title:   "CarePlan: Automatically Generated Example"
Description: "Sample of Care Plan generated by the platform"
Usage: #example
// ------------------------------------------------
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<p>
		<strong>
			<em>FOLLOW-UP RECOMMENDATIONS</em>
		</strong>
	</p>
	<p>Here below are listed personalized follow-up recommendations, based on the treatments you received. These advices are based on international experience with people who received similar treatments as you.</p>
	<p>They are meant to prevent and/or diagnose at an early stage possible future complications.</p>
	<p>It is possible that over time these recommendations will be updated according to new clinical situations and/or new data in the scientific literature. We will make all possible efforts in order to update about any new update.</p>
	<p>We encourage you to report to your doctor any persistent symptom you might have, in order to allow an early identification of its cause.</p>
	<p>&nbsp;</p>
	<p>
		<strong>General recommendations</strong>
	</p>
	<p>A healthy lifestyle helps to maintain physical and mental wellbeing, as well as preventing possible diseases such as cardiovascular complications, tumors, and psychological problems.</p>
	<p>We therefore recommend you to:</p>
	<ul>
		<li>Maintain a normal body weight and engage in regular physical activity.</li>
		<li>Eat plenty of fruits and vegetables, and reduce fat, sugar, and salt intake.</li>
		<li>Don't smoke and avoid excessive alcohol intake.</li>
		<li>Maintain proper dental hygiene.</li>
		<li>Avoid excessive sun exposure and remember to use high-protection sunscreen.</li>
		<li>Check your blood pressure periodically.</li>
		<li>Report to your health care provider any experience of chronic pain, excessive fatigue and/or deterioration of performance in your daily activities (study, work and/or exercise).</li>
		<li>Adhere to all cancer screening programs that will be offered by the health system.</li>
	</ul>
	<p>&nbsp;</p>
	<table border=\"1\">
		<tbody>
			<tr>
				<td>
					<strong>You might be at risk of</strong>
				</td>
				<td>
					<strong>Because you were treated with</strong>
				</td>
				<td>
					<strong>We therefore recommend you to</strong>
				</td>
			</tr>
			<tr>
				<td>Subsequent thyroid cancer</td>
				<td>
					<ul>
						<li>RT to a vol exposing the thyroid gland</li>
					</ul>
				</td>
				<td>Counselling regarding the increased risk for developing differentiated thyroid to inform their HCP if they detect a thyroid mass (independent of the presence or absence of associated symptoms), every 5 years - Physical examination of the neck as part of a complete physical examination, whenever a survivor is assessed by a HCP - Counselling regarding options for differentiated thyroid carcinoma surveillance, at least every 5 years If the decision to commence surveillance is made, make a shared decision for one of these two surveillance modalities: - Neck palpation, every 1-2 years, starting 5 years after radiotherapy, or - Thyroid ultrasonographyw, every 3-5 years, starting 5 years after radiotherapy</td>
			</tr>
			<tr>
				<td>Subsequent breast cancer</td>
				<td>
					<ul>
						<li>RT &gt;= 10 Gy to a vol exposing the breasts</li>
					</ul>
				</td>
				<td>Mammography and breast MRI every year if &ge; 25 years of age or &ge; 8 years from radiation, whichever occurs last</td>
			</tr>
			<tr>
				<td>Cardiac problems (High risk)</td>
				<td>
					<ul>
						<li>RT &gt;= 35 Gy to a vol exposing the heart</li>
						<li>Anthracyclines (doxorubicin isotoxic equivalents)&gt;= 250 mg/m2</li>
					</ul>
				</td>
				<td>A physical cardiac examination at every LTFU visit, at least every 5 years. Screening for modifiable cardiovascular risk factors (hypertension, diabetes, dyslipidaemia, obesity, smoking and low levels of physical activity). - ECG once at entry into LTFU. Repeat ECG once after the age of 18 years if entry into LTFU was at a younger age. - Echocardiogram with specific attention to left ventricular systolic function, to valvular structure and function and to the pericardium, starting 2 years after treatment and at least every 2-3 years; Echocardiogram with specific attention to left ventricular function, prior to pregnancy or in the first trimester, if female - Refer to a cardiologist if an abnormal ejection fraction or if other abnormalities are identified - Refer for interventions to help avert the risk of symptomatic cardiomyopathy if modifiable cardiovascular risk factors are identified Refer to a cardiologist if an abnormal ejection fraction or if other abnormalities are identified - Refer for interventions to help avert the risk of symptomatic cardiomyopathy if modifiable cardiovascular risk factors are identified</td>
			</tr>
		</tbody>
	</table>
</div>"
* status = #draft
* intent = #proposal
* subject = Reference(PatientHulafe-1) "APELLIDO1"
* period.start = "2022-05-17"
* addresses = Reference(PrimaryCancerHulafe-1) "Carcinoma tiroides"
* created = "2022-05-12"

* activity[+].detail
  * code =  CsRecomandationPcsp#2 "Perform Mammography and Breast magnetic resonance imaging (MRI) should be performed annually from the eighth year after the end of radiotherapy, but not before the age of 25. These examinations should be continued until at least age 60." 
  * reasonCode =  CsRiskConditionPcsp#2 "Subsequent breast cancer"
  * reasonReference = Reference(ObservationRiskFactor-2) "RT >= 10 Gy to a vol exposing the breasts"
// * instantiatesCanonical only Canonical(PlanDefinition or ActivityDefinition)
  * status = #not-started
  * description = "A healthy lifestyle helps to maintain physical and mental wellbeing, as well as preventing possible diseases such as cardiovascular complications, tumors, and psychological problems. We therefore recommend you to: (1) Maintain a normal body weight and engage in regular physical activity. (2) Eat plenty of fruits and vegetables, and reduce fat, sugar, and salt intake. (3) Don't smoke and avoid excessive alcohol intake. (4) Maintain proper dental hygiene. (5) Avoid excessive sun exposure and remember to use high-protection sunscreen.(6) Check your blood pressure periodically.	(7) Report to your health care provider any experience of chronic pain, excessive fatigue and/or deterioration of performance in your daily activities (study, work and/or exercise). (8) Adhere to all cancer screening programs that will be offered by the health system."


* activity[+].detail
  * code =  CsRecomandationPcsp#1 "Perform appropriate thyroid screening from the fifth year after the end of radiotherapy. Discuss with your doctor whether to schedule: Clinical thyroid examination every 1-2 years; or Thyroid ultrasound every 3-5 years."
  * reasonCode =  CsRiskConditionPcsp#1 "Subsequent thyroid cancer"
  * reasonReference = Reference(ObservationRiskFactor-1) "RT to a vol exposing the thyroid gland"
// * instantiatesCanonical only Canonical(PlanDefinition or ActivityDefinition)
  * status = #not-started
  * description = "Counselling regarding the increased risk for developing differentiated thyroid to inform their HCP if they detect a thyroid mass (independent of the presence or absence of associated symptoms), every 5 years - Physical examination of the neck as part of a complete physical examination, whenever a survivor is assessed by a HCP - Counselling regarding options for differentiated thyroid carcinoma surveillance, at least every 5 years If the decision to commence surveillance is made, make a shared decision for one of these two surveillance modalities: - Neck palpation, every 1-2 years, starting 5 years after radiotherapy, or - Thyroid ultrasonographyw, every 3-5 years, starting 5 years after radiotherapy"

* activity[+].detail
  * code =  CsRecomandationPcsp#2 "Perform Mammography and Breast magnetic resonance imaging (MRI) should be performed annually from the eighth year after the end of radiotherapy, but not before the age of 25. These examinations should be continued until at least age 60."
  * reasonCode =  CsRiskConditionPcsp#2 "Subsequent breast cancer"
  * reasonReference = Reference(ObservationRiskFactor-2) "RT >= 10 Gy to a vol exposing the breasts"
// * instantiatesCanonical only Canonical(PlanDefinition or ActivityDefinition)
  * status = #not-started
  * description = "Mammography and breast MRI every year if ≥ 25 years of age or ≥ 8 years from radiation, whichever occurs last"
* activity[+].detail
  * code =  CsRecomandationPcsp#3 "Perform: Cardiological evaluation at the end of treatment and every 2-3 years thereafter; Electrocardiogram (ECG) at the end of treatment, to be repeated at the age of 18 and cardiological evaluation in case of palpitations, dizziness and/or fainting/loss of consciousness. Echocardiogram 2 years after the end of treatment, to be repeated every 2-3 years; If female, echocardiogram in the first trimester of pregnancy."
  * reasonCode =  CsRiskConditionPcsp#3 "Cardiac problems (High risk)"
  * reasonReference[+] = Reference(ObservationRiskFactor-3) "RT >= 35 Gy to a vol exposing the heart"
  * reasonReference[+] = Reference(ObservationRiskFactor-4) "Anthracyclines (doxorubicin isotoxic equivalents)>= 250 mg/m2"
// * instantiatesCanonical only Canonical(PlanDefinition or ActivityDefinition)
  * status = #not-started
  * description = "A physical cardiac examination at every LTFU visit, at least every 5 years. Screening for modifiable cardiovascular risk factors (hypertension, diabetes, dyslipidaemia, obesity, smoking and low levels of physical activity). - ECG once at entry into LTFU. Repeat ECG once after the age of 18 years if entry into LTFU was at a younger age. - Echocardiogram with specific attention to left ventricular systolic function, to valvular structure and function and to the pericardium, starting 2 years after treatment and at least every 2-3 years; Echocardiogram with specific attention to left ventricular function, prior to pregnancy or in the first trimester, if female - Refer to a cardiologist if an abnormal ejection fraction or if other abnormalities are identified - Refer for interventions to help avert the risk of symptomatic cardiomyopathy if modifiable cardiovascular risk factors are identified Refer to a cardiologist if an abnormal ejection fraction or if other abnormalities are identified - Refer for interventions to help avert the risk of symptomatic cardiomyopathy if modifiable cardiovascular risk factors are identified"


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Instance: ObservationRiskFactor-1
InstanceOf: ObservationRiskFactor
Title:   "Observation: Risk Factor"
Description: "Sample of Risk Factor: RT to thyroid gland"
Usage: #example
// ------------------------------------------------
* subject = Reference(PatientHulafe-1) "APELLIDO1"
* status = #final
* effectivePeriod.start = "2022-05-12"
* code = $sct#80943009 "Risk factor"
* valueCodeableConcept = CsRiskFactorPcsp#1.1 "RT to a vol exposing the thyroid gland"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Instance: ObservationRiskFactor-2
InstanceOf: ObservationRiskFactor
Title:   "Observation: Risk Factor"
Description: "Sample of Risk Factor: RT >= 10 Gy to breasts"
Usage: #example
// ------------------------------------------------
* subject = Reference(PatientHulafe-1) "APELLIDO1"
* status = #final
* effectivePeriod.start = "2022-05-12"
* code = $sct#80943009 "Risk factor"
* valueCodeableConcept = CsRiskFactorPcsp#2.1 "RT >= 10 Gy to a vol exposing the breasts"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Instance: ObservationRiskFactor-3
InstanceOf: ObservationRiskFactor
Title:   "Observation: Risk Factor"
Description: "Sample of Risk Factor: RT >= 35 Gy to heart"
Usage: #example
// ------------------------------------------------
* subject = Reference(PatientHulafe-1) "APELLIDO1"
* status = #final
* effectivePeriod.start = "2022-05-12"
* code = $sct#80943009 "Risk factor"
* valueCodeableConcept = CsRiskFactorPcsp#3.1 "RT >= 35 Gy to a vol exposing the heart"


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Instance: ObservationRiskFactor-4
InstanceOf: ObservationRiskFactor
Title:   "Observation: Risk Factor"
Description: "Sample of Risk Factor: Anthracyclines >= 250 mg/m1"
Usage: #example
// ------------------------------------------------
* subject = Reference(PatientHulafe-1) "APELLIDO1"
* status = #final
* effectivePeriod.start = "2022-05-12"
* code = $sct#80943009 "Risk factor"
* valueCodeableConcept = CsRiskFactorPcsp#46.2 "Anthracyclines (doxorubicin isotoxic equivalents)>= 250 mg/m1"
