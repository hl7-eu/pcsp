// -------------------------------------------------------------------------------				
//  Logical Model				pcsp-chemo.fsh
// -------------------------------------------------------------------------------				
Logical: ChemotherapyPcsp				
Id: Chemotherapy				
Title: "Chemotherapy"				
Description:  """Chemotherapy 
Maturity Level: 2 - Ready for Review"""				
* relatedDiagnosis 1..1 Identifier "Related Diagnosis" """Identifier of the diagnosis for which this chemotherapy is performed"""				
* startDate 1..1 dateTime "Start date" """Please report the date of the first chemotherapy given. If the date is unkown or partially missed insert the year at the best of your knowledge."""				
* endDate 1..1 dateTime "End date" """Please report the date of the last chemotherapy given. If the date is unkown or partially missed insert the year at the best of your knowledge."""				
* istitutionOfTreatment 0..1 BackboneElement "Institution of treatment" """Please indicate the institution in which all or most of the chemotherapeutic treatment was given"""				
* istitutionOfTreatment.description 0..1 string "Institution description" """Please provide name, city and countryof the institution"""				
* istitutionOfTreatment.name 0..1 string "Institution name" """Institution name"""				
* istitutionOfTreatment.address 0..1 BackboneElement "Institution address" """Institution address"""				
* istitutionOfTreatment.address.name 0..1 string "Institution city" """Institution city"""				
* istitutionOfTreatment.address.country 0..1 string "Institution country" """Institution country"""				
* productAdministration 1..20 BackboneElement "Product(s) administartion data" """Information about the product(s) administered"""				
* productAdministration.agent 1..1 CodeableConcept "Antineoplastic and immunostimulating agents" """In this section, any of the 'antineoplastic and immunostimulating agents' received by the survivor should be reported,  Drugs names are reported based on the ATC code listed under L01 to L04 in Appendix.  Synonyms are included. When you start typing the name of the drug, the possible options will automatically suggested by the system. 
Up to 20 drugs are allowed into the system.  The variable acronym changes based on the ordinal cmulative number of drugs received (e.g. FN_1, FN_2, FN_3, ?)"""				
* productAdministration.dose 0..1 Quantity "Dose (NOT in PCSP DB)" """Dose received of each drug for this administration"""				
* productAdministration.cumulativeDose 0..1 BackboneElement "Cumulative Dose" """Report the total cumulative dose received of each drug. """				
* productAdministration.cumulativeDose.notAvailable 0..1 CodeableConcept "Not calculated or not known dose" """Flag indicating if the dose was not calculated or it was not known"""				
* productAdministration.cumulativeDose.measureType 0..1 CodeableConcept "How the dose was determined (estimation or calculation)" """Specify if the cumulative dose reported has been all calculated on real data or  estimated based on the expected dose prescribed by the protocol.  If some part of the calculation was based on estimated values, the whole field should be 'estimated'"""				
* productAdministration.cumulativeDose.completionStatus 0..1 CodeableConcept "The reported doses are incomplete (either under- or over-estimated)" """Check in case of incomplete doses"""				
* productAdministration.cumulativeDose.statusReason 0..1 string "Specify reasons why" """Specify reasons of incomplete estimated doses"""				
* productAdministration.cumulativeDose.value 0..1 decimal "Total cumulative dose" """Report the total cumulative dose received of each drug."""				
* productAdministration.cumulativeDose.unit 0..1 CodeableConcept "Measure unit" """If the dose was calculated, please report the measure unit of the calculation
1 => mg/m2
2 => gr/m2
3 => UI/m2
4 => NK
5 => NC (not calculated)"""				
* corticosteroids 0..1 CodeableConcept "Prolonged corticosteroids as anti-cancer treatment at least 4 weeks continuously" """Report 'yes' if the survivor was treated with steroids for at least 4 weeks continuously
1 => Yes
2 => No
-9922 => NK"""				
* intrathecalInjections 0..1 BackboneElement "Intrathecal injections" """Intrathecal injections"""				
* intrathecalInjections.status 0..1 CodeableConcept "Did the survivor receive therapeutic intrathecal injections ?" """Please state if the survivor received any therapeutic intrathecal injections
1 => Yes
2 => No
-9922 => NK"""				
* intrathecalInjections.number 0..1 integer "Total number" """Report the total number of injections"""				
* intrathecalInjections.productName 0..* string "Drug(s) administered" """Please report the names of drugs injected intrathecal"""				
* otherTreatments 0..1 BackboneElement "Other chemothrapeutic treatments" """Report any other chemothrapeutic treatments that are not included in the ATC code"""				
* otherTreatments.productName 1..* string "Drugs name" """If yes, describe treatments"""				
//--- END				
//--- END				
//--- END				
				
				
// -------------------------------------------------------------------------------				
//  Map to FHIR R4				
// -------------------------------------------------------------------------------				
Mapping: Chemo2Fhir				
Id: fhir				
Title: "Chemotherapy model to PCSP HL7 FHIR R4 Profiles"				
Source: Chemotherapy				
Target: "hl7.org/fhir/r4"				
				
* . -> "MedicationAdministration.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/MedicationAdministration-eu-pcsp')"				
* relatedDiagnosis -> ".reasonReference"				
* startDate -> ".effectivePeriod.start"				
* endDate -> ".effectivePeriod.end"				
* istitutionOfTreatment -> ".extension(http://hl7.eu/fhir/ig/pcsp/StructureDefinition/ActLocation-eu-pcsp).conformsTo(http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Location-eu-pcsp)"				
* istitutionOfTreatment.description -> "Location.description"				
* istitutionOfTreatment.name -> "Location.name"				
* istitutionOfTreatment.address -> "Location.address.city"				
* istitutionOfTreatment.address.name -> ""				
* istitutionOfTreatment.address.country -> "Location.address.country"				
* productAdministration -> ".medication[x]"				
* productAdministration.agent -> ".medicationCodeableConcept"				
* productAdministration.dose -> ".dosage.dose"				
* productAdministration.cumulativeDose -> ".extension(http://hl7.eu/fhir/ig/pcsp/StructureDefinition/ResourceRelatedInfo-eu-pcsp).conformsTo(http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Observation-cumulativeDoseChemo-eu-pcsp)"				
* productAdministration.cumulativeDose.notAvailable -> ".valueCodeableConcept = http://terminology.hl7.org/CodeSystem/data-absent-reason#unknown"				
* productAdministration.cumulativeDose.notAvailable -> ".dataAbsentReason"				
* productAdministration.cumulativeDose.measureType -> ".method"				
* productAdministration.cumulativeDose.completionStatus -> ".status = #preliminary"				
* productAdministration.cumulativeDose.statusReason -> ".extension('http://hl7.org/fhir/StructureDefinition/event-statusReason')"				
* productAdministration.cumulativeDose.value -> ".valueQuantity.value"				
* productAdministration.cumulativeDose.unit -> ".valueQuantity.unit (human readeable)"				
* productAdministration.cumulativeDose.unit -> ".valueQuantity.code (code)"				
* corticosteroids -> "MedicationStatement.where(medicationCodeableConcept = 'http://www.whocc.no/atc|H02' and dosage.timing.repeat.boundsDuration.where( value='4' and code = 'w' and comparator ='>' )"				
* intrathecalInjections -> "MedicationStatement.where(dosage.route = https://standardterms.edqm.eu|20042000)"				
* intrathecalInjections.status -> ".exists()"				
* intrathecalInjections.number -> ".dosage.timing.repeat.count"				
* intrathecalInjections.number -> ".count()"				
* intrathecalInjections.productName -> ".medicationCodeableConcept.text"				
* otherTreatments -> "MedicationStatement"				
* otherTreatments.productName -> ".medicationCodeableConcept.text"				
// --END				
// --END				
// --END				
