Instance: Chemotherapy
InstanceOf: StructureDefinition
Description: "Chemotherapy"
Title: "Chemotherapy"
Usage: #definition
* publisher = "PanCareSurPass project"
* status = #draft
* url = "http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Chemotherapy"
* name = "Chemotherapy"
* title = "Chemotherapy"
* status = #draft
* experimental = true
* description = "Chemotherapy"
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
* differential.element[1].id = "Chemotherapy.startDate"
* differential.element[1].path = "Chemotherapy.startDate"
* differential.element[1].short = "Start date"
* differential.element[1].definition = "Please report the date of the first chemotherapy given. If the date is unkown or partially missed insert the year at the best of your knowledge."
* differential.element[1].min = 1
* differential.element[1].max = "1"
* differential.element[1].type.code = #dateTime
* differential.element[2].id = "Chemotherapy.endDate"
* differential.element[2].path = "Chemotherapy.endDate"
* differential.element[2].short = "End date"
* differential.element[2].definition = "Please report the date of the last chemotherapy given. If the date is unkown or partially missed insert the year at the best of your knowledge."
* differential.element[2].min = 1
* differential.element[2].max = "1"
* differential.element[2].type.code = #dateTime
* differential.element[3].id = "Chemotherapy.istitutionOfTreatment"
* differential.element[3].path = "Chemotherapy.istitutionOfTreatment"
* differential.element[3].short = "Institution of treatment"
* differential.element[3].definition = "Please indicate the institution in which all or most of the chemotherapeutic treatment was given"
* differential.element[3].min = 0
* differential.element[3].max = "1"
* differential.element[3].type.code = #BackboneElement
* differential.element[4].id = "Chemotherapy.istitutionOfTreatment.description"
* differential.element[4].path = "Chemotherapy.istitutionOfTreatment.description"
* differential.element[4].short = "Institution description"
* differential.element[4].definition = "Please provide name, city and countryof the institution"
* differential.element[4].min = 0
* differential.element[4].max = "1"
* differential.element[4].type.code = #string
* differential.element[5].id = "Chemotherapy.istitutionOfTreatment.name"
* differential.element[5].path = "Chemotherapy.istitutionOfTreatment.name"
* differential.element[5].short = "Institution name"
* differential.element[5].definition = "Institution name"
* differential.element[5].min = 0
* differential.element[5].max = "1"
* differential.element[5].type.code = #string
* differential.element[6].id = "Chemotherapy.istitutionOfTreatment.address"
* differential.element[6].path = "Chemotherapy.istitutionOfTreatment.address"
* differential.element[6].short = "Institution address"
* differential.element[6].definition = "Institution address"
* differential.element[6].min = 0
* differential.element[6].max = "1"
* differential.element[6].type.code = #BackboneElement
* differential.element[7].id = "Chemotherapy.istitutionOfTreatment.address.name"
* differential.element[7].path = "Chemotherapy.istitutionOfTreatment.address.name"
* differential.element[7].short = "Institution city"
* differential.element[7].definition = "Institution city"
* differential.element[7].min = 0
* differential.element[7].max = "1"
* differential.element[7].type.code = #string
* differential.element[8].id = "Chemotherapy.istitutionOfTreatment.address.country"
* differential.element[8].path = "Chemotherapy.istitutionOfTreatment.address.country"
* differential.element[8].short = "Institution country"
* differential.element[8].definition = "Institution country"
* differential.element[8].min = 0
* differential.element[8].max = "1"
* differential.element[8].type.code = #string
* differential.element[9].id = "Chemotherapy.productAdministration"
* differential.element[9].path = "Chemotherapy.productAdministration"
* differential.element[9].short = "Product(s) administartion data"
* differential.element[9].definition = "Information about the product(s) administered"
* differential.element[9].min = 1
* differential.element[9].max = "20"
* differential.element[9].type.code = #BackboneElement
* differential.element[10].id = "Chemotherapy.productAdministration.agent"
* differential.element[10].path = "Chemotherapy.productAdministration.agent"
* differential.element[10].short = "Antineoplastic and immunostimulating agents"
* differential.element[10].definition = "In this section, any of the 'antineoplastic and immunostimulating agents' received by the survivor should be reported,  Drugs names are reported based on the ATC code listed under L01 to L04 in Appendix.  Synonyms are included. When you start typing the name of the drug, the possible options will automatically suggested by the system. 
Up to 20 drugs are allowed into the system.  The variable acronym changes based on the ordinal cmulative number of drugs received (e.g. FN_1, FN_2, FN_3, ?)"
* differential.element[10].min = 1
* differential.element[10].max = "1"
* differential.element[10].type.code = #CodeableConcept
* differential.element[11].id = "Chemotherapy.productAdministration.cumulativeDose"
* differential.element[11].path = "Chemotherapy.productAdministration.cumulativeDose"
* differential.element[11].short = "Cumulative Dose"
* differential.element[11].definition = "Report the total cumulative dose received of each drug. "
* differential.element[11].min = 1
* differential.element[11].max = "1"
* differential.element[11].type.code = #BackboneElement
* differential.element[12].id = "Chemotherapy.productAdministration.cumulativeDose.notAvailable"
* differential.element[12].path = "Chemotherapy.productAdministration.cumulativeDose.notAvailable"
* differential.element[12].short = "Not calculated or not known dose"
* differential.element[12].definition = "Flag indicating if the dose was not calculated or it was not known"
* differential.element[12].min = 0
* differential.element[12].max = "1"
* differential.element[12].type.code = #CodeableConcept
* differential.element[13].id = "Chemotherapy.productAdministration.cumulativeDose.measureType"
* differential.element[13].path = "Chemotherapy.productAdministration.cumulativeDose.measureType"
* differential.element[13].short = "How the dose was determined (estimation or calculation)"
* differential.element[13].definition = "Specify if the cumulative dose reported has been all calculated on real data or  estimated based on the expected dose prescribed by the protocol.  If some part of the calculation was based on estimated values, the whole field should be 'estimated'"
* differential.element[13].min = 0
* differential.element[13].max = "1"
* differential.element[13].type.code = #CodeableConcept
* differential.element[14].id = "Chemotherapy.productAdministration.cumulativeDose.measureStatus"
* differential.element[14].path = "Chemotherapy.productAdministration.cumulativeDose.measureStatus"
* differential.element[14].short = "The reported doses are incomplete (either under- or over-estimated)"
* differential.element[14].definition = "Check in case of incomplete doses"
* differential.element[14].min = 0
* differential.element[14].max = "1"
* differential.element[14].type.code = #CodeableConcept
* differential.element[15].id = "Chemotherapy.productAdministration.cumulativeDose.statusReason"
* differential.element[15].path = "Chemotherapy.productAdministration.cumulativeDose.statusReason"
* differential.element[15].short = "Specify reasons why"
* differential.element[15].definition = "Specify reasons of incomplete estimated doses"
* differential.element[15].min = 0
* differential.element[15].max = "1"
* differential.element[15].type.code = #CodeableConcept
* differential.element[16].id = "Chemotherapy.productAdministration.cumulativeDose.value"
* differential.element[16].path = "Chemotherapy.productAdministration.cumulativeDose.value"
* differential.element[16].short = "Total cumulative dose"
* differential.element[16].definition = "Report the total cumulative dose received of each drug."
* differential.element[16].min = 0
* differential.element[16].max = "1"
* differential.element[16].type.code = #decimal
* differential.element[17].id = "Chemotherapy.productAdministration.cumulativeDose.unit"
* differential.element[17].path = "Chemotherapy.productAdministration.cumulativeDose.unit"
* differential.element[17].short = "Measure unit"
* differential.element[17].definition = "If the dose was calculated, please report the measure unit of the calculation
1 => mg/m2
2 => gr/m2
3 => UI/m2
4 => NK
5 => NC (not calculated)"
* differential.element[17].min = 0
* differential.element[17].max = "1"
* differential.element[17].type.code = #CodeableConcept
* differential.element[18].id = "Chemotherapy.corticosteroids"
* differential.element[18].path = "Chemotherapy.corticosteroids"
* differential.element[18].short = "Prolonged corticosteroids as anti-cancer treatment at least 4 weeks continuously"
* differential.element[18].definition = "Report 'yes' if the survivor was treated with steroids for at least 4 weeks continuously
1 => Yes
2 => No
-9922 => NK"
* differential.element[18].min = 1
* differential.element[18].max = "1"
* differential.element[18].type.code = #CodeableConcept
* differential.element[19].id = "Chemotherapy.intrathecalInjections"
* differential.element[19].path = "Chemotherapy.intrathecalInjections"
* differential.element[19].short = "Intrathecal injections"
* differential.element[19].definition = "Intrathecal injections"
* differential.element[19].min = 1
* differential.element[19].max = "1"
* differential.element[19].type.code = #BackboneElement
* differential.element[20].id = "Chemotherapy.intrathecalInjections.status"
* differential.element[20].path = "Chemotherapy.intrathecalInjections.status"
* differential.element[20].short = "did the survivor therapeutic intrathecal injections ?"
* differential.element[20].definition = "Please state if the survivor received any therapeutic intrathecal injections
1 => Yes
2 => No
-9922 => NK"
* differential.element[20].min = 0
* differential.element[20].max = "1"
* differential.element[20].type.code = #CodeableConcept
* differential.element[21].id = "Chemotherapy.intrathecalInjections.number"
* differential.element[21].path = "Chemotherapy.intrathecalInjections.number"
* differential.element[21].short = "Total number"
* differential.element[21].definition = "Report the total number of injections"
* differential.element[21].min = 0
* differential.element[21].max = "1"
* differential.element[21].type.code = #integer
* differential.element[22].id = "Chemotherapy.intrathecalInjections.productName"
* differential.element[22].path = "Chemotherapy.intrathecalInjections.productName"
* differential.element[22].short = "If Yes, drug(s) administered"
* differential.element[22].definition = "Please report the names of drugs injected intrathecal"
* differential.element[22].min = 1
* differential.element[22].max = "*"
* differential.element[22].type.code = #string
* differential.element[23].id = "Chemotherapy.otherTreatments"
* differential.element[23].path = "Chemotherapy.otherTreatments"
* differential.element[23].short = "Other chemothrapeutic treatments"
* differential.element[23].definition = "Report any other chemothrapeutic treatments that are not included in the ATC code"
* differential.element[23].min = 0
* differential.element[23].max = "1"
* differential.element[23].type.code = #BackboneElement
* differential.element[24].id = "Chemotherapy.otherTreatments.ProductName"
* differential.element[24].path = "Chemotherapy.otherTreatments.ProductName"
* differential.element[24].short = "Drugs name"
* differential.element[24].definition = "If yes, describe treatments"
* differential.element[24].min = 1
* differential.element[24].max = "*"
* differential.element[24].type.code = #string
