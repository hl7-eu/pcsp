// -------------------------------------------------------------------------------				
//  Logical Model				pcsp-FrontLineTreatment.fsh
// -------------------------------------------------------------------------------				
Logical: FrontLineTreatment				
Id: FrontLineTreatment				
Title: "Front Line Treatment"				
Description:  """Front Line Treatment. The first treatment given for a disease. It is often part of a standard set of treatments, such as surgery followed by chemotherapy and radiation. When used by itself, first-line therapy is the one accepted as the best treatment. If it does not cure the disease or it causes severe side effects, other treatment may be added or used instead. Also called induction therapy, primary therapy, and primary treatment.
Maturity Level: 2 - Ready for Review"""				
* followedProtocol 0..* BackboneElement "Followed Protocol" """Followed Protocol"""				
* followedProtocol.type 0..1 CodeableConcept "Protocole type" """2 => Trial/protocol
2 => Personalized
3 => Guidelines
-9922 => NK"""				
* followedProtocol.name 0..1 string "Protocole name" """Protocole name"""				
* followedProtocol.description 0..1 string "Protocol name or description" """If a specific trial/protocol was used, please specify.  
In case of relapse/progression during front line treatment,please report both the name of the front line as well of the salvage treatment
If personalized, please specify.  """				
* followedProtocol.arm 0..1 string "Group/Arm/Randomization" """If the trial was randomized, please define randomization arm"""				
* dateEOT 0..1 dateTime "Date of end of treatment" """It might be the date of first elective end of treatment, or that of the second (or further) end of treatment after the first one. If the date is unkown or partially missed insert the year at the best of your knowledge."""				
* isChemotherapy 0..1 CodeableConcept "Chemotherapy ?" """Chemotherapy ?"""				
* isStemCellTransplantation 0..1 CodeableConcept "Stem Cell transplantation ?" """Stem Cell transplantation ?"""				
* isRadiotherapy 0..1 CodeableConcept "Radiotherapy ?" """Radiotherapy ?"""				
* isMajorSurgery 0..1 CodeableConcept "Major Surgery ?" """Major Surgery ?"""				
* notForRelapse 0..1 BackboneElement "Details not provided for relapses after EOT" """Details not provided for relapses after EOT"""				
* notForRelapse.completeRemission 0..1 BackboneElement "Complete remission" """Complete remission"""				
* notForRelapse.completeRemission.status 1..1 dateTime "Complete remission (Yes/No)" """Complete remission (Yes/No)"""				
* notForRelapse.completeRemission.description 1..1 CodeableConcept "Textual description in case of no remission" """Textual description in case of no remission"""				
* notForRelapse.isProgressionRelapseDuringFLT 0..1 CodeableConcept "Progression/relapse during frontline treatment ?" """Progression/relapse during frontline treatment ?"""				
* notForRelapse.isProgressionRelapseAfterFLT 0..1 CodeableConcept "Progression/relapse after first elective end of treatment ?" """Progression/relapse after first elective end of treatment ?"""				
//--- END				
//--- END				
//--- END				
				
				
// -------------------------------------------------------------------------------				
//  Map to FHIR R4				
// -------------------------------------------------------------------------------				
Mapping: Flt2Fhir				
Id: fhir				
Title: "FrontLineTreatment model to PCSP HL7 FHIR R4 Profiles"				
Source: FrontLineTreatment				
Target: "hl7.org/fhir/r4"				
				
* . -> "Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-flt-eu-pcsp')"				
* followedProtocol -> ".instantiatesCanonical"				
* followedProtocol -> "PlanDefinition.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/PlanDefinition-flt-eu-pcsp')"				
* followedProtocol.type -> ".type"				
* followedProtocol.name -> ".title"				
* followedProtocol.description -> ".description"				
* followedProtocol.arm -> ".extension('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/procedure-fltArm').valueString"				
* dateEOT -> "Procedure.performedPeriod.end"				
* isChemotherapy -> "MedicationAdministration.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/MedicationAdministration-eu-pcsp').exists()"				
* isStemCellTransplantation -> "Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-sct-eu-pcsp').exists()"				
* isRadiotherapy -> "Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-radiotheraphy-eu-pcsp').exists()"				
* isMajorSurgery -> "Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-surgery-eu-pcsp').exists()"				
* notForRelapse -> ""				
* notForRelapse.completeRemission -> "outcome"				
* notForRelapse.completeRemission.status -> "outcome.coding"				
* notForRelapse.completeRemission.description -> "outcome.text"				
* notForRelapse.isProgressionRelapseDuringFLT -> "Condition.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Condition-primaryCancer-eu-pcsp').where( (extension('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/condition-previousStatus').valueCode = #replaspe or #recurrence) and  ( onsetDateTime < Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-flt-eu-pcsp').performedPeriod.end) ).exists()"				
* notForRelapse.isProgressionRelapseAfterFLT -> "Condition.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Condition-primaryCancer-eu-pcsp').where( (extension('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/condition-previousStatus').valueCode = #replaspe or #recurrence) and  ( onsetDateTime >= Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-flt-eu-pcsp').performedPeriod.end) ).exists()"				
// --END				
// --END				
// --END				
// --END				
