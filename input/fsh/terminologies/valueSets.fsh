

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
Id: vs-RadiotherapyType-eu-pcsp
Title: "Radiotherapy Type"
Description: "Types of radiotherapy this procedure is referring to"
// not yet in the GPS ....
//-------------------------------------------------------------------------------------------
* $sct#33195004 "External beam radiotherapy"
* $sct#152198000 "Brachytherapy"
* $sct#399315003 "Radionuclide therapy"


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: SctTypeVs
Id: vs-SctType-eu-pcsp
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
Id: vs-RadiotherapyDoseType-eu-pcsp
Title: "Radiotherapy Dose Type"
Description: "Types of radiotherapy cumulative dose this procedure is referring to"
// not yet in the GPS ....
//-------------------------------------------------------------------------------------------
* $dicomOntology#113725 "Dose (RP) Total"
* $sct#445565002 "Total boost radiation dose delivered"
* $sct#445461008 "Total radiation dose delivered"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: ObservationYesNoVs
Id: vs-observationYesNo-eu-pcsp
Title: "Observation codes for which a Yes/No answer is captured."
Description: "Observation codes for which a Yes/No answer is captured."
//-------------------------------------------------------------------------------------------
* CsGenericPcsp#4w-corticosteroids-anti-cancer
* CsGenericPcsp#intrathecal-injections

/*  === 
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: RouteOfAdminVs
Id: vs-roa-eu-pcsp
Title: "Route of administration"
Description: "Route of administration"
//-------------------------------------------------------------------------------------------
* $edqm#20042000 "Intrathecal use"

===*/