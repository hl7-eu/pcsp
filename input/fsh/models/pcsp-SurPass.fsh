// -------------------------------------------------------------------------------				
//  Logical Model				pcsp-SurPass.fsh
// -------------------------------------------------------------------------------				
Logical: SurPass				
Id: SurPass				
Title: "SurPass V2.0"				
Description:  """Survivorship Passport V2.0
Maturity Level: 2 - Ready for Review"""				
* treatmentSummary 1..1 http://hl7.eu/fhir/ig/pcsp/StructureDefinition/TreatmentSummary "Treatment Summary" """Treatment Summary"""				
* carePlan 0..* PlanOfCare "Care plan" """Reccomandation for follow up"""				
//--- END				
//--- END				
//--- END				
				
				
// -------------------------------------------------------------------------------				
//  Map to FHIR R4				
// -------------------------------------------------------------------------------				
Mapping: SurPass2Fhir				
Id: fhir				
Title: "SurPass model to PCSP HL7 FHIR R4 Profiles"				
Source: SurPass				
Target: "hl7.org/fhir/r4"				
				
* . -> "Bundle.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Bundle-eu-pcsp')"				
* treatmentSummary -> "Bundle.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Bundle-eu-pcsp')"				
* carePlan -> "CarePlan.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/CarePlan-eu-pcsp')"				
// --END				
// --END				
// --END				
