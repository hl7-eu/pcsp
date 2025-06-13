// -------------------------------------------------------------------------------				
//  Logical Model				pcsp-MajorSurgery.fsh
// -------------------------------------------------------------------------------				
Logical: MajorSurgery				
Id: MajorSurgery				
Title: "Major Surgery"				
Description:  """Major Surgery."""				
* relatedDiagnosis 0..1 Identifier "Progressive number of diagnosis" """Progressive number of diagnosis (1=first; 2= second; 3 = third; ?).  
In this field must be reported the ordinal number of the tumor diagnosis for which the surgery was performed"""				
* relatedRelapse 0..1 Identifier "Progressive number of relapse/progression (after FLT)" """Progressive number of relapse/progression (after FLT)"""				
* identifier 0..* Identifier "Progressive Surgery number" """Progressive number of surgeries (1=first; 2= second; 3 = third; ?).
In this field must be reported the ordinal number of the surgeries given. """				
* istitutionOfTreatment 0..1 BackboneElement "Institution of treatment" """Please Identify the institution were surgery was performed"""				
* istitutionOfTreatment.description 0..1 string "Institution description" """Institution description"""				
* istitutionOfTreatment.name 0..1 string "Institution name" """Institution name"""				
* istitutionOfTreatment.address 0..1 BackboneElement "Institution address" """Institution address"""				
* istitutionOfTreatment.address.name 0..1 string "Institution city" """Institution city"""				
* istitutionOfTreatment.address.country 0..1 string "Institution country" """Institution country"""				
* date 0..1 dateTime "Date of surgery" """Date of surgery (dd/mm/yyyy). If the date is unkown or partially missed insert the year at the best of your knowledge."""				
* description 0..1 string "Surgery description" """Please describe the type of surgery (is a free text section, no coding). In case of surgery on pair organs specify which organ (right or left) was operated."""				
* affectedOrgan 0..* CodeableConcept "Affected Organs" """Was one of these organs involved ? 
(Oesophagus; Abdomen; Brain; Face; Liver; Spine; Spinal Cord; Sympathetic nerves; Chest/thorax; Pelvis)"""				
* sacrifiedOrgan 0..* CodeableConcept "Sacrified Organs" """During surgery it is possible that some organs are 'sacrified' either to allow a radical excision of the tumor or on purpose (spleen) for staging procedures.
In case of partial resection of an organ (e.g. thyroid, kidney), the organ is not 'sacrified', this type of surgery should be then reported only in the 'tumor description' 
For other organs (e.g. hypothalamus) the only surgical procedure on it may determine some 'sacrifcice' of function, thus in this case, the organ should be coded as 'sacrified'.

(Spleen, Kidney, Eye, Lung, Ovary, Hypothalamus/hypophysis, Thyroid, Bladder, uterus Other)"""				
* shuntApplication 0..* BackboneElement "Shunt application" """Please report if a cerebrovascular shunt was inserted """				
* shuntApplication.type 0..1 CodeableConcept "Type of shunt" """This is a free text section in which it is possible to specify the type (e.g. ventriculo-peritoneal) of shunt used 
1 => Ventriculo-peritoneal
2 => Ventriculo atrial
3 => Subdural_peritoneal
4 =>  Cisternostomy (III ventricule)
5 => Other
-9922 => NK"""				
* shuntApplication.laterality 0..1 CodeableConcept "Laterality of shunt" """Please specify the laterality of the shunt
1 = right
2= left
3 = midline
-9911 = not applicable
-9922 => NK"""				
* shuntApplication.isRemoved 0..1 CodeableConcept "In place or removed ?" """Define if it is still in place or is already removed 
1 => Still in place
2 => Removed
 -9911 => NA
 -9922 => NK"""				
* amputation 0..1 CodeableConcept "Amputation" """Here it is requested only a yes or no. Details should be reported in the surgery description 
1 => Yes
2 => No
-9911 => Not applicable
-9922 => NK """				
* prothesis 0..1 BackboneElement "Prothesis" """Prothesis"""				
* prothesis.status 0..1 CodeableConcept "status" """Please state if the survivor has a prosthesis either internal (e.g. hip replacement) or external (e.g. artificial arm)"""				
* prothesis.deviceType 0..1 CodeableConcept "device type" """Please define if prosthesis is internal (e.g. titanium bone) or external (e.g. artificial limb). Also in this case, details should be reported in the surgery description.
1 => Internal
2 => External
-9922 => NK"""				
* colostomy 0..1 BackboneElement "Colostomy" """Colostomy"""				
* colostomy.status 0..1 CodeableConcept "status" """State if a colostomy was created. Details should be reported in the surgery section."""				
* colostomy.isRemoved 0..1 CodeableConcept "In place or removed ?" """State if a colostomy was created. Details should be reported in the surgery section.
1 => Still in place
2 => Removed
-9922 =>NK"""				
* gastrostomy 0..1 CodeableConcept "Gastrostomy" """State if a gastrostomy was created. Details should be reported in the surgery section.
1 => Yes
2 => No
-9911 => Not applicable
-9922 =>NK"""				
//--- END				
//--- END				
//--- END				
				
				
				
// -------------------------------------------------------------------------------				
//  Map to FHIR R4				
// -------------------------------------------------------------------------------				
Mapping: Surgery2Fhir				
Id: fhir				
Title: "MajorSurgery model to PCSP HL7 FHIR R4 Profiles"				
Source: MajorSurgery				
Target: "hl7.org/fhir/r4"				
				
* . -> "Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-surgery-eu-pcsp')"				
* relatedDiagnosis -> ".reasonReference"				
* relatedRelapse -> ".reasonReference"				
* identifier -> ".identifier"				
* istitutionOfTreatment -> "location.resolve().conformsTo(http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Location-eu-pcsp)"				
* istitutionOfTreatment.description -> "Location.description"				
* istitutionOfTreatment.name -> "Location.name"				
* istitutionOfTreatment.address -> "Location.address.city"				
// no map				
* istitutionOfTreatment.address.country -> "Location.address.country"				
* date -> "Procedure.performedDateTime"				
* description -> ".text"				
* affectedOrgan -> ".bodySite"				
* affectedOrgan -> ".code"				
* sacrifiedOrgan -> ".extension('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/surgery-sacrifiedOrgan').valueCodeableConcept"				
* sacrifiedOrgan -> ".code"				
* shuntApplication -> "Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-surgery-eu-pcsp').where(code.memberOf(ShuntProcedureTypeVs))"				
* shuntApplication.type -> ".code"				
* shuntApplication.laterality -> ".extension('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/mcode-laterality-qualifier').valueCodeableConcept"				
* shuntApplication.isRemoved -> ".focalDevice.action"				
* amputation -> "Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-surgery-eu-pcsp').where(code.memberOf(AmputationProcedureTypeVs)).exists()"				
* prothesis -> "Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-surgery-eu-pcsp').where(code.memberOf(ProstheticProcedureTypeVs))"				
* prothesis.status -> ".exists()"				
* prothesis.deviceType -> "usedCode"				
* colostomy -> "Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-surgery-eu-pcsp').where(code.memberOf(ColostomyProcedureTypeVs))"				
* colostomy.status -> ".exists()"				
* colostomy.isRemoved -> ".focalDevice.action"				
* gastrostomy -> "Procedure.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/Procedure-surgery-eu-pcsp').where(code.memberOf(GastrostomyProcedureTypeVs)).exists()"				
// --END				
// --END				
// --END				
// --END				
