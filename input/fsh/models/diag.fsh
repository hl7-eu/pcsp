Instance: Diagnosis
InstanceOf: StructureDefinition
Description: "Diagnosis
Maturity Level: 2 - Ready for Review"
Title: "Diagnosis"
Usage: #definition
* publisher = "PanCareSurPass project"
* status = #draft
* url = "http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Diagnosis"
* name = "Diagnosis"
* title = "Diagnosis"
* status = #draft
* experimental = true
* description = "Diagnosis
Maturity Level: 2 - Ready for Review"
* version = "0.0.1"
* mapping[0].identity = "fhir"
* mapping[0].uri = "hl7.org/fhir/r4"
* mapping[0].name = "FHIR"
* kind = #logical
* abstract = true
* type = "Diagnosis"
* baseDefinition = "http://hl7.org/fhir/StructureDefinition/Element"
* derivation = #specialization
* differential.element[0].id = "Diagnosis"
* differential.element[0].path = "Diagnosis"
* differential.element[0].short = "Diagnosis"
* differential.element[0].definition = "Diagnosis"
* differential.element[0].min = 1
* differential.element[0].max = "1"
* differential.element[1].id = "Diagnosis.identifier"
* differential.element[1].path = "Diagnosis.identifier"
* differential.element[1].short = "ID"
* differential.element[1].definition = "diagnosis identifier"
* differential.element[1].min = 1
* differential.element[1].max = "*"
* differential.element[1].type.code = #Identifier
* differential.element[2].id = "Diagnosis.dateOfDiagnosis"
* differential.element[2].path = "Diagnosis.dateOfDiagnosis"
* differential.element[2].short = "Date of diagnosis"
* differential.element[2].definition = "Official date of diagnosis. Please report the date as documented in the clinical record. Differences across institutions may occur in defining this date (either the date of the final test (laboratory, imaging, surgery or pathology report) based on which therapeutic decision was taken. In other cases the date of the pathology report is used to define the date of diagnosis. The system will send an 'error' message if the date of diagnosis is more recent hat the date of start of treatment. If the date is unkown or partially missed insert the year at the best of your knowledge."
* differential.element[2].min = 0
* differential.element[2].max = "*"
* differential.element[2].type.code = #BackboneElement
* differential.element[3].id = "Diagnosis.centerOfDiagnosis"
* differential.element[3].path = "Diagnosis.centerOfDiagnosis"
* differential.element[3].short = "Center of diagnosis"
* differential.element[3].definition = "Institution in which the diagnosis was made."
* differential.element[3].min = 0
* differential.element[3].max = "*"
* differential.element[3].type.code = #BackboneElement
* differential.element[4].id = "Diagnosis.centerOfDiagnosis.identifier"
* differential.element[4].path = "Diagnosis.centerOfDiagnosis.identifier"
* differential.element[4].short = "Center code"
* differential.element[4].definition = "Code of the institution in which the diagnosis was made.
IN AIEOP thus information is retrievable from the Mod.1.01 database"
* differential.element[4].min = 0
* differential.element[4].max = "1"
* differential.element[4].type.code = #Identifier
* differential.element[5].id = "Diagnosis.centerOfDiagnosis.name"
* differential.element[5].path = "Diagnosis.centerOfDiagnosis.name"
* differential.element[5].short = "Center name"
* differential.element[5].definition = "Center name"
* differential.element[5].min = 0
* differential.element[5].max = "1"
* differential.element[5].type.code = #string
* differential.element[6].id = "Diagnosis.centerOfDiagnosis.city"
* differential.element[6].path = "Diagnosis.centerOfDiagnosis.city"
* differential.element[6].short = "Center city"
* differential.element[6].definition = "Center city"
* differential.element[6].min = 0
* differential.element[6].max = "1"
* differential.element[6].type.code = #string
* differential.element[7].id = "Diagnosis.centerOfDiagnosis.country"
* differential.element[7].path = "Diagnosis.centerOfDiagnosis.country"
* differential.element[7].short = "Center country"
* differential.element[7].definition = "Center country"
* differential.element[7].min = 1
* differential.element[7].max = "1"
* differential.element[7].type.code = #string
* differential.element[8].id = "Diagnosis.primaryTreatmentCenter"
* differential.element[8].path = "Diagnosis.primaryTreatmentCenter"
* differential.element[8].short = "Primary treatment center"
* differential.element[8].definition = "Report here the institution in which most of the treatment was given"
* differential.element[8].min = 0
* differential.element[8].max = "1"
* differential.element[8].type.code = #BackboneElement
* differential.element[9].id = "Diagnosis.primaryTreatmentCenter.name"
* differential.element[9].path = "Diagnosis.primaryTreatmentCenter.name"
* differential.element[9].short = "Primary treatment center name"
* differential.element[9].definition = "Primary treatment center name"
* differential.element[9].min = 0
* differential.element[9].max = "1"
* differential.element[9].type.code = #string
* differential.element[10].id = "Diagnosis.primaryTreatmentCenter.city"
* differential.element[10].path = "Diagnosis.primaryTreatmentCenter.city"
* differential.element[10].short = "Primary treatment center city"
* differential.element[10].definition = "Primary treatment center city"
* differential.element[10].min = 0
* differential.element[10].max = "1"
* differential.element[10].type.code = #string
* differential.element[11].id = "Diagnosis.primaryTreatmentCenter.country"
* differential.element[11].path = "Diagnosis.primaryTreatmentCenter.country"
* differential.element[11].short = "Primary treatment center country"
* differential.element[11].definition = "Primary treatment center country"
* differential.element[11].min = 0
* differential.element[11].max = "1"
* differential.element[11].type.code = #string
* differential.element[12].id = "Diagnosis.dateOfArrivalAtCenter"
* differential.element[12].path = "Diagnosis.dateOfArrivalAtCenter"
* differential.element[12].short = "Date of arrival to our institution"
* differential.element[12].definition = "Date of arrival to our institution"
* differential.element[12].min = 1
* differential.element[12].max = "*"
* differential.element[12].type.code = #dateTime
* differential.element[13].id = "Diagnosis.diagnosticGroup"
* differential.element[13].path = "Diagnosis.diagnosticGroup"
* differential.element[13].short = "Diagnostic Group"
* differential.element[13].definition = "Diagnostic Group. ICCC-3 Classification (Main and Extended classification tables)"
* differential.element[13].min = 0
* differential.element[13].max = "*"
* differential.element[13].type.code = #CodeableConcept
* differential.element[14].id = "Diagnosis.morphologyCode"
* differential.element[14].path = "Diagnosis.morphologyCode"
* differential.element[14].short = "Diagnosis"
* differential.element[14].definition = "Report the diagnosis using the ICD-O-3 Morphology coding system (an help tool is built into the system). If also the site of the tumor will be reported (see 'site') using the ICD-O-3 Topography codes, the system will automatically define the tumor according to ICCC-3 classic pediatric classification (see: Cancer category). This field is automatically generated if both ICD-O-3 Morphology and Topography data have been reported"
* differential.element[14].min = 0
* differential.element[14].max = "*"
* differential.element[14].type.code = #CodeableConcept
* differential.element[15].id = "Diagnosis.tumorBehaviour"
* differential.element[15].path = "Diagnosis.tumorBehaviour"
* differential.element[15].short = "Tumour behaviour (ICD-O-3 type)"
* differential.element[15].definition = "Tumour behaviour. Automatically generated by the system for benign tumors"
* differential.element[15].min = 0
* differential.element[15].max = "*"
* differential.element[15].type.code = #CodeableConcept
* differential.element[16].id = "Diagnosis.description"
* differential.element[16].path = "Diagnosis.description"
* differential.element[16].short = "Diagnosis description"
* differential.element[16].definition = "Diagnosis description"
* differential.element[16].min = 0
* differential.element[16].max = "1"
* differential.element[16].type.code = #string
* differential.element[17].id = "Diagnosis.site"
* differential.element[17].path = "Diagnosis.site"
* differential.element[17].short = "Site"
* differential.element[17].definition = "Site of the tumor"
* differential.element[17].min = 0
* differential.element[17].max = "*"
* differential.element[17].type.code = #BackboneElement
* differential.element[18].id = "Diagnosis.site.code"
* differential.element[18].path = "Diagnosis.site.code"
* differential.element[18].short = "Site(ICD-O-3 topography)"
* differential.element[18].definition = "Site . Report the site of the tumor using the ICD-O-3 Topography (an help tool is built into the system). If also ICD-O-3 Morphology data have been reported, the system will automatically define the tumor also according to ICCC-3 classic pediatric classification (see: Cancer category)"
* differential.element[18].min = 0
* differential.element[18].max = "*"
* differential.element[18].type.code = #CodeableConcept
* differential.element[19].id = "Diagnosis.site.description"
* differential.element[19].path = "Diagnosis.site.description"
* differential.element[19].short = "Site description"
* differential.element[19].definition = "Site description . Free text to report the site of the tumor"
* differential.element[19].min = 0
* differential.element[19].max = "*"
* differential.element[19].type.code = #string
* differential.element[20].id = "Diagnosis.laterality"
* differential.element[20].path = "Diagnosis.laterality"
* differential.element[20].short = "Laterality"
* differential.element[20].definition = "Laterality"
* differential.element[20].min = 0
* differential.element[20].max = "*"
* differential.element[20].type.code = #CodeableConcept
* differential.element[21].id = "Diagnosis.metastasis"
* differential.element[21].path = "Diagnosis.metastasis"
* differential.element[21].short = "Metastatic"
* differential.element[21].definition = "Some tumors may be either localized (e.g. stage III neuroblastoma) or metastatic. Please specify."
* differential.element[21].min = 0
* differential.element[21].max = "*"
* differential.element[21].type.code = #BackboneElement
* differential.element[22].id = "Diagnosis.metastasis.identifier"
* differential.element[22].path = "Diagnosis.metastasis.identifier"
* differential.element[22].short = "Metastasis id"
* differential.element[22].definition = "Number of metastases"
* differential.element[22].min = 0
* differential.element[22].max = "*"
* differential.element[22].type.code = #integer
* differential.element[23].id = "Diagnosis.metastasis.site"
* differential.element[23].path = "Diagnosis.metastasis.site"
* differential.element[23].short = "Metastasis site"
* differential.element[23].definition = "Please report here the site(s) of metastases detected at diagnosis."
* differential.element[23].min = 0
* differential.element[23].max = "*"
* differential.element[23].type.code = #BackboneElement
* differential.element[24].id = "Diagnosis.metastasis.site.code"
* differential.element[24].path = "Diagnosis.metastasis.site.code"
* differential.element[24].short = "Metastasis site code"
* differential.element[24].definition = "Metastases detected at diagnosis (using ICD-O-3 Topography). If site(s) is unknown, code C80.9"
* differential.element[24].min = 0
* differential.element[24].max = "*"
* differential.element[24].type.code = #CodeableConcept
* differential.element[25].id = "Diagnosis.metastasis.site.description"
* differential.element[25].path = "Diagnosis.metastasis.site.description"
* differential.element[25].short = "Additional description of sites of metastatis"
* differential.element[25].definition = "Additional description of sites of metastatis"
* differential.element[25].min = 0
* differential.element[25].max = "*"
* differential.element[25].type.code = #string
* differential.element[26].id = "Diagnosis.geneticMarkers"
* differential.element[26].path = "Diagnosis.geneticMarkers"
* differential.element[26].short = "Genetic markers(text)"
* differential.element[26].definition = "Please report here any genetic marker: chromosomal alterations (e.g. translocation, deletions, duplications); or other types of genetic alterations (amplification, deletion, mutation)"
* differential.element[26].min = 0
* differential.element[26].max = "1"
* differential.element[26].type.code = #string
* differential.element[27].id = "Diagnosis.stage"
* differential.element[27].path = "Diagnosis.stage"
* differential.element[27].short = "Stage/Risk"
* differential.element[27].definition = "Stage/Risk. Free trext to specify the stage, if applicable, of the tumor at diagnosis. Staging codes may be different across tumor types and eras of treatment. Please report the one used to define the survivors' tumor at the moment of diagnosis.
In case of leukemia the 'risk' (e.g. high, standard) could be reported. If the stage is unknown, specifie 'NK'"
* differential.element[27].min = 0
* differential.element[27].max = "1"
* differential.element[27].type.code = #string
* differential.element[28].id = "Diagnosis.immunology"
* differential.element[28].path = "Diagnosis.immunology"
* differential.element[28].short = "Immunology"
* differential.element[28].definition = "Immunology . This is a free text field. Report here, if applicable (e.g. leukemias) the immunophenotype of the disease (sometimes already reported in the ICD-O-3 Morphology coding). If immunology is unknown, specify 'NK'"
* differential.element[28].min = 0
* differential.element[28].max = "*"
* differential.element[28].type.code = #CodeableConcept
* differential.element[29].id = "Diagnosis.hereditaryPredisposition"
* differential.element[29].path = "Diagnosis.hereditaryPredisposition"
* differential.element[29].short = "Hereditary Cancer Predisposition"
* differential.element[29].definition = "Hereditary Cancer Predisposition Syndromeor medical condition cancer associated. Report here if the survivor has some Hereditary Cancer Predisposition Syndrome or a medical conditions, cancer associated. The SurPass system provides a list of the most common Hereditary Cancer Predisposition Syndromes or other medical conditions reported to be cancer associated (an help tool is build into the system: when you start writing the computer proposes the syndromes/conditions with similar spelling). If the syndrome is not listed, please mark other and then 'Specify'"
* differential.element[29].min = 0
* differential.element[29].max = "*"
* differential.element[29].type.code = #CodeableConcept
* differential.element[30].id = "Diagnosis.notes"
* differential.element[30].path = "Diagnosis.notes"
* differential.element[30].short = "Notes"
* differential.element[30].definition = "Notes"
* differential.element[30].min = 0
* differential.element[30].max = "*"
* differential.element[30].type.code = #string
//  
// === MAPPING === 
// 
* differential.element[0].mapping[0].identity = "fhir"
* differential.element[0].mapping[0].map = "Condition"

* differential.element[1].mapping[0].identity = "fhir"
* differential.element[1].mapping[0].map = "Condition.identifier"

* differential.element[2].mapping[0].identity = "fhir"
* differential.element[2].mapping[0].map = "Condition.extension('condition-assertedDate').valueDateTime
Observation.effectiveDateTime"

* differential.element[3].mapping[0].identity = "fhir"
* differential.element[3].mapping[0].map = "Observation.performer"

* differential.element[4].mapping[0].identity = "fhir"
* differential.element[4].mapping[0].map = "Observation.performer.resolve().identifier
Observation.performer.identifier"

* differential.element[5].mapping[0].identity = "fhir"
* differential.element[5].mapping[0].map = "Observation.performer.resolve().name
Observation.performer.display"

* differential.element[6].mapping[0].identity = "fhir"
* differential.element[6].mapping[0].map = "Observation.performer.resolve().address.city"

* differential.element[7].mapping[0].identity = "fhir"
* differential.element[7].mapping[0].map = "Observation.performer.resolve().address.country"

* differential.element[8].mapping[0].identity = "fhir"
* differential.element[8].mapping[0].map = "Patient.generalPractitioner
Encounter.serviceProvider"

* differential.element[9].mapping[0].identity = "fhir"
* differential.element[9].mapping[0].map = "Patient.generalPractitioner.display
Patient.generalPractitioner.resolve().name
Encounter.serviceProvider.display
Encounter.serviceProvider.resolve().name"

* differential.element[10].mapping[0].identity = "fhir"
* differential.element[10].mapping[0].map = "Patient.generalPractitioner.resolve().address.city
Encounter.serviceProvider.resolve().address.city"

* differential.element[11].mapping[0].identity = "fhir"
* differential.element[11].mapping[0].map = "Patient.generalPractitioner.resolve().address.country
Encounter.serviceProvider.resolve().address.country"

* differential.element[12].mapping[0].identity = "fhir"
* differential.element[12].mapping[0].map = "Encounter.period.start"

* differential.element[13].mapping[0].identity = "fhir"
* differential.element[13].mapping[0].map = "Condition.code.coding"

* differential.element[14].mapping[0].identity = "fhir"
* differential.element[14].mapping[0].map = "Condition.extension('mcode-histology-morphology-behavior').valueCodeableConcept"

* differential.element[15].mapping[0].identity = "fhir"
* differential.element[15].mapping[0].map = "Condition.extension('mcode-histology-morphology-behavior').valueCodeableConcept"

* differential.element[16].mapping[0].identity = "fhir"
* differential.element[16].mapping[0].map = "Condition.text
Condition.code.text"

* differential.element[17].mapping[0].identity = "fhir"
* differential.element[17].mapping[0].map = "Condition.bodySite"

* differential.element[18].mapping[0].identity = "fhir"
* differential.element[18].mapping[0].map = "Condition.bodySite.coding"

* differential.element[19].mapping[0].identity = "fhir"
* differential.element[19].mapping[0].map = "Condition.bodySite.text"

* differential.element[20].mapping[0].identity = "fhir"
* differential.element[20].mapping[0].map = "Condition.bodySite.extension('mcode-laterality-qualifier').valueCodeableConcept"

* differential.element[21].mapping[0].identity = "fhir"
* differential.element[21].mapping[0].map = "Condition.conformsTo('ConditionSecondaryCancerPcsp')"

* differential.element[22].mapping[0].identity = "fhir"
* differential.element[22].mapping[0].map = "Condition.conformsTo('ConditionSecondaryCancerPcsp').identifier"

* differential.element[23].mapping[0].identity = "fhir"
* differential.element[23].mapping[0].map = "Condition.conformsTo('ConditionSecondaryCancerPcsp')bodySite"

* differential.element[24].mapping[0].identity = "fhir"
* differential.element[24].mapping[0].map = "Condition.conformsTo('ConditionSecondaryCancerPcsp').bodySite.coding"

* differential.element[25].mapping[0].identity = "fhir"
* differential.element[25].mapping[0].map = "Condition.conformsTo('ConditionSecondaryCancerPcsp').bodySite.text"

* differential.element[26].mapping[0].identity = "fhir"
* differential.element[26].mapping[0].map = "Condition.evidence:geneticMarker"

* differential.element[27].mapping[0].identity = "fhir"
* differential.element[27].mapping[0].map = "Condition.stage"

* differential.element[28].mapping[0].identity = "fhir"
* differential.element[28].mapping[0].map = "Condition.evidence:immunology"

* differential.element[29].mapping[0].identity = "fhir"
* differential.element[29].mapping[0].map = "Condition.evidence:predisposition"

* differential.element[30].mapping[0].identity = "fhir"
* differential.element[30].mapping[0].map = "Condition.note"














































































































// 
