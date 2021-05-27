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
* differential.element[1].id = "Chemotherapy.productAdministration"
* differential.element[1].path = "Chemotherapy.productAdministration"
* differential.element[1].short = "Product(s) administartion data"
* differential.element[1].definition = "Information about the product(s) administered"
* differential.element[1].min = 1
* differential.element[1].max = "20"
* differential.element[1].type.code = #BackboneElement


* differential.element[2].id = "Chemotherapy.productAdministration.agent"
* differential.element[2].path = "Chemotherapy.productAdministration.agent"
* differential.element[2].short = "Antineoplastic and immunostimulating agents"
* differential.element[2].definition = "In this section, any of the 'antineoplastic and immunostimulating agents' received by the survivor should be reported,  Drugs names are reported based on the ATC code listed under L01 to L04 in Appendix.  Synonyms are included. When you start typing the name of the drug, the possible options will automatically suggested by the system. 
Up to 20 drugs are allowed into the system.  The variable acronym changes based on the ordinal cmulative number of drugs received (e.g. FN_1, FN_2, FN_3, ?)"
* differential.element[2].min = 1
* differential.element[2].max = "1"
* differential.element[2].type.code = #CodeableConcept
* differential.element[2].binding.valueSet = "http://hl7.eu/fhir/ig/pcsp/ValueSet/drugsAtc-eu-pcsp"
* differential.element[2].binding.strength = #extensible
* differential.element[3].id = "Chemotherapy.productAdministration.cumulativeDose"
* differential.element[3].path = "Chemotherapy.productAdministration.cumulativeDose"
* differential.element[3].short = "Cumulative Dose"
* differential.element[3].definition = "Report the total cumulative dose received of each drug. "
* differential.element[3].min = 1
* differential.element[3].max = "1"
* differential.element[3].type.code = #BackboneElement


* differential.element[4].id = "Chemotherapy.productAdministration.cumulativeDose.notAvailable"
* differential.element[4].path = "Chemotherapy.productAdministration.cumulativeDose.notAvailable"
* differential.element[4].short = "Not calculated or not known dose"
* differential.element[4].definition = "Flag indicating if the dose was not calculated or it was not known"
* differential.element[4].min = 0
* differential.element[4].max = "1"
* differential.element[4].type.code = #CodeableConcept


* differential.element[5].id = "Chemotherapy.productAdministration.cumulativeDose.value"
* differential.element[5].path = "Chemotherapy.productAdministration.cumulativeDose.value"
* differential.element[5].short = "Total cumulative dose"
* differential.element[5].definition = "Report the total cumulative dose received of each drug."
* differential.element[5].min = 0
* differential.element[5].max = "1"
* differential.element[5].type.code = #decimal


* differential.element[6].id = "Chemotherapy.productAdministration.cumulativeDose.unit"
* differential.element[6].path = "Chemotherapy.productAdministration.cumulativeDose.unit"
* differential.element[6].short = "Measure unit"
* differential.element[6].definition = "If the dose was calculated, please report the measure unit of the calculation
1 => mg/m2
2 => gr/m2
3 => UI/m2
4 => NK
5 => NC (not calculated)"
* differential.element[6].min = 0
* differential.element[6].max = "1"
* differential.element[6].type.code = #CodeableConcept


* differential.element[7].id = "Chemotherapy.corticosteroids"
* differential.element[7].path = "Chemotherapy.corticosteroids"
* differential.element[7].short = "Prolonged corticosteroids as anti-cancer treatment at least 4 weeks continuously"
* differential.element[7].definition = "Report 'yes' if the survivor was treated with steroids for at least 4 weeks continuously
1 => Yes
2 => No
-9922 => NK"
* differential.element[7].min = 1
* differential.element[7].max = "1"
* differential.element[7].type.code = #CodeableConcept


* differential.element[8].id = "Chemotherapy.intrathecalInjections"
* differential.element[8].path = "Chemotherapy.intrathecalInjections"
* differential.element[8].short = "Intrathecal injections"
* differential.element[8].definition = "Please state if the survivor received any therapeutic intrathecal injections
1 => Yes
2 => No
-9922 => NK"
* differential.element[8].min = 1
* differential.element[8].max = "1"
* differential.element[8].type.code = #CodeableConcept


