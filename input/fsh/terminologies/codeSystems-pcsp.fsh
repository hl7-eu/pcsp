//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  CodeSystem:  CsGenericPcsp
  Id: cs-generic-eu-pcsp
  Title: "PCSP Code System"
  Description:  "Coded concepts specified by the PancareSurPass Project"
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

* ^caseSensitive = true
* ^experimental = false


// === placeholder waiting for a LOINC code
* #surpass "Childhood Cancer Survivor Passport" "Childhood Cancer Survivor Passport. Placeholder waiting for a LOINC code"

* #section-sct "Stem Cell Transplantation" "Stem Cell Transplantation section. Placeholder waiting for a LOINC code"
* #section-rt "Radiotherapy" "Radiotherapy section. Placeholder waiting for a LOINC code"
* #section-otherInfos "Other Medical Information"  "Other Medical Information section. Placeholder waiting for a LOINC code"
* #section-suggestion "Medical Suggestions" "Medical Suggestions section. Placeholder waiting for a LOINC code"
* #section-otherConditions "Other Health Conditions"  "Other Health Conditions section. Placeholder waiting for a LOINC code"
* #section-relapseAfterEOT "Relapse After EOT" "Relapse After EOT section. Placeholder waiting for a LOINC code"

// * #4w-corticosteroids-anti-cancer "Prolonged corticosteroids as anti-cancer treatment at least 4 weeks continuously" "Report 'yes' if the survivor was treated with steroids for at least 4 weeks continuously"
// * #intrathecal-injections "Intrathecal injections" "Plea// se state if the survivor received any therapeutic intrathecal injections"
* #cumulativeDose "Cumulative dose received by a patient for a specific drug."

// === type of radio devices (placeholders to be substitute with international codes
* #orthovoltage "Orthovoltage" "Orthovoltage / kilovoltage usually 200 - 300kv X rays/photons" 
* #linac-mv "Linac MV" "(Linear Accelerator) megavoltage MV X Rays/photons" 
* #linac-el "Linac electrons" "Linac (Linear Accelerator) electrons"
* #cobalt "Cobalt MV" "Cobalt - MV gamma rays / photons"
* #proton-beam "Proton Beam" "Proton Beam"

// === type of brachytherapy 
* #surface-brachytherapy "Surface brachytherapy" "Surface brachytherapy"
* #interstitial-brachytherapy "Interstitial brachytherapy" "Interstitial brachytherapy"
* #intra-brachytherapy  "Intracavitary or intraluminal brachytherapy" "Intracavitary or intraluminal brachytherapy"
* #unk-brachytherapy "Unknown brachytherapy" "Unknown brachytherapy"



//==== placoholder waiting for a better coded concepts identification
* #sht-47020004 "Ventriculoperitoneal shunt" "Ventriculoperitoneal shunt procedure" // SCT 47020004 | Ventriculoperitoneal shunt (procedure)
* #sht-4579008 "Ventriculo-atrial shunt" "Ventriculo-atrial shunt procedure" //  4579008 | Creation of cerebral ventriculo-atrial shunt (procedure) |
* #sht-280384000 "Subdural-peritoneal shunt" "Subdural-peritoneal shunt procedure"// 280384000 | Subdural-peritoneal shunt operation (procedure) |
* #sht-265218003 "Cisternostomy (III ventricule)" "Cisternostomy (III ventricule)" // 265218003 | Creation of ventriculocisternostomy (procedure) ????
* #sht-other "Other cerebrovascular shunt procedure" "Other cerebrovascular shunt procedure" // 88834003 | Construction of shunt (procedure) | ???

//==== placeholder for internal vs external Prosthesis
* #int-prosthesis "Internal Prosthesis" "Internal Prosthesis"
* #ext-prosthesis "External Prosthesis" "External Prosthesis"

//==== placeholder for Stem cell tranplantation data

//-- Type of donor for allogenic transplant
* #sct-matched-related "matched related" "matched related, unknown or unspecified"
* #sct-matched-unrelated "matched unrelated" "matched unrelated"
* #sct-mismatch-related "mismatch related" 	 "mismatch related" 
* #sct-mismatch-unrelated "mismatch unrelated" "mismatch unrelated"
* #sct-haplo-identical    "haplo-identical"    "haplo-identical"

* #sct-matched-related–sibling		"matched related – sibling"	  "matched related – sibling"
* #sct-matched-related–parent		"matched related – parent"    "matched related – parent"
* #sct-matched-related–other		"matched related – other"     "matched related – other (e.g. cousin)"


//--- Source of cell

* #sct-pbsc 			"PBSC"			"PBSC"
* #sct-bone-marrow     	"Bone marrow"   "Bone marrow"
* #sct-cord            	"Cord"          "Cord"

//--- Gvhd

* #Gvhd-unk "Gvhd Unknown" "It is not known if this patient suffers Gvhd"

//-- Gvhd Grade (acute)
* #Gvhd-acute-1 "Grade 1" "Acute Gvhd: grade 1" 
* #Gvhd-acute-2 "Grade 2" "Acute Gvhd: grade 2" 
* #Gvhd-acute-3 "Grade 3" "Acute Gvhd: grade 3" 
* #Gvhd-acute-4 "Grade 4" "Acute Gvhd: grade 4" 

//-- Gvhd Grade (chronic)
* #Gvhd-chr-1 "Limited" 	"Chronic Gvhd: grade 1 limited" 
* #Gvhd-chr-2 "Extensive" 	"Chronic Gvhd: grade 2 extensive"  

// --- Timing events

* #before-procedure "Before procedure" "Before procedure" // change with 307153007 | Before procedure ?
* #after-procedure "After procedure"   "After procedure" // change with 303110006 | Postprocedural period ? 
                                                                                                                                                                                                   
																																																	
// --------------  FLT Plan Types

* #personalized-plan "Personalized" "Personalized Plan"
* #guidelines-plan "Guidelines"		"Plan based on guidelines"

// -- From to body structure
// * #from-structure "From-Structure" // SCT $sct#272488003 "From-structure"
* #to-structure "To-Structure" "To-Structure"

// -- Other infos 

* #other-treatment "Other oncological treatments" "Any other treatment (not included in the chemotherapy, surgery or radiotherapy sections) was adminstered to the survivor"