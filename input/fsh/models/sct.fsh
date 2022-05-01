Instance: StemCellTransplantation
InstanceOf: StructureDefinition
Description: "Stem Cell Transplantation.
Maturity Level: 2 - Ready for Review"
Title: "Stem Cell Transplantation"
Usage: #definition
* publisher = "PanCareSurPass project"
* status = #draft
* url = "http://hl7.eu/fhir/ig/pcsp/StructureDefinition/StemCellTransplantation"
* name = "StemCellTransplantation"
* title = "Stem Cell Transplantation"
* status = #draft
* experimental = true
* description = "Stem Cell Transplantation.
Maturity Level: 2 - Ready for Review"
* version = "0.0.1"
* mapping[0].identity = "fhir"
* mapping[0].uri = "hl7.org/fhir/r4"
* mapping[0].name = "FHIR"
* mapping[1].identity = "cda"
* mapping[1].uri = "http://hl7.org/v3/cda"
* mapping[1].name = "CDA (R2)"
* kind = #logical
* abstract = true
* type = "StemCellTransplantation"
* baseDefinition = "http://hl7.org/fhir/StructureDefinition/Element"
* derivation = #specialization
* differential.element[0].id = "StemCellTransplantation"
* differential.element[0].path = "StemCellTransplantation"
* differential.element[0].short = "Stem Cell Transplantation"
* differential.element[0].definition = "Stem Cell Transplantation"
* differential.element[0].min = 1
* differential.element[0].max = "1"
* differential.element[1].id = "StemCellTransplantation.identifier"
* differential.element[1].path = "StemCellTransplantation.identifier"
* differential.element[1].short = "SCT Identifier"
* differential.element[1].definition = "Progressive SCT number"
* differential.element[1].min = 1
* differential.element[1].max = "*"
* differential.element[1].type.code = #Identifier
* differential.element[2].id = "StemCellTransplantation.relatedDiagnosis"
* differential.element[2].path = "StemCellTransplantation.relatedDiagnosis"
* differential.element[2].short = "Progressive number of diagnosis"
* differential.element[2].definition = "Progressive number of diagnosis"
* differential.element[2].min = 1
* differential.element[2].max = "*"
* differential.element[2].type.code = #Identifier
* differential.element[3].id = "StemCellTransplantation.relatedRelapse"
* differential.element[3].path = "StemCellTransplantation.relatedRelapse"
* differential.element[3].short = "Progressive number of relapse/progression (after FLT)"
* differential.element[3].definition = "Progressive number of relapse/progression (after FLT)"
* differential.element[3].min = 1
* differential.element[3].max = "*"
* differential.element[3].type.code = #Identifier
* differential.element[4].id = "StemCellTransplantation.istitutionOfTreatment"
* differential.element[4].path = "StemCellTransplantation.istitutionOfTreatment"
* differential.element[4].short = "Institution of treatment"
* differential.element[4].definition = "Please Identify the institution were the procedure was performed"
* differential.element[4].min = 0
* differential.element[4].max = "1"
* differential.element[4].type.code = #BackboneElement
* differential.element[5].id = "StemCellTransplantation.istitutionOfTreatment.description"
* differential.element[5].path = "StemCellTransplantation.istitutionOfTreatment.description"
* differential.element[5].short = "Institution description"
* differential.element[5].definition = "Institution description"
* differential.element[5].min = 0
* differential.element[5].max = "1"
* differential.element[5].type.code = #string
* differential.element[6].id = "StemCellTransplantation.istitutionOfTreatment.name"
* differential.element[6].path = "StemCellTransplantation.istitutionOfTreatment.name"
* differential.element[6].short = "Institution name"
* differential.element[6].definition = "Institution name"
* differential.element[6].min = 0
* differential.element[6].max = "1"
* differential.element[6].type.code = #string
* differential.element[7].id = "StemCellTransplantation.istitutionOfTreatment.address"
* differential.element[7].path = "StemCellTransplantation.istitutionOfTreatment.address"
* differential.element[7].short = "Institution address"
* differential.element[7].definition = "Institution address"
* differential.element[7].min = 0
* differential.element[7].max = "1"
* differential.element[7].type.code = #BackboneElement
* differential.element[8].id = "StemCellTransplantation.istitutionOfTreatment.address.name"
* differential.element[8].path = "StemCellTransplantation.istitutionOfTreatment.address.name"
* differential.element[8].short = "Institution city"
* differential.element[8].definition = "Institution city"
* differential.element[8].min = 0
* differential.element[8].max = "1"
* differential.element[8].type.code = #string
* differential.element[9].id = "StemCellTransplantation.istitutionOfTreatment.address.country"
* differential.element[9].path = "StemCellTransplantation.istitutionOfTreatment.address.country"
* differential.element[9].short = "Institution country"
* differential.element[9].definition = "Institution country"
* differential.element[9].min = 0
* differential.element[9].max = "1"
* differential.element[9].type.code = #string
* differential.element[10].id = "StemCellTransplantation.date"
* differential.element[10].path = "StemCellTransplantation.date"
* differential.element[10].short = "Date of transplant"
* differential.element[10].definition = "Date of the reinfusion of hematopoietic stem cells. If the date is unkown or partially missed insert the year at the best of your knowledge."
* differential.element[10].min = 0
* differential.element[10].max = "*"
* differential.element[10].type.code = #BackboneElement
* differential.element[11].id = "StemCellTransplantation.transplantType"
* differential.element[11].path = "StemCellTransplantation.transplantType"
* differential.element[11].short = "Type of transplant"
* differential.element[11].definition = "Indicate if the transplant was autologous or allogeneic.
1 = Autologous
2 = Allogeneic
-9922 = NK"
* differential.element[11].min = 0
* differential.element[11].max = "1"
* differential.element[11].type.code = #CodeableConcept
* differential.element[12].id = "StemCellTransplantation.donorType"
* differential.element[12].path = "StemCellTransplantation.donorType"
* differential.element[12].short = "Type of donor"
* differential.element[12].definition = "Define the type of donor 
in case of allogenic transplant,
1 = matched related
2 = matched unrelated
3 = mismatch related
4 = mismatch unrelated
5 = haplo-identical
-9922 = NK

1 = matched related ? sibling
2 = matched related ? parent
3 = matched related ? other (e.g. cousin)
-9922 = NK"
* differential.element[12].min = 0
* differential.element[12].max = "1"
* differential.element[12].type.code = #CodeableConcept
* differential.element[13].id = "StemCellTransplantation.cellSource"
* differential.element[13].path = "StemCellTransplantation.cellSource"
* differential.element[13].short = "Source of cells
"
* differential.element[13].definition = "Indicate the source of cells
1 = PBSC 
2 = Bone marrow
3 = Cord
-9922 = NK"
* differential.element[13].min = 0
* differential.element[13].max = "1"
* differential.element[13].type.code = #CodeableConcept
* differential.element[14].id = "StemCellTransplantation.conditioningRegimen"
* differential.element[14].path = "StemCellTransplantation.conditioningRegimen"
* differential.element[14].short = "Conditioning regimen: drugs used"
* differential.element[14].definition = "Please list the drugs (name) and radiotherapy used or the conditioning regimen.  These drugs contribute to the calculation of cumulative doses received by the patient reported in the chemotherapy section.  Here it is requested only the names of the drugs and if possible the dosage used (only for possible information in the future).
No calculations are made on these data."
* differential.element[14].min = 0
* differential.element[14].max = "1"
* differential.element[14].type.code = #string
* differential.element[15].id = "StemCellTransplantation.gvdh"
* differential.element[15].path = "StemCellTransplantation.gvdh"
* differential.element[15].short = "Graft Versus Host Disease"
* differential.element[15].definition = "Graft Versus Host Disease"
* differential.element[15].min = 0
* differential.element[15].max = "1"
* differential.element[15].type.code = #BackboneElement
* differential.element[16].id = "StemCellTransplantation.gvdh.prophylaxis"
* differential.element[16].path = "StemCellTransplantation.gvdh.prophylaxis"
* differential.element[16].short = "GVHD prophylaxis"
* differential.element[16].definition = "State if any GVHD prophylaxis was given. Details on the drug names used for GVHD prophylaxis should be listed in the chemotherapy section under 'immunotherapy').
1 => Yes
2 => No
-9922 => NK   "
* differential.element[16].min = 0
* differential.element[16].max = "1"
* differential.element[16].type.code = #CodeableConcept
* differential.element[17].id = "StemCellTransplantation.gvdh.acute"
* differential.element[17].path = "StemCellTransplantation.gvdh.acute"
* differential.element[17].short = "GVHD Acute"
* differential.element[17].definition = "GVHD Acute "
* differential.element[17].min = 0
* differential.element[17].max = "1"
* differential.element[17].type.code = #BackboneElement
* differential.element[18].id = "StemCellTransplantation.gvdh.acute.status"
* differential.element[18].path = "StemCellTransplantation.gvdh.acute.status"
* differential.element[18].short = "GVHD Acutestatus"
* differential.element[18].definition = "Please State if acute GVHD occurred
1 => Yes
2 => No
-9922 => NK "
* differential.element[18].min = 1
* differential.element[18].max = "1"
* differential.element[18].type.code = #CodeableConcept
* differential.element[19].id = "StemCellTransplantation.gvdh.acute.grade"
* differential.element[19].path = "StemCellTransplantation.gvdh.acute.grade"
* differential.element[19].short = "Grade"
* differential.element[19].definition = "If yes, state the maximum grade of acute GVHD.

1 => 1
2 => 2
3 => 3
4 => 4
-9922 => NK "
* differential.element[19].min = 1
* differential.element[19].max = "1"
* differential.element[19].type.code = #CodeableConcept
* differential.element[20].id = "StemCellTransplantation.gvdh.acute.startDate"
* differential.element[20].path = "StemCellTransplantation.gvdh.acute.startDate"
* differential.element[20].short = "Start date"
* differential.element[20].definition = "Define the starting date of GVHD. If the date is unkown or partially missed insert the year at the best of your knowledge."
* differential.element[20].min = 0
* differential.element[20].max = "1"
* differential.element[20].type.code = #date
* differential.element[21].id = "StemCellTransplantation.gvdh.acute.endDate"
* differential.element[21].path = "StemCellTransplantation.gvdh.acute.endDate"
* differential.element[21].short = "End date"
* differential.element[21].definition = "Define the ending date of GVHD. If the date is unkown or partially missed insert the year at the best of your knowledge."
* differential.element[21].min = 0
* differential.element[21].max = "1"
* differential.element[21].type.code = #date
* differential.element[22].id = "StemCellTransplantation.gvdh.chronic"
* differential.element[22].path = "StemCellTransplantation.gvdh.chronic"
* differential.element[22].short = "GVHD Chronic"
* differential.element[22].definition = "GVHD Chronic "
* differential.element[22].min = 0
* differential.element[22].max = "1"
* differential.element[22].type.code = #BackboneElement
* differential.element[23].id = "StemCellTransplantation.gvdh.chronic.status"
* differential.element[23].path = "StemCellTransplantation.gvdh.chronic.status"
* differential.element[23].short = "GVHD Chronicstatus"
* differential.element[23].definition = "Please State if chronic GVHD occurred
1 => Yes
2 => No
-9922 => NK "
* differential.element[23].min = 1
* differential.element[23].max = "1"
* differential.element[23].type.code = #CodeableConcept
* differential.element[24].id = "StemCellTransplantation.gvdh.chronic.grade"
* differential.element[24].path = "StemCellTransplantation.gvdh.chronic.grade"
* differential.element[24].short = "Grade"
* differential.element[24].definition = " If yes, state the maximum grade of chronic GVHD
1 => Limited
2 => Extensive
-9922 => NK"
* differential.element[24].min = 1
* differential.element[24].max = "1"
* differential.element[24].type.code = #CodeableConcept
* differential.element[25].id = "StemCellTransplantation.gvdh.chronic.startDate"
* differential.element[25].path = "StemCellTransplantation.gvdh.chronic.startDate"
* differential.element[25].short = "Start date"
* differential.element[25].definition = "Please Define the starting date of GVHD. If the date is unkown or partially missed insert the year at the best of your knowledge."
* differential.element[25].min = 0
* differential.element[25].max = "1"
* differential.element[25].type.code = #date
* differential.element[26].id = "StemCellTransplantation.gvdh.chronic.endDate"
* differential.element[26].path = "StemCellTransplantation.gvdh.chronic.endDate"
* differential.element[26].short = "End date"
* differential.element[26].definition = "Please Define the ending date of GVHD. If the date is unkown or partially missed insert the year at the best of your knowledge."
* differential.element[26].min = 0
* differential.element[26].max = "1"
* differential.element[26].type.code = #date
* differential.element[27].id = "StemCellTransplantation.gvdh.organAffected"
* differential.element[27].path = "StemCellTransplantation.gvdh.organAffected"
* differential.element[27].short = "Organs affected"
* differential.element[27].definition = "Please List organs affected by GVHD"
* differential.element[27].min = 0
* differential.element[27].max = "*"
* differential.element[27].type.code = #string
* differential.element[28].id = "StemCellTransplantation.bloodBeforeTransplant"
* differential.element[28].path = "StemCellTransplantation.bloodBeforeTransplant"
* differential.element[28].short = "Blood before transplant"
* differential.element[28].definition = "Blood before transplant "
* differential.element[28].min = 0
* differential.element[28].max = "1"
* differential.element[28].type.code = #BackboneElement
* differential.element[29].id = "StemCellTransplantation.bloodBeforeTransplant.type"
* differential.element[29].path = "StemCellTransplantation.bloodBeforeTransplant.type"
* differential.element[29].short = "Blood type"
* differential.element[29].definition = "Blood type before transplant 
1 => A
2 => B
3 => AB
4 => O 
-9922 => NK"
* differential.element[29].min = 1
* differential.element[29].max = "1"
* differential.element[29].type.code = #CodeableConcept
* differential.element[30].id = "StemCellTransplantation.bloodBeforeTransplant.rh"
* differential.element[30].path = "StemCellTransplantation.bloodBeforeTransplant.rh"
* differential.element[30].short = "Rh"
* differential.element[30].definition = "Rh factor before transplant
1 => +
2 => -
-9922 => NK "
* differential.element[30].min = 1
* differential.element[30].max = "1"
* differential.element[30].type.code = #CodeableConcept
* differential.element[31].id = "StemCellTransplantation.bloodAfterTransplant"
* differential.element[31].path = "StemCellTransplantation.bloodAfterTransplant"
* differential.element[31].short = "Blood after transplant"
* differential.element[31].definition = "Blood after transplant "
* differential.element[31].min = 0
* differential.element[31].max = "1"
* differential.element[31].type.code = #BackboneElement
* differential.element[32].id = "StemCellTransplantation.bloodAfterTransplant.type"
* differential.element[32].path = "StemCellTransplantation.bloodAfterTransplant.type"
* differential.element[32].short = "Blood type"
* differential.element[32].definition = "Blood type after transplant 
1 => A
2 => B
3 => AB
4 => O 
-9922 => NK"
* differential.element[32].min = 1
* differential.element[32].max = "1"
* differential.element[32].type.code = #CodeableConcept
* differential.element[33].id = "StemCellTransplantation.bloodAfterTransplant.rh"
* differential.element[33].path = "StemCellTransplantation.bloodAfterTransplant.rh"
* differential.element[33].short = "Rh"
* differential.element[33].definition = "Rh factor after transplant
1 => +
2 => -
-9922 => NK "
* differential.element[33].min = 1
* differential.element[33].max = "1"
* differential.element[33].type.code = #CodeableConcept
* differential.element[34].id = "StemCellTransplantation.endOfTreatment"
* differential.element[34].path = "StemCellTransplantation.endOfTreatment"
* differential.element[34].short = "Date of end of immunosuppressive treatmentafter HSCT"
* differential.element[34].definition = "Date of end of immunosuppressive treatment. If the date is unkown or partially missed insert the year at the best of your knowledge."
* differential.element[34].min = 0
* differential.element[34].max = "1"
* differential.element[34].type.code = #date
//  
// === MAPPING === 
// 
* differential.element[0].mapping[0].identity = "fhir"
* differential.element[0].mapping[0].map = "Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-sct-eu-pcsp')"

* differential.element[1].mapping[0].identity = "fhir"
* differential.element[1].mapping[0].map = ".identifier"

* differential.element[2].mapping[0].identity = "fhir"
* differential.element[2].mapping[0].map = ".reasonReference"

* differential.element[3].mapping[0].identity = "fhir"
* differential.element[3].mapping[0].map = ".reasonReference"

* differential.element[4].mapping[0].identity = "fhir"
* differential.element[4].mapping[0].map = ".extension(http://hl7.eu/fhir/ig/pcsp/StructureDefinition/ActLocation-eu-pcsp).conformsTo(http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Location-eu-pcsp)"

* differential.element[5].mapping[0].identity = "fhir"
* differential.element[5].mapping[0].map = "Location.description"

* differential.element[6].mapping[0].identity = "fhir"
* differential.element[6].mapping[0].map = "Location.name"

* differential.element[7].mapping[0].identity = "fhir"
* differential.element[7].mapping[0].map = "Location.address.city"




* differential.element[9].mapping[0].identity = "fhir"
* differential.element[9].mapping[0].map = "Location.address.country"

* differential.element[10].mapping[0].identity = "fhir"
* differential.element[10].mapping[0].map = ".performedDateTime	"

* differential.element[11].mapping[0].identity = "fhir"
* differential.element[11].mapping[0].map = ".code"

* differential.element[12].mapping[0].identity = "fhir"
* differential.element[12].mapping[0].map = "BiologicallyDerivedProduct .conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/BiologicallyDerivedProduct-sct-eu-pcsp').extension('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/sct-donor-type').valueCodeableConcept"

* differential.element[13].mapping[0].identity = "fhir"
* differential.element[13].mapping[0].map = "BiologicallyDerivedProduct .conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/BiologicallyDerivedProduct-sct-eu-pcsp').extension('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/sct-source-type').valueCodeableConcept"

* differential.element[14].mapping[0].identity = "fhir"
* differential.element[14].mapping[0].map = "Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-sct-prophylaxis-eu-pcsp').where(reasonReference.resolve().conformTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-sct-eu-pcsp') ).text"

* differential.element[15].mapping[0].identity = "fhir"
* differential.element[15].mapping[0].map = "Condition.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Condition-gvdh-eu-pcsp')"

* differential.element[16].mapping[0].identity = "fhir"
* differential.element[16].mapping[0].map = "Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-sct-prophylaxis-eu-pcsp').where(code = $sct#868254008 'GVHD (graft versus host disease) prophylaxis').exists()"

* differential.element[17].mapping[0].identity = "fhir"
* differential.element[17].mapping[0].map = ".where(code = http://snomed.info/sct#402355000 'Acute graft-versus-host disease')"

* differential.element[18].mapping[0].identity = "fhir"
* differential.element[18].mapping[0].map = ".where(code = http://snomed.info/sct#402355000 'Acute graft-versus-host disease').exists()"

* differential.element[19].mapping[0].identity = "fhir"
* differential.element[19].mapping[0].map = ".stage.summary"

* differential.element[20].mapping[0].identity = "fhir"
* differential.element[20].mapping[0].map = ".effectivePeriod.start"

* differential.element[21].mapping[0].identity = "fhir"
* differential.element[21].mapping[0].map = ".effectivePeriod.end"

* differential.element[22].mapping[0].identity = "fhir"
* differential.element[22].mapping[0].map = ".where(code = http://snomed.info/sct#402356004 'Chronic graft-versus-host disease')"

* differential.element[23].mapping[0].identity = "fhir"
* differential.element[23].mapping[0].map = ".where(code = http://snomed.info/sct#402356004 'Chronic graft-versus-host disease').exists()"

* differential.element[24].mapping[0].identity = "fhir"
* differential.element[24].mapping[0].map = ".stage.summary"

* differential.element[25].mapping[0].identity = "fhir"
* differential.element[25].mapping[0].map = ".effectivePeriod.start"

* differential.element[26].mapping[0].identity = "fhir"
* differential.element[26].mapping[0].map = ".effectivePeriod.end"

* differential.element[27].mapping[0].identity = "fhir"
* differential.element[27].mapping[0].map = ".bodySite"

* differential.element[28].mapping[0].identity = "fhir"
* differential.element[28].mapping[0].map = "Observation.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Observation-bld-abo-rh-eu-pcsp').where(effectiveTiming.code = #before-procedure)"

* differential.element[29].mapping[0].identity = "fhir"
* differential.element[29].mapping[0].map = "component.where(code = $loinc#883-9	'ABO group [Type] in Blood').value"

* differential.element[30].mapping[0].identity = "fhir"
* differential.element[30].mapping[0].map = "component.where(code = $loinc#10331-7 'Rh [Type] in Blood').value"

* differential.element[31].mapping[0].identity = "fhir"
* differential.element[31].mapping[0].map = "Observation.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Observation-bld-abo-rh-eu-pcsp').where(effectiveTiming.code = #after-procedure)"

* differential.element[32].mapping[0].identity = "fhir"
* differential.element[32].mapping[0].map = "component.where(code = $loinc#883-9	'ABO group [Type] in Blood').value"

* differential.element[33].mapping[0].identity = "fhir"
* differential.element[33].mapping[0].map = "component.where(code = $loinc#10331-7 'Rh [Type] in Blood').value"

* differential.element[34].mapping[0].identity = "fhir"
* differential.element[34].mapping[0].map = "Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-sct-prophylaxis-eu-pcsp').where(category = $sct#416608005 'Drug therapy' ).performedPeriod.end"







// 
