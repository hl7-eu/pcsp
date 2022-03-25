
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
* $ucum#gr/m2
* $ucum#UI/m2

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: ICCC3Vs
Id: vs-iccc3-eu-pcsp
Title: "ICCC-3"
Description: "International Classification of Childhood Cancer, third edition"
// not yet in the GPS ....
//-------------------------------------------------------------------------------------------
* codes from system $iccc3 

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: ICDO3MorphologyVs
Id: vs-icdo3-morphology-eu-pcsp
Title: "ICD-O-3 Morphology"
Description: "ICD-O-3 Morphology"
//-------------------------------------------------------------------------------------------
* codes from system $icd03 // to be specialized....

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: ICDO3TopographyVs
Id: vs-icdo3-topography-eu-pcsp
Title: "ICD-O-3 Topography"
Description: "ICD-O-3 Topography"
//-------------------------------------------------------------------------------------------
* codes from system $icd03 // to be specialized....

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
* $data-absent-reason#unknown "Unknown"
* $v3-NullFlavor#OTH "Other"

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
* $data-absent-reason#unknown "Unknown"
* $v3-NullFlavor#OTH "Other"

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
ValueSet: ObservationYesNoVs
Id: vs-observationYesNo-eu-pcsp
Title: "Observation codes for which a Yes/No answer is captured."
Description: "Observation codes for which a Yes/No answer is captured."
//-------------------------------------------------------------------------------------------
* CsGenericPcsp#4w-corticosteroids-anti-cancer
* CsGenericPcsp#intrathecal-injections


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: RouteOfAdminVs
Id: vs-roa-eu-pcsp
Title: "Route of administration"
Description: "Route of administration"
//-------------------------------------------------------------------------------------------
* $edqm#20042000 "Intrathecal use"


