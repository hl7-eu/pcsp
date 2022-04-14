Instance: Chemotherapy
InstanceOf: StructureDefinition
Description: "Chemotherapy 
Maturity Level: 2 - Ready for Review"
Title: "Chemotherapy"
Usage: #definition
* publisher = "PanCareSurPass project"
* status = #draft
* url = "http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Chemotherapy"
* name = "Chemotherapy"
* title = "Chemotherapy"
* status = #draft
* experimental = true
* description = "Chemotherapy 
Maturity Level: 2 - Ready for Review"
* version = "0.0.1"
* mapping[0].identity = "fhir"
* mapping[0].uri = "hl7.org/fhir/r4"
* mapping[0].name = "FHIR"
* kind = #logical
* abstract = true
* type = "Chemotherapy"
* baseDefinition = "http://hl7.org/fhir/StructureDefinition/Element"
* derivation = #specialization
* differential.element[0].id = "Chemotherapy"
* differential.element[0].path = "Chemotherapy"
* differential.element[0].short = "Chemotherapy"
* differential.element[0].definition = "Chemotherapy"
* differential.element[0].min = 1
* differential.element[0].max = "1"
* differential.element[1].id = "Chemotherapy.relatedDiagnosis"
* differential.element[1].path = "Chemotherapy.relatedDiagnosis"
* differential.element[1].short = "Related Diagnosis"
* differential.element[1].definition = "Identifier of the diagnosis for which this chemotherapy is performed"
* differential.element[1].min = 1
* differential.element[1].max = "1"
* differential.element[1].type.code = #Identifier
* differential.element[2].id = "Chemotherapy.startDate"
* differential.element[2].path = "Chemotherapy.startDate"
* differential.element[2].short = "Start date"
* differential.element[2].definition = "Please report the date of the first chemotherapy given. If the date is unkown or partially missed insert the year at the best of your knowledge."
* differential.element[2].min = 1
* differential.element[2].max = "1"
* differential.element[2].type.code = #dateTime
* differential.element[3].id = "Chemotherapy.endDate"
* differential.element[3].path = "Chemotherapy.endDate"
* differential.element[3].short = "End date"
* differential.element[3].definition = "Please report the date of the last chemotherapy given. If the date is unkown or partially missed insert the year at the best of your knowledge."
* differential.element[3].min = 1
* differential.element[3].max = "1"
* differential.element[3].type.code = #dateTime
* differential.element[4].id = "Chemotherapy.istitutionOfTreatment"
* differential.element[4].path = "Chemotherapy.istitutionOfTreatment"
* differential.element[4].short = "Institution of treatment"
* differential.element[4].definition = "Please indicate the institution in which all or most of the chemotherapeutic treatment was given"
* differential.element[4].min = 0
* differential.element[4].max = "1"
* differential.element[4].type.code = #BackboneElement
* differential.element[5].id = "Chemotherapy.istitutionOfTreatment.description"
* differential.element[5].path = "Chemotherapy.istitutionOfTreatment.description"
* differential.element[5].short = "Institution description"
* differential.element[5].definition = "Please provide name, city and countryof the institution"
* differential.element[5].min = 0
* differential.element[5].max = "1"
* differential.element[5].type.code = #string
* differential.element[6].id = "Chemotherapy.istitutionOfTreatment.name"
* differential.element[6].path = "Chemotherapy.istitutionOfTreatment.name"
* differential.element[6].short = "Institution name"
* differential.element[6].definition = "Institution name"
* differential.element[6].min = 0
* differential.element[6].max = "1"
* differential.element[6].type.code = #string
* differential.element[7].id = "Chemotherapy.istitutionOfTreatment.address"
* differential.element[7].path = "Chemotherapy.istitutionOfTreatment.address"
* differential.element[7].short = "Institution address"
* differential.element[7].definition = "Institution address"
* differential.element[7].min = 0
* differential.element[7].max = "1"
* differential.element[7].type.code = #BackboneElement
* differential.element[8].id = "Chemotherapy.istitutionOfTreatment.address.name"
* differential.element[8].path = "Chemotherapy.istitutionOfTreatment.address.name"
* differential.element[8].short = "Institution city"
* differential.element[8].definition = "Institution city"
* differential.element[8].min = 0
* differential.element[8].max = "1"
* differential.element[8].type.code = #string
* differential.element[9].id = "Chemotherapy.istitutionOfTreatment.address.country"
* differential.element[9].path = "Chemotherapy.istitutionOfTreatment.address.country"
* differential.element[9].short = "Institution country"
* differential.element[9].definition = "Institution country"
* differential.element[9].min = 0
* differential.element[9].max = "1"
* differential.element[9].type.code = #string
* differential.element[10].id = "Chemotherapy.productAdministration"
* differential.element[10].path = "Chemotherapy.productAdministration"
* differential.element[10].short = "Product(s) administartion data"
* differential.element[10].definition = "Information about the product(s) administered"
* differential.element[10].min = 1
* differential.element[10].max = "20"
* differential.element[10].type.code = #BackboneElement
* differential.element[11].id = "Chemotherapy.productAdministration.agent"
* differential.element[11].path = "Chemotherapy.productAdministration.agent"
* differential.element[11].short = "Antineoplastic and immunostimulating agents"
* differential.element[11].definition = "In this section, any of the 'antineoplastic and immunostimulating agents' received by the survivor should be reported,  Drugs names are reported based on the ATC code listed under L01 to L04 in Appendix.  Synonyms are included. When you start typing the name of the drug, the possible options will automatically suggested by the system. 
Up to 20 drugs are allowed into the system.  The variable acronym changes based on the ordinal cmulative number of drugs received (e.g. FN_1, FN_2, FN_3, ?)"
* differential.element[11].min = 1
* differential.element[11].max = "1"
* differential.element[11].type.code = #CodeableConcept
* differential.element[12].id = "Chemotherapy.productAdministration.dose"
* differential.element[12].path = "Chemotherapy.productAdministration.dose"
* differential.element[12].short = "Dose (NOT in PCSP DB)"
* differential.element[12].definition = "Dose received of each drug for this administration"
* differential.element[12].min = 0
* differential.element[12].max = "1"
* differential.element[12].type.code = #Quantity
* differential.element[13].id = "Chemotherapy.productAdministration.cumulativeDose"
* differential.element[13].path = "Chemotherapy.productAdministration.cumulativeDose"
* differential.element[13].short = "Cumulative Dose"
* differential.element[13].definition = "Report the total cumulative dose received of each drug. "
* differential.element[13].min = 0
* differential.element[13].max = "1"
* differential.element[13].type.code = #BackboneElement
* differential.element[14].id = "Chemotherapy.productAdministration.cumulativeDose.notAvailable"
* differential.element[14].path = "Chemotherapy.productAdministration.cumulativeDose.notAvailable"
* differential.element[14].short = "Not calculated or not known dose"
* differential.element[14].definition = "Flag indicating if the dose was not calculated or it was not known"
* differential.element[14].min = 0
* differential.element[14].max = "1"
* differential.element[14].type.code = #CodeableConcept
* differential.element[15].id = "Chemotherapy.productAdministration.cumulativeDose.measureType"
* differential.element[15].path = "Chemotherapy.productAdministration.cumulativeDose.measureType"
* differential.element[15].short = "How the dose was determined (estimation or calculation)"
* differential.element[15].definition = "Specify if the cumulative dose reported has been all calculated on real data or  estimated based on the expected dose prescribed by the protocol.  If some part of the calculation was based on estimated values, the whole field should be 'estimated'"
* differential.element[15].min = 0
* differential.element[15].max = "1"
* differential.element[15].type.code = #CodeableConcept
* differential.element[16].id = "Chemotherapy.productAdministration.cumulativeDose.completionStatus"
* differential.element[16].path = "Chemotherapy.productAdministration.cumulativeDose.completionStatus"
* differential.element[16].short = "The reported doses are incomplete (either under- or over-estimated)"
* differential.element[16].definition = "Check in case of incomplete doses"
* differential.element[16].min = 0
* differential.element[16].max = "1"
* differential.element[16].type.code = #CodeableConcept
* differential.element[17].id = "Chemotherapy.productAdministration.cumulativeDose.statusReason"
* differential.element[17].path = "Chemotherapy.productAdministration.cumulativeDose.statusReason"
* differential.element[17].short = "Specify reasons why"
* differential.element[17].definition = "Specify reasons of incomplete estimated doses"
* differential.element[17].min = 0
* differential.element[17].max = "1"
* differential.element[17].type.code = #string
* differential.element[18].id = "Chemotherapy.productAdministration.cumulativeDose.value"
* differential.element[18].path = "Chemotherapy.productAdministration.cumulativeDose.value"
* differential.element[18].short = "Total cumulative dose"
* differential.element[18].definition = "Report the total cumulative dose received of each drug."
* differential.element[18].min = 0
* differential.element[18].max = "1"
* differential.element[18].type.code = #decimal
* differential.element[19].id = "Chemotherapy.productAdministration.cumulativeDose.unit"
* differential.element[19].path = "Chemotherapy.productAdministration.cumulativeDose.unit"
* differential.element[19].short = "Measure unit"
* differential.element[19].definition = "If the dose was calculated, please report the measure unit of the calculation
1 => mg/m2
2 => gr/m2
3 => UI/m2
4 => NK
5 => NC (not calculated)"
* differential.element[19].min = 0
* differential.element[19].max = "1"
* differential.element[19].type.code = #CodeableConcept
* differential.element[20].id = "Chemotherapy.corticosteroids"
* differential.element[20].path = "Chemotherapy.corticosteroids"
* differential.element[20].short = "Prolonged corticosteroids as anti-cancer treatment at least 4 weeks continuously"
* differential.element[20].definition = "Report 'yes' if the survivor was treated with steroids for at least 4 weeks continuously
1 => Yes
2 => No
-9922 => NK"
* differential.element[20].min = 0
* differential.element[20].max = "1"
* differential.element[20].type.code = #CodeableConcept
* differential.element[21].id = "Chemotherapy.intrathecalInjections"
* differential.element[21].path = "Chemotherapy.intrathecalInjections"
* differential.element[21].short = "Intrathecal injections"
* differential.element[21].definition = "Intrathecal injections"
* differential.element[21].min = 0
* differential.element[21].max = "1"
* differential.element[21].type.code = #BackboneElement
* differential.element[22].id = "Chemotherapy.intrathecalInjections.status"
* differential.element[22].path = "Chemotherapy.intrathecalInjections.status"
* differential.element[22].short = "Did the survivor receive therapeutic intrathecal injections ?"
* differential.element[22].definition = "Please state if the survivor received any therapeutic intrathecal injections
1 => Yes
2 => No
-9922 => NK"
* differential.element[22].min = 0
* differential.element[22].max = "1"
* differential.element[22].type.code = #CodeableConcept
* differential.element[23].id = "Chemotherapy.intrathecalInjections.number"
* differential.element[23].path = "Chemotherapy.intrathecalInjections.number"
* differential.element[23].short = "Total number"
* differential.element[23].definition = "Report the total number of injections"
* differential.element[23].min = 0
* differential.element[23].max = "1"
* differential.element[23].type.code = #integer
* differential.element[24].id = "Chemotherapy.intrathecalInjections.productName"
* differential.element[24].path = "Chemotherapy.intrathecalInjections.productName"
* differential.element[24].short = "Drug(s) administered"
* differential.element[24].definition = "Please report the names of drugs injected intrathecal"
* differential.element[24].min = 0
* differential.element[24].max = "*"
* differential.element[24].type.code = #string
* differential.element[25].id = "Chemotherapy.otherTreatments"
* differential.element[25].path = "Chemotherapy.otherTreatments"
* differential.element[25].short = "Other chemothrapeutic treatments"
* differential.element[25].definition = "Report any other chemothrapeutic treatments that are not included in the ATC code"
* differential.element[25].min = 0
* differential.element[25].max = "1"
* differential.element[25].type.code = #BackboneElement
* differential.element[26].id = "Chemotherapy.otherTreatments.productName"
* differential.element[26].path = "Chemotherapy.otherTreatments.productName"
* differential.element[26].short = "Drugs name"
* differential.element[26].definition = "If yes, describe treatments"
* differential.element[26].min = 1
* differential.element[26].max = "*"
* differential.element[26].type.code = #string
//  
// === MAPPING === 
// 
* differential.element[0].mapping[0].identity = "fhir"
* differential.element[0].mapping[0].map = "MedicationAdministration.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/MedicationAdministration-eu-pcsp')"

* differential.element[1].mapping[0].identity = "fhir"
* differential.element[1].mapping[0].map = ".reasonReference"

* differential.element[2].mapping[0].identity = "fhir"
* differential.element[2].mapping[0].map = ".effectivePeriod.start"

* differential.element[3].mapping[0].identity = "fhir"
* differential.element[3].mapping[0].map = ".effectivePeriod.end"

* differential.element[4].mapping[0].identity = "fhir"
* differential.element[4].mapping[0].map = ".extension(http://hl7.eu/fhir/ig/pcsp/StructureDefinition/ActLocation-eu-pcsp).conformsTo(http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Location-eu-pcsp)"

* differential.element[5].mapping[0].identity = "fhir"
* differential.element[5].mapping[0].map = "Location.description"

* differential.element[6].mapping[0].identity = "fhir"
* differential.element[6].mapping[0].map = "Location.name"

* differential.element[7].mapping[0].identity = "fhir"
* differential.element[7].mapping[0].map = "Location.address.city"




* differential.element[9].mapping[0].identity = "fhir"
* differential.element[9].mapping[0].map = "Location.address.country"

* differential.element[10].mapping[0].identity = "fhir"
* differential.element[10].mapping[0].map = ".medication[x]"

* differential.element[11].mapping[0].identity = "fhir"
* differential.element[11].mapping[0].map = ".medicationCodeableConcept"

* differential.element[12].mapping[0].identity = "fhir"
* differential.element[12].mapping[0].map = ".dosage.dose"

* differential.element[13].mapping[0].identity = "fhir"
* differential.element[13].mapping[0].map = ".extension(http://hl7.eu/fhir/ig/pcsp/StructureDefinition/ResourceRelatedInfo-eu-pcsp).conformsTo(http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Observation-cumulativeDoseChemo-eu-pcsp)"

* differential.element[14].mapping[0].identity = "fhir"
* differential.element[14].mapping[0].map = ".valueCodeableConcept = http://terminology.hl7.org/CodeSystem/data-absent-reason#unknown"
* differential.element[14].mapping[0].identity = "fhir"
* differential.element[14].mapping[0].map = ".dataAbsentReason"

* differential.element[15].mapping[0].identity = "fhir"
* differential.element[15].mapping[0].map = ".method"

* differential.element[16].mapping[0].identity = "fhir"
* differential.element[16].mapping[0].map = ".status = #preliminary"

* differential.element[17].mapping[0].identity = "fhir"
* differential.element[17].mapping[0].map = ".extension('http://hl7.org/fhir/StructureDefinition/event-statusReason')"

* differential.element[18].mapping[0].identity = "fhir"
* differential.element[18].mapping[0].map = ".valueQuantity.value"

* differential.element[19].mapping[0].identity = "fhir"
* differential.element[19].mapping[0].map = ".valueQuantity.unit (human readeable)"

* differential.element[19].mapping[1].identity = "fhir"
* differential.element[19].mapping[1].map = ".valueQuantity.code (code)"

* differential.element[20].mapping[0].identity = "fhir"
* differential.element[20].mapping[0].map = "MedicationStatement.where(medicationCodeableConcept = 'http://www.whocc.no/atc|H02' and dosage.timing.repeat.boundsDuration.where( value='4' and code = 'w' and comparator ='>' )"

* differential.element[21].mapping[0].identity = "fhir"
* differential.element[21].mapping[0].map = "MedicationStatement.where(dosage.route = https://standardterms.edqm.eu|20042000)"

* differential.element[22].mapping[0].identity = "fhir"
* differential.element[22].mapping[0].map = ".exists()"

* differential.element[23].mapping[0].identity = "fhir"
* differential.element[23].mapping[0].map = ".dosage.timing.repeat.count"

* differential.element[23].mapping[1].identity = "fhir"
* differential.element[23].mapping[1].map = ".count()"

* differential.element[24].mapping[0].identity = "fhir"
* differential.element[24].mapping[0].map = ".medicationCodeableConcept.text"

* differential.element[25].mapping[0].identity = "fhir"
* differential.element[25].mapping[0].map = "MedicationStatement"

* differential.element[26].mapping[0].identity = "fhir"
* differential.element[26].mapping[0].map = ".medicationCodeableConcept.text"



















































































































// 
