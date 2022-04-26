//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  CodeSystem:  CsGenericPcsp
  Id: cs-generic-eu-pcsp
  Title: "PCSP Code System"
  Description:  "Coded concepts specified by the PancareSurPass Project"
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

* ^caseSensitive = true

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

// === placeholder waiting for a LOINC code
* #surpass "Childhood Cancer Survivor Passport" "Childhood Cancer Survivor Passport. Placeholder waiting for a LOINC code"

//==== placoholder waiting for a better coded concepts identification
* #sht-47020004 "Ventriculoperitoneal shunt" "Ventriculoperitoneal shunt procedure" // SCT 47020004 | Ventriculoperitoneal shunt (procedure)
* #sht-4579008 "Ventriculo-atrial shunt" "Ventriculo-atrial shunt procedure" //  4579008 | Creation of cerebral ventriculo-atrial shunt (procedure) |
* #sht-280384000 "Subdural-peritoneal shunt" "Subdural-peritoneal shunt procedure"// 280384000 | Subdural-peritoneal shunt operation (procedure) |
* #sht-265218003 "Cisternostomy (III ventricule)" "Cisternostomy (III ventricule)" // 265218003 | Creation of ventriculocisternostomy (procedure) ????
* #sht-other "Other cerebrovascular shunt procedure" "Other cerebrovascular shunt procedure" // 88834003 | Construction of shunt (procedure) | ???

//==== placeholder for internal vs external Prosthesis
* #int-prosthesis "Internal Prosthesis" "Internal Prosthesis"
* #ext-prosthesis "External Prosthesis" "Internal Prosthesis"
                                                                                                                                                                                                                                                                                                                              
