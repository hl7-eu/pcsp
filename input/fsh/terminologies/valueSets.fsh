
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: NotPerformedUnknownVs
Id: vs-npunk-eu-pcsp
Title: "Not Performed|Unknown"
Description: "Not Performed/Unknown Value Set"
//-------------------------------------------------------------------------------------------
* $data-absent-reason#unknown "Unknown"
* $data-absent-reason#not-performed "Not Performed"


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: CalculatedEstimatedVs
Id: vs-calcest-eu-pcsp
Title: "Calculated|Estimated"
Description: "Calculated|Estimated Value Set"
//-------------------------------------------------------------------------------------------
* $sct#703858009 "Numeric estimation technique" 
* $sct#702873001 	"Calculation technique"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: ChemoUnitsVs
Title: "Chemotherapy cumulative dose units"
Description: "Chemotherapy cumulative dose units"
//-------------------------------------------------------------------------------------------
* $ucum#mg/m2
// * $ucum#gr/m2
* $ucum#g/m2
// * $ucum#UI/m2
* $ucum#[iU]/m2


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: OtherSurgicalProcedureTypeVs
Id: vs-otherProcedureType-eu-pcsp
Title: "Other Surgical Procedure Type"
Description: "Types of surgical procedure this resource is referring to"

//-------------------------------------------------------------------------------------------

* codes from valueset ShuntProcedureTypeVs
* codes from valueset AmputationProcedureTypeVs
* codes from valueset ColostomyProcedureTypeVs
* codes from valueset GastrostomyProcedureTypeVs
* codes from valueset ProstheticProcedureTypeVs
* $data-absent-reason#unknown "Unknown"


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: ShuntProcedureTypeVs
Id: vs-shuntProcedureType-eu-pcsp
Title: "Shunt Procedure Type"
Description: "Types of shunt surgical procedure this resource is referring to"

//-------------------------------------------------------------------------------------------
// --- 
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
* $sct#81723002 "Amputation" // check if in GPS

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: ColostomyProcedureTypeVs
Id: vs-colostomyProcedureType-eu-pcsp
Title: "Colostomy Surgical Procedure Type"
Description: "Types of colostomy procedure this resource is referring to"
//-------------------------------------------------------------------------------------------
* $sct#398740003 "Colostomy" // check if in GPS

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: GastrostomyProcedureTypeVs
Id: vs-gastrostomyProcedureType-eu-pcsp
Title: "Gastrostomy Surgical Procedure Type"
Description: "Types of Gastrostomy procedure this resource is referring to"
//-------------------------------------------------------------------------------------------
* $sct#54956002 "Gastrostomy"  // check if in GPS


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: ProstheticProcedureTypeVs
Id: vs-ProstheticProcedureType-eu-pcsp
Title: "Prosthetic Surgical Procedure Type"
Description: "Types of Prosthetic procedure this resource is referring to"
//-------------------------------------------------------------------------------------------
* $sct#88937006 "Prosthetic procedure"  // check if in GPS 

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: ProsthesisTypeVs
Id: vs-ProsthesisType-eu-pcsp
Title: "Prosthesis Type"
Description: "Types of Prosthesis this procedure is referring to"
//-------------------------------------------------------------------------------------------
* CsGenericPcsp#int-prosthesis "Internal Prosthesis" 
* CsGenericPcsp#ext-prosthesis "External Prosthesis" 

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: RadiotherapyTypeVs
Id: vs-radiotherapyType-eu-pcsp
Title: "Radiotherapy Type"
Description: "Types of radiotherapy this procedure is referring to"

//-------------------------------------------------------------------------------------------
* $sct#33195004 "External beam radiotherapy"
* $sct#152198000 "Brachytherapy"
* $sct#399315003 "Radionuclide therapy"
* $sct#445232009 "Boost radiation therapy" // to be checked for GPS ....


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: SctTypeVs
Id: vs-sctType-eu-pcsp
Title: "(Stem Cell) Transplantation  Type"
Description: "Types of Stem Cell Transplantation this procedure is referring to"
// not yet in the GPS ....
// too generic codes ...
//-------------------------------------------------------------------------------------------
* $sct#33195004 "External beam radiotherapy"
* $sct#152198000 "Brachytherapy"
* $sct#399315003 "Radionuclide therapy"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: RadiotherapyDoseTypeVs
Id: vs-radiotherapyDoseType-eu-pcsp
Title: "Radiotherapy Dose Type"
Description: "Types of radiotherapy cumulative dose this procedure is referring to"
//-------------------------------------------------------------------------------------------
* $dicomOntology#113725 "Dose (RP) Total"
* $sct#445565002 "Total boost radiation dose delivered"
* $sct#445461008 "Total radiation dose delivered"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: RadiotherapyDeviceType
Id: vs-radiotherapyDeviceType-eu-pcsp
Title: "Radiotherapy Device Type"
Description: "Radiotherapy device type this procedure is referring to"
//-------------------------------------------------------------------------------------------
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
* $ucum#MeV	"megaelectronvolt"
* $ucum#MV	"megavolt"
* $ucum#kV	"kilovolt"


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: RouteOfAdminVs
Id: vs-roa-eu-pcsp
Title: "Route of administration"
Description: "Route of administration"
//-------------------------------------------------------------------------------------------
* $edqm#20042000 "Intrathecal use"


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: UnknownOtherVs
Id: vs-unknownOther-eu-pcsp
Title: "Unknown|Other"
Description: "Unknown or Other"
//-------------------------------------------------------------------------------------------
* $data-absent-reason#unknown "Unknown"
* $v3-NullFlavor#OTH "Other"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: AffectedOrganVs
Id: vs-affectedOrgan-eu-pcsp
Title: "Affected Organs (surgery)"
Description: "Affected Organs (surgery)"
//-------------------------------------------------------------------------------------------

// Oesophagus; Abdomen; Brain; Face; Liver; Spine; Spinal Cord; Sympathetic nerves; Chest/thorax; Pelvis

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

* $sct#129303008 "Removal - action"
* $sct#129325002 "Introduction - action"
* $sct#129336009 "Implantation - action"
* $sct#424208002 "Shunt - action"

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

