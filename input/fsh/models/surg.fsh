Instance: MajorSurgery
InstanceOf: StructureDefinition
Description: "Major Surgery.
Maturity Level: 1 - Profiles in progress"
Title: "Major Surgery"
Usage: #definition
* publisher = "PanCareSurPass project"
* status = #draft
* url = "http://hl7.eu/fhir/ig/pcsp/StructureDefinition/MajorSurgery"
* name = "MajorSurgery"
* title = "Major Surgery"
* status = #draft
* experimental = true
* description = "Major Surgery.
Maturity Level: 1 - Profiles in progress"
* version = "0.0.1"
* mapping[0].identity = "fhir"
* mapping[0].uri = "hl7.org/fhir/r4"
* mapping[0].name = "FHIR"
* kind = #logical
* abstract = true
* type = "MajorSurgery"
* baseDefinition = "http://hl7.org/fhir/StructureDefinition/Element"
* derivation = #specialization
* differential.element[0].id = "MajorSurgery"
* differential.element[0].path = "MajorSurgery"
* differential.element[0].short = "Major Surgery"
* differential.element[0].definition = "Major Surgery"
* differential.element[0].min = 1
* differential.element[0].max = "1"
* differential.element[1].id = "MajorSurgery.relatedDiagnosis"
* differential.element[1].path = "MajorSurgery.relatedDiagnosis"
* differential.element[1].short = "Progressive number of diagnosis"
* differential.element[1].definition = "Progressive number of diagnosis (1=first; 2= second; 3 = third; ?).  
In this field must be reported the ordinal number of the tumor diagnosis for which the surgery was performed"
* differential.element[1].min = 0
* differential.element[1].max = "1"
* differential.element[1].type.code = #Identifier
* differential.element[2].id = "MajorSurgery.relatedRelapse"
* differential.element[2].path = "MajorSurgery.relatedRelapse"
* differential.element[2].short = "Progressive number of relapse/progression (after FLT)"
* differential.element[2].definition = ""
* differential.element[2].min = 0
* differential.element[2].max = "1"
* differential.element[2].type.code = #Identifier
* differential.element[3].id = "MajorSurgery.identifier"
* differential.element[3].path = "MajorSurgery.identifier"
* differential.element[3].short = "Progressive Surgery number"
* differential.element[3].definition = "Progressive number of surgeries (1=first; 2= second; 3 = third; ?).
In this field must be reported the ordinal number of the surgeries given. "
* differential.element[3].min = 0
* differential.element[3].max = "*"
* differential.element[3].type.code = #Identifier
* differential.element[4].id = "MajorSurgery.istitutionOfTreatment"
* differential.element[4].path = "MajorSurgery.istitutionOfTreatment"
* differential.element[4].short = "Institution of treatment"
* differential.element[4].definition = "Please Identify the institution were surgery was performed"
* differential.element[4].min = 0
* differential.element[4].max = "1"
* differential.element[4].type.code = #BackboneElement
* differential.element[5].id = "MajorSurgery.istitutionOfTreatment.description"
* differential.element[5].path = "MajorSurgery.istitutionOfTreatment.description"
* differential.element[5].short = "Institution description"
* differential.element[5].definition = "Institution description"
* differential.element[5].min = 0
* differential.element[5].max = "1"
* differential.element[5].type.code = #string
* differential.element[6].id = "MajorSurgery.istitutionOfTreatment.name"
* differential.element[6].path = "MajorSurgery.istitutionOfTreatment.name"
* differential.element[6].short = "Institution name"
* differential.element[6].definition = "Institution name"
* differential.element[6].min = 0
* differential.element[6].max = "1"
* differential.element[6].type.code = #string
* differential.element[7].id = "MajorSurgery.istitutionOfTreatment.address"
* differential.element[7].path = "MajorSurgery.istitutionOfTreatment.address"
* differential.element[7].short = "Institution address"
* differential.element[7].definition = "Institution address"
* differential.element[7].min = 0
* differential.element[7].max = "1"
* differential.element[7].type.code = #BackboneElement
* differential.element[8].id = "MajorSurgery.istitutionOfTreatment.address.name"
* differential.element[8].path = "MajorSurgery.istitutionOfTreatment.address.name"
* differential.element[8].short = "Institution city"
* differential.element[8].definition = "Institution city"
* differential.element[8].min = 0
* differential.element[8].max = "1"
* differential.element[8].type.code = #string
* differential.element[9].id = "MajorSurgery.istitutionOfTreatment.address.country"
* differential.element[9].path = "MajorSurgery.istitutionOfTreatment.address.country"
* differential.element[9].short = "Institution country"
* differential.element[9].definition = "Institution country"
* differential.element[9].min = 0
* differential.element[9].max = "1"
* differential.element[9].type.code = #string
* differential.element[10].id = "MajorSurgery.date"
* differential.element[10].path = "MajorSurgery.date"
* differential.element[10].short = "Date of surgery"
* differential.element[10].definition = "Date of surgery (dd/mm/yyyy). If the date is unkown or partially missed insert the year at the best of your knowledge."
* differential.element[10].min = 0
* differential.element[10].max = "1"
* differential.element[10].type.code = #dateTime
* differential.element[11].id = "MajorSurgery.description"
* differential.element[11].path = "MajorSurgery.description"
* differential.element[11].short = "Surgery description"
* differential.element[11].definition = "Please describe the type of surgery (is a free text section, no coding). In case of surgery on pair organs specify which organ (right or left) was operated."
* differential.element[11].min = 0
* differential.element[11].max = "1"
* differential.element[11].type.code = #string
* differential.element[12].id = "MajorSurgery.affectedOrgan"
* differential.element[12].path = "MajorSurgery.affectedOrgan"
* differential.element[12].short = "Affected Organs"
* differential.element[12].definition = "Was one of these organs involved ? 
(Oesophagus; Abdomen; Brain; Face; Liver; Spine; Spinal Cord; Sympathetic nerves; Chest/thorax; Pelvis)"
* differential.element[12].min = 0
* differential.element[12].max = "*"
* differential.element[12].type.code = #CodeableConcept
* differential.element[13].id = "MajorSurgery.sacrifiedOrgan"
* differential.element[13].path = "MajorSurgery.sacrifiedOrgan"
* differential.element[13].short = "Sacrified Organs"
* differential.element[13].definition = "During surgery it is possible that some organs are 'sacrified' either to allow a radical excision of the tumor or on purpose (spleen) for staging procedures.
In case of partial resection of an organ (e.g. thyroid, kidney), the organ is not 'sacrified', this type of surgery should be then reported only in the 'tumor description' 
For other organs (e.g. hypothalamus) the only surgical procedure on it may determine some 'sacrifcice' of function, thus in this case, the organ should be coded as 'sacrified'.

(Spleen, Kidney, Eye, Lung, Ovary, Hypothalamus/hypophysis, Thyroid, Bladder, uterus Other)"
* differential.element[13].min = 0
* differential.element[13].max = "*"
* differential.element[13].type.code = #CodeableConcept
* differential.element[14].id = "MajorSurgery.shuntApplication"
* differential.element[14].path = "MajorSurgery.shuntApplication"
* differential.element[14].short = "Shunt application"
* differential.element[14].definition = "Please report if a cerebrovascular shunt was inserted "
* differential.element[14].min = 0
* differential.element[14].max = "*"
* differential.element[14].type.code = #BackboneElement
* differential.element[15].id = "MajorSurgery.shuntApplication.type"
* differential.element[15].path = "MajorSurgery.shuntApplication.type"
* differential.element[15].short = "Type of shunt
"
* differential.element[15].definition = "This is a free text section in which it is possible to specify the type (e.g. ventriculo-peritoneal) of shunt used 
1 => Ventriculo-peritoneal
2 => Ventriculo atrial
3 => Subdural_peritoneal
4 =>  Cisternostomy (III ventricule)
5 => Other
-9922 => NK"
* differential.element[15].min = 0
* differential.element[15].max = "1"
* differential.element[15].type.code = #CodeableConcept
* differential.element[16].id = "MajorSurgery.shuntApplication.laterality"
* differential.element[16].path = "MajorSurgery.shuntApplication.laterality"
* differential.element[16].short = "Laterality of shunt

"
* differential.element[16].definition = "Please specify the laterality of the shunt
1 = right
2= left
3 = midline
-9911 = not applicable
-9922 => NK"
* differential.element[16].min = 0
* differential.element[16].max = "1"
* differential.element[16].type.code = #CodeableConcept
* differential.element[17].id = "MajorSurgery.shuntApplication.isRemoved"
* differential.element[17].path = "MajorSurgery.shuntApplication.isRemoved"
* differential.element[17].short = "In place or removed ?"
* differential.element[17].definition = "Define if it is still in place or is already removed 
1 => Still in place
2 => Removed
 -9911 => NA
 -9922 => NK"
* differential.element[17].min = 0
* differential.element[17].max = "1"
* differential.element[17].type.code = #CodeableConcept
* differential.element[18].id = "MajorSurgery.amputation"
* differential.element[18].path = "MajorSurgery.amputation"
* differential.element[18].short = "Amputation"
* differential.element[18].definition = "Here it is requested only a yes or no. Details should be reported in the surgery description 
1 => Yes
2 => No
-9911 => Not applicable
-9922 => NK "
* differential.element[18].min = 0
* differential.element[18].max = "1"
* differential.element[18].type.code = #CodeableConcept
* differential.element[19].id = "MajorSurgery.prothesis"
* differential.element[19].path = "MajorSurgery.prothesis"
* differential.element[19].short = "Prothesis"
* differential.element[19].definition = "Please state if the survivor has a prosthesis either internal (e.g. hip replacement) or external (e.g. artificial arm)
Please define if prosthesis is internal (e.g. titanium bone) or external (e.g. artificial limb). Also in this case, details should be reported in the surgery description.
1 => Internal
2 => External
-9922 => NK"
* differential.element[19].min = 0
* differential.element[19].max = "1"
* differential.element[19].type.code = #CodeableConcept
* differential.element[20].id = "MajorSurgery.colostomy"
* differential.element[20].path = "MajorSurgery.colostomy"
* differential.element[20].short = "Colostomy"
* differential.element[20].definition = "State if a colostomy was created. Details should be reported in the surgery section.
1 => Still in place
2 => Removed
-9922 =>NK"
* differential.element[20].min = 0
* differential.element[20].max = "1"
* differential.element[20].type.code = #CodeableConcept
* differential.element[21].id = "MajorSurgery.gastrostomy"
* differential.element[21].path = "MajorSurgery.gastrostomy"
* differential.element[21].short = "Gastrostomy"
* differential.element[21].definition = "State if a gastrostomy was created. Details should be reported in the surgery section.
1 => Yes
2 => No
-9911 => Not applicable
-9922 =>NK"
* differential.element[21].min = 0
* differential.element[21].max = "1"
* differential.element[21].type.code = #CodeableConcept
//  
// === MAPPING === 
// 
* differential.element[0].mapping[0].identity = "fhir"
* differential.element[0].mapping[0].map = "Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-surgery-eu-pcsp')"

* differential.element[1].mapping[0].identity = "fhir"
* differential.element[1].mapping[0].map = ".reasonReference"

* differential.element[2].mapping[0].identity = "fhir"
* differential.element[2].mapping[0].map = "TBD"

* differential.element[3].mapping[0].identity = "fhir"
* differential.element[3].mapping[0].map = ".identifier"

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
* differential.element[10].mapping[0].map = "Procedure.performedDateTime	"

* differential.element[11].mapping[0].identity = "fhir"
* differential.element[11].mapping[0].map = ".text"

* differential.element[12].mapping[0].identity = "fhir"
* differential.element[12].mapping[0].map = ".bodySite"

* differential.element[12].mapping[1].identity = "fhir"
* differential.element[12].mapping[1].map = ".code"

* differential.element[13].mapping[0].identity = "fhir"
* differential.element[13].mapping[0].map = ".extension('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/surgery-sacrifiedOrgan').valueCodeableConcept"


* differential.element[14].mapping[0].identity = "fhir"
* differential.element[14].mapping[0].map = "TBD"

* differential.element[15].mapping[0].identity = "fhir"
* differential.element[15].mapping[0].map = "TBD"

* differential.element[16].mapping[0].identity = "fhir"
* differential.element[16].mapping[0].map = "TBD"

* differential.element[17].mapping[0].identity = "fhir"
* differential.element[17].mapping[0].map = "TBD"

* differential.element[18].mapping[0].identity = "fhir"
* differential.element[18].mapping[0].map = "TBD"

* differential.element[19].mapping[0].identity = "fhir"
* differential.element[19].mapping[0].map = "TBD"

* differential.element[20].mapping[0].identity = "fhir"
* differential.element[20].mapping[0].map = "TBD"

* differential.element[21].mapping[0].identity = "fhir"
* differential.element[21].mapping[0].map = "TBD"



































































































































// 
