Instance: 74055
InstanceOf: Composition
Title:   "Cineca - Composition: Passport example"
Description: "Sample of Composition"
Usage: #example
* meta.versionId = "3"
* meta.lastUpdated = "2023-02-13T13:30:01.727+01:00"
* meta.source = "#sYR5ePAPsLKmPmn8"
* type = $cs-generic-eu-pcsp#surpass
* subject = Reference(Patient/72959)
* status = #final
* date = "2023-02-13"
* author.display = "CINECA PCSP Platform"
* title = "Childhood Cancer Survivor Passport"
* section[0].title = "Care Plan"
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Care Plan generated for the Patient.</div>"
* section[=].code = $loinc#18776-5
* section[=].entry[0] = Reference(CarePlan/73996)
* section[=].entry[+] = Reference(DocumentReference/73997)
* section[+].title = "Diagnosis"
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Patient's cancer diagnosis.</div>"
* section[=].code = $loinc#72135-7
* section[=].entry[0] = Reference(Condition/72960)
* section[=].entry[+] = Reference(Condition/72961)
* section[=].entry[+] = Reference(Procedure/72962)
* section[=].section[0].title = "Chemotherapy"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Chemotherapy medication information.</div>"
* section[=].section[=].code = $loinc#11486-8
* section[=].section[=].entry[0] = Reference(MedicationAdministration/72964)
* section[=].section[=].entry[+] = Reference(MedicationAdministration/72968)
* section[=].section[=].entry[+] = Reference(MedicationAdministration/72969)
* section[=].section[=].entry[+] = Reference(MedicationStatement/72966)
* section[=].section[=].entry[+] = Reference(MedicationStatement/72965)
* section[=].section[+].title = "HSCT"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Stem Cell Transplant procedures.</div>"
* section[=].section[=].code = $cs-generic-eu-pcsp#section-sct
* section[=].section[=].entry[0] = Reference(Procedure/72973)
* section[=].section[=].entry[+] = Reference(Procedure/72974)
* section[=].section[=].entry[+] = Reference(Condition/72978)
* section[=].section[=].entry[+] = Reference(Condition/72975)
* section[=].section[=].entry[+] = Reference(Condition/72976)
* section[=].section[=].entry[+] = Reference(Observation/72977)
* section[=].section[=].entry[+] = Reference(Observation/72972)
* section[=].section[+].title = "Radiation Therapy Episode"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Radiation Therapy procedures.</div>"
* section[=].section[=].code = $cs-generic-eu-pcsp#section-rt
* section[=].section[=].entry[0] = Reference(Procedure/72980)
* section[=].section[=].entry[+] = Reference(Procedure/72981)
* section[=].section[=].entry[+] = Reference(Procedure/72982)
* section[=].section[+].title = "Major Surgery"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Patient's major surgery information.</div>"
* section[=].section[=].code = $loinc#8690-0
* section[=].section[=].entry[0] = Reference(Procedure/72989)
* section[=].section[=].entry[+] = Reference(Procedure/72987)
* section[=].section[=].entry[+] = Reference(Procedure/72988)
* section[=].section[=].entry[+] = Reference(Procedure/72990)
* section[=].section[=].entry[+] = Reference(Procedure/72991)
* section[=].section[=].entry[+] = Reference(Procedure/72992)
* section[=].section[+].title = "Other relevant clinical information and events"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Other relevant clinical information and events for the patient.</div>"
* section[=].section[=].code = $cs-generic-eu-pcsp#section-otherInfos
* section[=].section[=].entry[0] = Reference(Condition/73001)
* section[=].section[=].entry[+] = Reference(Condition/73000)
* section[=].section[=].entry[+] = Reference(Condition/72995)
* section[=].section[=].entry[+] = Reference(Condition/72996)
* section[=].section[=].entry[+] = Reference(Condition/72997)
* section[=].section[=].entry[+] = Reference(Condition/72998)
* section[=].section[=].entry[+] = Reference(Condition/72999)
* section[=].section[=].entry[+] = Reference(Procedure/72993)
* section[=].section[=].entry[+] = Reference(Procedure/72994)
* section[=].section[=].entry[+] = Reference(Procedure/73952)
* section[=].section[+].title = "Relapse/Progression (after FLT)"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Evolution information about the relapse or progression of the Patient's condition.</div>"
* section[=].section[=].code = $cs-generic-eu-pcsp#section-relapseAfterEOT
* section[=].section[=].entry[0] = Reference(Condition/73954)
* section[=].section[=].entry[+] = Reference(Procedure/73955)
* section[=].section[=].section[0].title = "Chemotherapy"
* section[=].section[=].section[=].text.status = #additional
* section[=].section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Chemotherapy medication information.</div>"
* section[=].section[=].section[=].code = $loinc#11486-8
* section[=].section[=].section[=].entry[0] = Reference(MedicationAdministration/73957)
* section[=].section[=].section[=].entry[+] = Reference(MedicationAdministration/73961)
* section[=].section[=].section[=].entry[+] = Reference(MedicationStatement/73959)
* section[=].section[=].section[=].entry[+] = Reference(MedicationStatement/73958)
* section[=].section[=].section[+].title = "HSCT"
* section[=].section[=].section[=].text.status = #additional
* section[=].section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Stem Cell Transplant procedures.</div>"
* section[=].section[=].section[=].code = $cs-generic-eu-pcsp#section-sct
* section[=].section[=].section[=].entry[0] = Reference(Procedure/73964)
* section[=].section[=].section[=].entry[+] = Reference(Procedure/73965)
* section[=].section[=].section[=].entry[+] = Reference(Condition/73969)
* section[=].section[=].section[=].entry[+] = Reference(Condition/73966)
* section[=].section[=].section[=].entry[+] = Reference(Condition/73967)
* section[=].section[=].section[=].entry[+] = Reference(Observation/73968)
* section[=].section[=].section[=].entry[+] = Reference(Observation/73963)
* section[=].section[=].section[+].title = "Radiation Therapy Episode"
* section[=].section[=].section[=].text.status = #additional
* section[=].section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Radiation Therapy procedures.</div>"
* section[=].section[=].section[=].code = $cs-generic-eu-pcsp#section-rt
* section[=].section[=].section[=].entry[0] = Reference(Procedure/73971)
* section[=].section[=].section[=].entry[+] = Reference(Procedure/73972)
* section[=].section[=].section[=].entry[+] = Reference(Procedure/73973)
* section[=].section[=].section[=].entry[+] = Reference(Procedure/73974)
* section[=].section[=].section[+].title = "Major Surgery"
* section[=].section[=].section[=].text.status = #additional
* section[=].section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Major surgery for the Patient.</div>"
* section[=].section[=].section[=].code = $loinc#8690-0
* section[=].section[=].section[=].entry[0] = Reference(Procedure/73981)
* section[=].section[=].section[=].entry[+] = Reference(Procedure/73979)
* section[=].section[=].section[=].entry[+] = Reference(Procedure/73980)
* section[=].section[=].section[=].entry[+] = Reference(Procedure/73982)
* section[=].section[=].section[=].entry[+] = Reference(Procedure/73983)
* section[=].section[=].section[=].entry[+] = Reference(Procedure/73984)
* section[=].section[=].section[+].title = "Other relevant clinical information and events"
* section[=].section[=].section[=].text.status = #additional
* section[=].section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Other relevant clinical information and events for the Patient.</div>"
* section[=].section[=].section[=].code = $cs-generic-eu-pcsp#section-otherInfos
* section[=].section[=].section[=].entry[0] = Reference(Condition/73988)
* section[=].section[=].section[=].entry[+] = Reference(Condition/73989)
* section[=].section[=].section[=].entry[+] = Reference(Condition/73987)
* section[=].section[=].section[=].entry[+] = Reference(Procedure/73985)
* section[=].section[=].section[=].entry[+] = Reference(Procedure/73986)
* section[=].section[+].title = "Relapse/Progression (after FLT)"
* section[=].section[=].text.status = #additional
* section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Evolution information about the relapse or progression of the Patient's condition.</div>"
* section[=].section[=].code = $cs-generic-eu-pcsp#section-relapseAfterEOT
* section[=].section[=].entry[0] = Reference(Condition/73991)
* section[=].section[=].entry[+] = Reference(Procedure/73992)
* section[+].title = "Diagnosis"
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Patient's cancer diagnosis.</div>"
* section[=].code = $loinc#72135-7
* section[=].entry[0] = Reference(Condition/73994)
* section[=].entry[+] = Reference(Condition/73995)