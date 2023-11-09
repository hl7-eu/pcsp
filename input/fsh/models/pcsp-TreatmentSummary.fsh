// -------------------------------------------------------------------------------				
//  Logical Model				pcsp-TreatmentSummary.fsh
// -------------------------------------------------------------------------------				
Logical: TreatmentSummary				
Id: TreatmentSummary				
Title: "Treatment Summary"				
Description:  """Treatment Summary data model
Maturity Level: 2 - Ready for Review"""				
				
* subject 1..1 Subject "Subject" """Subject"""				
* diagnosis 0..5 BackboneElement "Diagnosis" """Diagnosis"""				
* diagnosis.details 0..1 Diagnosis "Details about this diagnosis" """Details about this diagnosis"""				
* diagnosis.frontLineTreatment 0..1 FrontLineTreatment "Front line treatment" """Front line treatment"""				
* diagnosis.chemotherapy 0..1 Chemotherapy "Chemotherapy" """Chemotherapy"""				
* diagnosis.stemCellTransplantation 0..* http://hl7.eu/fhir/ig/pcsp/StructureDefinition/StemCellTransplantation "Stem Cell transplantation" """Stem Cell transplantation"""				
* diagnosis.radiotherapy 0..* http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Radiotherapy "Radiotherapy" """Radiotherapy"""				
* diagnosis.majorSurgery 0..* http://hl7.eu/fhir/ig/pcsp/StructureDefinition/MajorSurgery "Major Surgery" """Major Surgery"""				
* diagnosis.otherInfos 0..* http://hl7.eu/fhir/ig/pcsp/StructureDefinition/OtherInfos "Other info and relevant events" """Other info and relevant events"""				
* diagnosis.medicalSuggestion 0..1 string "Medical suggestion" """Medical suggestion"""				
* diagnosis.relapseDuringFLT 0..* http://hl7.eu/fhir/ig/pcsp/StructureDefinition/RelapseDuringFLT "Progression-Relapse during FLT" """Progression-Relapse during Front line treatment"""				
* diagnosis.relapseAfterEOT 0..* BackboneElement "Progression-relapse after the End of Treatment" """Progression-relapse after the End of Treatment"""				
* diagnosis.relapseAfterEOT.details 0..1 RelapseAfterFLT "Details  about this relapse-progression" """Details  about this relapse-progression"""				
* diagnosis.relapseAfterEOT.frontLineTreatment 0..1 http://hl7.eu/fhir/ig/pcsp/StructureDefinition/FrontLineTreatment "Salvage treatment" """The salvage treatment has been executed following"""				
* diagnosis.relapseAfterEOT.chemotherapy 0..1 http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Chemotherapy "Chemotherapy" """Chemotherapy"""				
* diagnosis.relapseAfterEOT.stemCellTransplantation 0..* http://hl7.eu/fhir/ig/pcsp/StructureDefinition/StemCellTransplantation "Stem Cell transplantation" """Stem Cell transplantation"""				
* diagnosis.relapseAfterEOT.radiotherapy 0..* http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Radiotherapy "Radiotherapy" """Radiotherapy"""				
* diagnosis.relapseAfterEOT.majorSurgery 0..* http://hl7.eu/fhir/ig/pcsp/StructureDefinition/MajorSurgery "Major Surgery" """Major Surgery"""				
* diagnosis.relapseAfterEOT.otherInfos 0..* http://hl7.eu/fhir/ig/pcsp/StructureDefinition/OtherInfos "Other info and relevant events" """Other info and relevant events"""				
* diagnosis.relapseAfterEOT.medicalSuggestion 0..1 string "Medical suggestion" """Medical suggestion"""				
* diagnosis.otherConditions 0..* string "Other medical conditions, not cancer associated" """Please list here if the patient has or had other medical conditions not reported to be cancer-associated (e.g. diabetes, congenital cardiopathy, amputations, kidney transplant)"""				
//--- END				
//--- END				
//--- END				
//--- END				
				
* diagnosis.relapseAfterEOT.frontLineTreatment obeys no-frontLineTreatment				
				
// -------------------------------------------------------------------------------				
//  Map to FHIR R4				
// -------------------------------------------------------------------------------				
Mapping: TreatmentSummary2Fhir				
Id: fhir				
Title: "TreatmentSummary model to PCSP HL7 FHIR R4 Profiles"				
Source: TreatmentSummary				
Target: "hl7.org/fhir/r4"				
				
// no map				
* subject -> "Patient"				
// no map				
* diagnosis.details -> "Condition.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Condition-primaryCancer-eu-pcsp')"				
* diagnosis.frontLineTreatment -> "Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-flt-eu-pcsp')"				
* diagnosis.chemotherapy -> "MedicationAdministration.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/MedicationAdministration-eu-pcsp')"				
* diagnosis.stemCellTransplantation -> "Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-sct-eu-pcsp')"				
* diagnosis.radiotherapy -> "Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-radiotheraphy-eu-pcsp')"				
* diagnosis.majorSurgery -> "Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-surgery-eu-pcsp')"				
* diagnosis.otherInfos -> "Procedure"				
* diagnosis.otherInfos -> "Condition"				
// tbd				
* diagnosis.relapseDuringFLT -> "Condition.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Condition-primaryCancer-eu-pcsp').where( (extension('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/condition-previousStatus').valueCode = #replaspe or #recurrence) and  ( onsetDateTime < Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-flt-eu-pcsp').performedPeriod.end) )"				
// no map				
* diagnosis.relapseAfterEOT.details -> "Condition.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Condition-primaryCancer-eu-pcsp').where( (extension('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/condition-previousStatus').valueCode = #replaspe or #recurrence) and  ( onsetDateTime >= Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-flt-eu-pcsp').performedPeriod.end) )"				
* diagnosis.relapseAfterEOT.frontLineTreatment -> "Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-flt-eu-pcsp')"				
* diagnosis.relapseAfterEOT.chemotherapy -> "MedicationAdministration.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/MedicationAdministration-eu-pcsp')"				
* diagnosis.relapseAfterEOT.stemCellTransplantation -> "Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-sct-eu-pcsp')"				
* diagnosis.relapseAfterEOT.radiotherapy -> "Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-radiotheraphy-eu-pcsp')"				
* diagnosis.relapseAfterEOT.majorSurgery -> "Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-surgery-eu-pcsp')"				
* diagnosis.relapseAfterEOT.otherInfos -> "Procedure"				
* diagnosis.relapseAfterEOT.otherInfos -> "Condition"				
// tbd				
// tbd				
// --END				
// --END				
// --END				
// --END				
