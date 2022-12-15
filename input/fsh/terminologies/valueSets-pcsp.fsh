
// --------------------------------------------------------
ValueSet: BodyLocationQualifierVS
Id: mcode-body-location-qualifier-vs
Title: "Body Location Qualifier Value Set"
Description: "Qualifiers to refine a body structure or location including qualifiers for relative location, directionality, number, and plane, and excluding qualifiers for laterality."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
// Changed to intensional definition
* ^experimental = false
* include codes from system $sct where concept is-a #106233006 "Topographic Modifier (qualifer)"
* include codes from system $sct where concept is-a #272424004 "Relative Sites (qualifier)"
* $sct#255503000 "Entire (qualifier value)"
* exclude codes from valueset LateralityQualifierVS // laterality is separated into a separate value set


// --------------------------------------------------------
ValueSet: AnnotationTypeVS
Id: annotation-type-vs
Title: "Annotation type"
Description: "Annotation type"

* ^experimental = false
* CsGenericPcsp#nar-chronicCond "Chronic conditions" 
* CsGenericPcsp#nar-planNotes "Plan notes" 


// --------------------------------------------------------
ValueSet: RelapseTypeVS
Id: relapse-type-vs
Title: "Relapse type (Local/Distant/Combined)"
Description: "Relapse type (Local/Distant/Combined)"

* ^experimental = false
* $sct#255470001 "Local"
* $sct#261007001 "Distant"
* $sct#89780004 "Combined"


// --------------------------------------------------------
ValueSet: OtherInfosConditionVS
Id: otherInfos-condition-vs
Title: "Other Infors Condition"
Description:  "Other Infors Condition"

* ^experimental = false
* $sct#48130008 "Hypogonadism"
* $sct#397827003 "Growth hormone deficiency"
* $sct#230745008 "Hydrocephalus"
* $sct#10295004 "Chronic viral hepatitis"
* $sct#65617004 "Veno-occlusive disease of the liver" // it should be the same of Hepatic sinusoidal obstruction syndrome (SOS), also called veno-occlusive disease (VOD)
* $sct#439127006 "Thrombosis"

// --------------------------------------------------------
ValueSet: ActiveResolvedConditionVS
Id: activeResolved-condition-vs
Title: "Active or resolved Condition"
Description:  "Active or resolved Condition"
* ^experimental = false
* $condition-clinical#active 
* $condition-clinical#resolved

// --------------------------------------------------------
ValueSet: ToxicitySeverityVS
Id: toxicityseverity-vs
Title: "Toxicity Severity"
Description: "Toxicity Severity"

* ^experimental = false
* include codes from valueset $condition-severity-uv-ips
* $data-absent-reason#unknown "Unknown"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: FromToPosteriorAnteriorVs
Id: vs-fromToPosteriorAnterior-eu-pcsp 
Title: "Body Location Qualifier Value Set"
Description: "Types of documents exchanged with the PCSP platform"
//-------------------------------------------------------------------------------------------

* ^experimental = false
* CsGenericPcsp#to-structure "To-structure"
* $sct#272488003 "From-structure"
* $sct#255549009 "Anterior" 
* $sct#255551008 "Posterior" 

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: DocRefDocType
Id: vs-docref-doctype-eu-pcsp 
Title: "Document Type"
Description: "Types of documents exchanged with the PCSP platform"
//-------------------------------------------------------------------------------------------

* ^experimental = false
* CsGenericPcsp#surpass "Childhood Cancer Survivor Passport"
* $loinc#18748-4 "Diagnostic Imaging Report"
* $loinc#34105-7 "Hospital Discharge summary"
* $loinc#11502-2 "LABORATORY REPORT.TOTAL"

/* ===== COMMENTED
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: DocRefMimeType
Id: vs-docref-mimetype-eu-pcsp 
Title: "MIME Type"
Description: "MIME types of documents exchanged with the PCSP platform"
//-------------------------------------------------------------------------------------------
* urn:ietf:bcp:13#application/pdf

====== END */

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: FltPlanType
Id: vs-flt-plan-type-eu-pcsp 
Title: "FLT Plan Type"
Description: "FLT Plan Type"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* $plan-definition-type#clinical-protocol "Clinical Protocol" 
* CsGenericPcsp#personalized-plan "Personalized"
* CsGenericPcsp#guidelines-plan "Guidelines"
* $data-absent-reason#unknown "Unknown"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: SctProphylaxisCathegory
Id: vs-sct-prophylaxis-cathegory-eu-pcsp 
Title: "SCT Prophylaxis Cathegory"
Description: "SCT Prophylaxis Cathegory"
//-------------------------------------------------------------------------------------------

/// ===> CHECK IF IN GPS
* ^experimental = false
* $sct#416608005 "Drug therapy"
* $sct#419815003 "Radiotherapy"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: SctProphylaxisType
Id: vs-sct-prophylaxis-type-eu-pcsp 
Title: "SCT Prophylaxis Type"
Description: "SCT Prophylaxis Type"
//-------------------------------------------------------------------------------------------

/// ===> CHECK IF IN GPS
* ^experimental = false
* $sct#868254008 "GVHD (graft versus host disease) prophylaxis"


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: SctTimingEvent
Id: vs-sct-timing-eu-pcsp 
Title: "Before/after procedure"
Description: "SCT Timing events: Before/after procedure"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* CsGenericPcsp#before-procedure "Before procedure"
* CsGenericPcsp#after-procedure "After procedure"   


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: SctAcuteGvhdGrade
Id: vs-Gvhd-acute-grade-eu-pcsp 
Title: "Acute Gvhd Grade"
Description: "Acute Gvhd Grade"
//-------------------------------------------------------------------------------------------
* ^experimental = false
//-- Gvhd Grade (acute)
* CsGenericPcsp#Gvhd-acute-1 "Grade 1" 
* CsGenericPcsp#Gvhd-acute-2 "Grade 2" 
* CsGenericPcsp#Gvhd-acute-3 "Grade 3" 
* CsGenericPcsp#Gvhd-acute-4 "Grade 4"
* $data-absent-reason#unknown "Unknown"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: SctChronicGvhdGrade
Id: vs-Gvhd-chronic-grade-eu-pcsp
Title: "Chronic Gvhd condition"
Description: "Acute Gvhd Grade"
//-------------------------------------------------------------------------------------------
* ^experimental = false
//-- Gvhd Grade (chronic)
* CsGenericPcsp#Gvhd-chr-1 "Limited" 	
* CsGenericPcsp#Gvhd-chr-2 "Extensive" 
* $data-absent-reason#unknown "Unknown"


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: SctGvhdType
Id: vs-Gvhd-type-eu-pcsp
Title: "Gvhd condition"
Description: "Gvhd condition"
//-------------------------------------------------------------------------------------------
/// ===> CHECK IF IN GPS
* ^experimental = false
* $sct#234646005 "Graft-versus-host disease" 
* $sct#402355000 "Acute graft-versus-host disease"
* $sct#402356004 "Chronic graft-versus-host disease"
* CsGenericPcsp#Gvhd-unk "Gvhd Unknown" 


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: SctDonorTypeVs
Id: vs-sct-donorType-eu-pcsp
Title: "Stem Cell Donor type"
Description: "Stem Cell Donor type"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* CsGenericPcsp#sct-matched-related "matched related" 	
* CsGenericPcsp#sct-matched-unrelated "matched unrelated" 
* CsGenericPcsp#sct-mismatch-related "mismatch related" 	 
* CsGenericPcsp#sct-mismatch-unrelated "mismatch unrelated"
* CsGenericPcsp#sct-haplo-identical    "haplo-identical"    
  
* CsGenericPcsp#sct-matched-related–sibling	"matched related – sibling"	
* CsGenericPcsp#sct-matched-related–parent	"matched related – parent"  
* CsGenericPcsp#sct-matched-related–other	"matched related – other"   


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: SctSourceTypeVs
Id: vs-sct-sourceType-eu-pcsp
Title: "Stem Cell Source type"
Description: "Stem Cell Source type"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* CsGenericPcsp#sct-pbsc 		"PBSC"			
* CsGenericPcsp#sct-bone-marrow	"Bone marrow" 
* CsGenericPcsp#sct-cord        "Cord"      


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: SctTypeVs
Id: vs-sct-type-eu-pcsp
Title: "Stem Cell Transplantation type"
Description: "Stem Cell Transplantation type"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* $sct#53088000 "Autogenous transplantation" // check GPS
* $sct#50223000 "Allogeneic transplantation"   // check GPS
* $sct#77465005 "Transplantation"   // check GPS 

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: NotPerformedUnknownVs
Id: vs-npunk-eu-pcsp
Title: "Not Performed|Unknown"
Description: "Not Performed/Unknown Value Set"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* $data-absent-reason#unknown "Unknown"
* $data-absent-reason#not-performed "Not Performed"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: NotApplicableUnknownVs
Id: vs-naunk-eu-pcsp
Title: "Not Applicable|Unknown"
Description: "Not Applicable/Unknown Value Set"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* $data-absent-reason#unknown "Unknown"
* $data-absent-reason#not-applicable "Not Applicable"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: OtherUnknownTextVs
Id: vs-othUnkTxt-eu-pcsp
Title: "Other/Unknown/Text"
Description: "Other/Unknown/Text Value Set"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* $data-absent-reason#unknown "Unknown"
* $v3-NullFlavor#OTH "Other"
* $data-absent-reason#as-text "As Text"

// --------------------------------------------------------
ValueSet: LeftRightBiUnilateralVS
Id: laterality-qualifier-lrub-vs
Title: "Laterality Qualifier Value Set"
Description: "Qualifiers to specify laterality."
/* ---------------------------------
* $loinc#LA4585-1  "Left"		
* $loinc#LA4306-2  "Right"		
* $loinc#LA25377-5 "Bilateral"
* $loinc#LA25378-3 "Unilateral"
* $loinc#LA27460-7 "Midline"
// * codes from valueset NotApplicableUnknownVs
* $data-absent-reason#unknown "Unknown"
* $data-absent-reason#not-applicable "Not Applicable"

1 => Right Monolateral
2 => Left Monolateral
3 => Monolateral unknown side
4 => Bilateral
-9911 => Not applicable (NA)
-9922 => NK

*/
* ^experimental = false
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* $sct#51440002	 "Bilateral" // "Right and left (qualifier value)", 4 => Bilateral
* $sct#66459002 "Unilateral" // 3 => Monolateral unknown side
* $sct#24028007	 "Right" // 1 => Right Monolateral
* $sct#7771000	 "Left" //2 => Left Monolateral
* $data-absent-reason#unknown "Unknown" // -9922 => NK
* $data-absent-reason#not-applicable "Not Applicable" // -9911 => Not applicable (NA)


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: CalculatedEstimatedVs
Id: vs-calcest-eu-pcsp
Title: "Calculated|Estimated"
Description: "Calculated|Estimated Value Set"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* $sct#703858009 "Numeric estimation technique" 
* $sct#702873001 	"Calculation technique"
* $data-absent-reason#unknown "Unknown"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: ChemoUnitsVs
Title: "Chemotherapy cumulative dose units"
Description: "Chemotherapy cumulative dose units"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* $ucum#mg/m2
// * $ucum#gr/m2
* $ucum#g/m2
// * $ucum#UI/m2
* $ucum#[iU]/m2


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: SurgicalProcedureTypeVs
Id: vs-surgicalProcedureType-eu-pcsp
Title: "Surgical Procedure Type"
Description: "Types of surgical procedure this resource is referring to"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* codes from valueset ShuntProcedureTypeVs
* codes from valueset AmputationProcedureTypeVs
* codes from valueset ColostomyProcedureTypeVs
* codes from valueset GastrostomyProcedureTypeVs
* codes from valueset ProstheticProcedureTypeVs
* codes from valueset $absent-or-unknown-procedures-uv-ips


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: ShuntProcedureTypeVs
Id: vs-shuntProcedureType-eu-pcsp
Title: "Shunt Procedure Type"
Description: "Types of shunt surgical procedure this resource is referring to"

//-------------------------------------------------------------------------------------------
// ---
* ^experimental = false 
* CsGenericPcsp#sht-47020004 "Ventriculoperitoneal shunt"  // SCT 47020004 | Ventriculoperitoneal shunt (procedure)
* CsGenericPcsp#sht-4579008 "Ventriculo-atrial shunt"  //  4579008 | Creation of cerebral ventriculo-atrial shunt (procedure) |
* CsGenericPcsp#sht-280384000 "Subdural-peritoneal shunt" // 280384000 | Subdural-peritoneal shunt operation (procedure) |
* CsGenericPcsp#sht-265218003 "Cisternostomy (III ventricule)"  // 265218003 | Creation of ventriculocisternostomy (procedure) ????
* CsGenericPcsp#sht-other "Other shunt procedure" // 88834003 | Construction of shunt (procedure) | ???


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: AmputationProcedureTypeVs
Id: vs-amputationProcedureType-eu-pcsp
Title: "Amputation Surgical Procedure Type"
Description: "Types of amputation procedure this resource is referring to"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* $sct#81723002 "Amputation" // check if in GPS

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: ColostomyProcedureTypeVs
Id: vs-colostomyProcedureType-eu-pcsp
Title: "Colostomy Surgical Procedure Type"
Description: "Types of colostomy procedure this resource is referring to"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* $sct#398740003 "Colostomy" // check if in GPS

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: GastrostomyProcedureTypeVs
Id: vs-gastrostomyProcedureType-eu-pcsp
Title: "Gastrostomy Surgical Procedure Type"
Description: "Types of Gastrostomy procedure this resource is referring to"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* $sct#54956002 "Gastrostomy"  // check if in GPS


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: ProstheticProcedureTypeVs
Id: vs-ProstheticProcedureType-eu-pcsp
Title: "Prosthetic Surgical Procedure Type"
Description: "Types of Prosthetic procedure this resource is referring to"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* $sct#88937006 "Prosthetic procedure"  // check if in GPS 

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: ProsthesisTypeVs
Id: vs-ProsthesisType-eu-pcsp
Title: "Prosthesis Type"
Description: "Types of Prosthesis this procedure is referring to"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* CsGenericPcsp#int-prosthesis "Internal Prosthesis" 
* CsGenericPcsp#ext-prosthesis "External Prosthesis"
* $data-absent-reason#unknown "Unknown"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: RadiotherapyTypeVs
Id: vs-radiotherapyType-eu-pcsp
Title: "Radiotherapy Type"
Description: "Types of radiotherapy this procedure is referring to"

//-------------------------------------------------------------------------------------------
* ^experimental = false
* $sct#33195004 "External beam radiotherapy"
* $sct#152198000 "Brachytherapy"
* $sct#399315003 "Radionuclide therapy"
* $data-absent-reason#unknown "Unknown"
// * $sct#445232009 "Boost radiation therapy" // to be checked for GPS ....


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: RadiotherapyDoseTypeVs
Id: vs-radiotherapyDoseType-eu-pcsp
Title: "Radiotherapy Dose Type"
Description: "Types of radiotherapy cumulative dose this procedure is referring to"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* $dicomOntology#113725 "Dose (RP) Total"
* $sct#445565002 "Total boost radiation dose delivered"
* $sct#445461008 "Total radiation dose delivered"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: RadiotherapyDeviceType
Id: vs-radiotherapyDeviceType-eu-pcsp
Title: "Radiotherapy Device Type"
Description: "Radiotherapy device type this procedure is referring to"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* CsGenericPcsp#orthovoltage "Orthovoltage"
* CsGenericPcsp#linac-mv "Linac MV"
* CsGenericPcsp#linac-el "Linac electrons" 
* CsGenericPcsp#cobalt "Cobalt MV" 
* CsGenericPcsp#proton-beam "Proton Beam"
* codes from valueset UnknownOtherVs

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: BrachytherapyType
Id: vs-brachytherapyType-eu-pcsp
Title: "Brachytherapy Type"
Description: "Types of Brachytherapy this procedure is referring to"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* CsGenericPcsp#surface-brachytherapy "Surface brachytherapy"
* CsGenericPcsp#interstitial-brachytherapy "Interstitial brachytherapy" 
* CsGenericPcsp#intra-brachytherapy  "Intracavitary or intraluminal brachytherapy"
* CsGenericPcsp#unk-brachytherapy "Unknown brachytherapy"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: RadiotherapyIsotopes
Id: vs-isotopes-eu-pcsp
Title: "Radiotherapy Isotopes"
Description: "Radiotherapy Isotopes"
// check if they are in the GPS otherwise update the value set....
//-------------------------------------------------------------------------------------------
* ^experimental = false

* $sct#13237009	 "Cesium-131"
* $sct#55117002	 "Cesium-137"
* $sct#5405008	 "Cobalt-60"
* $sct#24301009	 "Gold-198"
* $sct#68630002	 "Iodine-125"
* $sct#1368003	 "Iodine-131"
* $sct#48341001	 "Iridium-192"
* $sct#447553000 "Lutetium-177"
* $sct#9351000	 "Palladium-103"
* $sct#32505007	 "Phosphorus-32"
* $sct#24853006	 "Radium-223"
* $sct#423578007 "Rhenium-188"
* $sct#8227001	 "Ruthenium-106"
* $sct#14071002	 "Strontium-90"
* $sct#80751004	 "Xenon-133"
* $sct#14691008	 "Yttrium-90"
* $sct#395786000 "MIBG - metaiodobenzylguanidine"
* codes from valueset UnknownOtherVs

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: RadioUnitsVs
Id: vs-radiotherapyDoseUnit-eu-pcsp
Title: "Radiotherapy dose units"
Description: "Radiotherapy dose units"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* $ucum#MeV	"megaelectronvolt"
* $ucum#MV	"megavolt"
* $ucum#kV	"kilovolt"


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: RouteOfAdminVs
Id: vs-roa-eu-pcsp
Title: "Route of administration"
Description: "Route of administration"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* $edqm#20042000 "Intrathecal use"


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: UnknownOtherVs
Id: vs-unknownOther-eu-pcsp
Title: "Unknown|Other"
Description: "Unknown or Other"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* $data-absent-reason#unknown "Unknown"
* $v3-NullFlavor#OTH "Other"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: AffectedOrganVs
Id: vs-affectedOrgan-eu-pcsp
Title: "Affected Organs (surgery)"
Description: "Affected Organs (surgery)"
//-------------------------------------------------------------------------------------------

// Oesophagus; Abdomen; Brain; Face; Liver; Spine; Spinal Cord; Sympathetic nerves; Chest/thorax; Pelvis
* ^experimental = false
* $sct#32849002 "Oesophagus"
* $sct#818983003 "Abdomen"
* $sct#12738006  "Brain"
* $sct#89545001 "Face"
* $sct#10200004 "Liver"
* $sct#421060004 "Spine"
* $sct#2748008  "Spinal Cord"
* $sct#90456006 "Sympathetic nerve"
* $sct#51185008 "Thoracic structure"
* $sct#12921003 "Pelvis"
* codes from valueset UnknownOtherVs


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: SacrifiedOrganVs
Id: vs-sacrifiedOrgan-eu-pcsp
Title: "Sacrified Organs (surgery)"
Description: "Sacrified Organs (surgery). Organs are 'sacrified' either to allow a radical excision of the tumor or on purpose (spleen) for staging procedures"
//-------------------------------------------------------------------------------------------

// Spleen, Kidney, Eye, Lung, Ovary, Hypothalamus/hypophysis, Thyroid, Bladder, uterus Other
* ^experimental = false

* $sct#78961009 "Spleen"
* $sct#64033007 "Kidney"
* $sct#81745001 "Eye"
* $sct#39607008  "Lung"
* $sct#15497006 "Ovary"
* $sct#67923007 "Hypothalamic structure" 
* $sct#69748006  "Thyroid"
* $sct#89837001 "Bladder"
* $sct#35039007 "Uterus"
* codes from valueset UnknownOtherVs


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: SurgicalActionVs
Id: vs-action-eu-pcsp
Title: "Surgical Actions"
Description: "Surgical Actions"
//-------------------------------------------------------------------------------------------
* ^experimental = false
* $sct#129303008 "Removal - action"
* $sct#129325002 "Introduction - action"
* $sct#129336009 "Implantation - action"
// * $sct#424208002 "Shunt - action"
* $sct#129425003 "Application - action"
* codes from valueset NotApplicableUnknownVs

/* =======
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: ObservationYesNoVs
Id: vs-observationYesNo-eu-pcsp
Title: "Observation codes for which a Yes/No answer is captured."
Description: "Observation codes for which a Yes/No answer is captured."
//-------------------------------------------------------------------------------------------
* CsGenericPcsp#4w-corticosteroids-anti-cancer
* CsGenericPcsp#intrathecal-injections

==== */

