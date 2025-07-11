Instance: BundleHulafe
InstanceOf: BundlePcsp
Usage: #example
Title: "Hulafe - Bundle: Example of a Childhood Cancer Survivor Passport"
Description: "Example of a Childhood Cancer Survivor Passport Bundle for the PanCareSurPass project (Hulafe)"
* identifier.system = "http://fhir.ehealth-systems.at/identifier/pcsp-bundle"
* identifier.value = "hulafe-pcsp-bundle-2025"
* type = #document
* timestamp = "2025-06-11T07:41:51.868411+00:00"
// 1. COMPOSITION 
* entry[0].fullUrl = "http://hl7.eu/fhir/ig/pcsp/Composition/CompositionHulafe"
* entry[=].resource = CompositionHulafe
// 2. PATIENT
* entry[+].fullUrl = "http://hl7.eu/fhir/ig/pcsp/Patient/PatientHulafe-1"
* entry[=].resource = PatientHulafe-1
// 3. CONDITION
* entry[+].fullUrl = "http://hl7.eu/fhir/ig/pcsp/Condition/PrimaryCancerHulafe-1"
* entry[=].resource = PrimaryCancerHulafe-1
// 4. ENCOUNTER
* entry[+].fullUrl = "http://hl7.eu/fhir/ig/pcsp/Encounter/EncHulafe-1"
* entry[=].resource = EncHulafe-1
// 5. MEDICATION ADMINISTRATION
* entry[+].fullUrl = "http://hl7.eu/fhir/ig/pcsp/MedicationAdministration/ChemoHulafe-1-Ciclofosfamide"
* entry[=].resource = ChemoHulafe-1-Ciclofosfamide
* entry[+].fullUrl = "http://hl7.eu/fhir/ig/pcsp/MedicationAdministration/ChemoHulafe-1-Metotrexato"
* entry[=].resource = ChemoHulafe-1-Metotrexato
* entry[+].fullUrl = "http://hl7.eu/fhir/ig/pcsp/MedicationAdministration/ChemoHulafe-1-Vincristina"
* entry[=].resource = ChemoHulafe-1-Vincristina
* entry[+].fullUrl = "http://hl7.eu/fhir/ig/pcsp/MedicationAdministration/ChemoHulafe-1-Citarabina"
* entry[=].resource = ChemoHulafe-1-Citarabina
// 6. MEDICATION STATEMENT
* entry[+].fullUrl = "http://hl7.eu/fhir/ig/pcsp/MedicationStatement/ChemoHulafe-1-corticosteroids"
* entry[=].resource = ChemoHulafe-1-corticosteroids
// 7. OBSERVATION CHEMOTHERAPY DOSES
* entry[+].fullUrl = "http://hl7.eu/fhir/ig/pcsp/Observation/ChemoHulafe-1-Ciclofosfamide-dose"
* entry[=].resource = ChemoHulafe-1-Ciclofosfamide-dose
* entry[+].fullUrl = "http://hl7.eu/fhir/ig/pcsp/Observation/ChemoHulafe-1-Metotrexato-dose"
* entry[=].resource = ChemoHulafe-1-Metotrexato-dose
* entry[+].fullUrl = "http://hl7.eu/fhir/ig/pcsp/Observation/ChemoHulafe-1-Vincristina-dose"
* entry[=].resource = ChemoHulafe-1-Vincristina-dose
* entry[+].fullUrl = "http://hl7.eu/fhir/ig/pcsp/Observation/ChemoHulafe-1-Citarabina-dose"
* entry[=].resource = ChemoHulafe-1-Citarabina-dose
// 8. ORGANIZATION 
* entry[+].fullUrl = "http://hl7.eu/fhir/ig/pcsp/Organization/OrgHulafe-1"
* entry[=].resource = OrgHulafe-1
// 9. LOCATION
* entry[+].fullUrl = "http://hl7.eu/fhir/ig/pcsp/Location/ChemoHulafe-1-Location"
* entry[=].resource = ChemoHulafe-1-Location
// 10. CARE PLAN
* entry[+].fullUrl = "http://hl7.eu/fhir/ig/pcsp/CarePlan/CarePlanExample-1"
* entry[=].resource = CarePlanExample-1
// 11. OBSERVATION RISK FACTORS
* entry[+].fullUrl = "http://hl7.eu/fhir/ig/pcsp/Observation/ObservationRiskFactor-1"
* entry[=].resource = ObservationRiskFactor-1
* entry[+].fullUrl = "http://hl7.eu/fhir/ig/pcsp/Observation/ObservationRiskFactor-2"
* entry[=].resource = ObservationRiskFactor-2
* entry[+].fullUrl = "http://hl7.eu/fhir/ig/pcsp/Observation/ObservationRiskFactor-3"
* entry[=].resource = ObservationRiskFactor-3
* entry[+].fullUrl = "http://hl7.eu/fhir/ig/pcsp/Observation/ObservationRiskFactor-4"
* entry[=].resource = ObservationRiskFactor-4
// 12. DOCUMENT REFERENCE
* entry[+].fullUrl = "http://hl7.eu/fhir/ig/pcsp/DocumentReference/DocumentReferenceExample-1"
* entry[=].resource = DocumentReferenceExample-1

// ===============================================================================
// COMPOSITION 
// ===============================================================================

Instance: CompositionHulafe
InstanceOf: CompositionSurpassPcsp
Usage: #inline
Title: "Hulafe - Composition: Childhood Cancer Survivor Passport"
Description: "Composition structuring the Hulafe Childhood Cancer Survivor Passport document"
* status = #preliminary
* type = $cs-generic-eu-pcsp#surpass
* subject = Reference(PatientHulafe-1)
* date = "2025-06-11T07:41:51.417033+00:00"
* author.identifier.value = "test"
* title = "Childhood Cancer Survivor Passport"
// Section FLT (Front Line Treatment)
* section[flt].title = "Cancer Diagnosis and Treatment"
* section[flt].code = $loinc#72135-7
* section[flt].text.status = #generated
* section[flt].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Primary Cancer Diagnosis and Treatment Summary</p></div>"
* section[flt].entry[primaryCancer] = Reference(PrimaryCancerHulafe-1)
// Sub-section Chemotherapy
* section[flt].section[chemotherapy].title = "Chemotherapy"
* section[flt].section[chemotherapy].code = $loinc#11486-8
* section[flt].section[chemotherapy].text.status = #generated
* section[flt].section[chemotherapy].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Chemotherapy Treatments</p></div>"
* section[flt].section[chemotherapy].entry[medicationAdministration][0] = Reference(ChemoHulafe-1-Ciclofosfamide)
* section[flt].section[chemotherapy].entry[medicationAdministration][+] = Reference(ChemoHulafe-1-Metotrexato)
* section[flt].section[chemotherapy].entry[medicationAdministration][+] = Reference(ChemoHulafe-1-Vincristina)
* section[flt].section[chemotherapy].entry[medicationAdministration][+] = Reference(ChemoHulafe-1-Citarabina)
* section[flt].section[chemotherapy].entry[medicationStatement][0] = Reference(ChemoHulafe-1-corticosteroids)
// Section CarePlan
* section[carePlan].title = "Care Plan"
* section[carePlan].code = $loinc#18776-5
* section[carePlan].text.status = #generated
* section[carePlan].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Care Plan</p></div>"
* section[carePlan].entry[carePlan] = Reference(CarePlanExample-1)