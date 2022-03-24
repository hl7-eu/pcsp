
RuleSet: ExtensionContext(path)
* ^context[+].type = #element
* ^context[=].expression = "{path}"


Extension: ResourceRelatedInfo
Id:   resource-relatedInfo
Title:  "Resource related information"
Description: "This extension provides a means to link the source resource to any target related information. This extension shall not be used when other more specific elements or standard extensions apply. E.g. Observation.hasMember "
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* value[x] only Reference (Resource)

Extension: EventLocation
Id:   event-location
Title:  "Act Location"
Description: "This extension provides a means to indicate where an act was, is or it is intended to take place."
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* value[x] only Reference (Location)

Extension: RadiotherapyEnergyOrIsotope
Id: radiotherapy-energy-or-isotope
Title: "Radiotherapy Energy or Isotope"
Description: """The radiation energy used for radiotherapy. The energy spectrum is characterized
by the maximum energy, the maximum accelaration voltage, or the used isotope. This extension is based on the CodeX™ Radiation Therapy RadiotherapyEnergyOrIsotope extension"""
* . ^short = "Radiotherapy Energy or Isotope"
* . ^definition = "The radiation energy used for radiotherapy. The energy spectrum is characterized\nby the maximum energy, the maximum accelaration voltage, or the used isotope."
* value[x] 1..
* value[x] only CodeableConcept or SimpleQuantity
* valueQuantity 0..1
* valueQuantity only SimpleQuantity
* valueQuantity from RadioUnitsVs (required)
* valueQuantity ^short = "The spectrum of radiation energy characterized by a maximum value.\nFor electrons, the maximum energy is given in MeV. For photons, the maximum acceleration voltage is given in MV or kV, although those are not units of energy."
* valueCodeableConcept 0..1
* valueCodeableConcept only CodeableConcept
* valueCodeableConcept from RadiotherapyIsotopes (extensible)
* valueCodeableConcept ^short = "The isotope used for radiotherapy."


Extension: ConditionRelated
Id: mcode-condition-related
Title:  "Condition related to resource"
Description: "The resource has an unspecified relationship with a Condition."

* value[x] only Reference(Condition)
* value[x] 1..1

/* == COMMENTED 
Extension: HistologyMorphologyBehavior
Id: mcode-histology-morphology-behavior
Title: "Histology-Morphology-Behavior"
Description: "An extension describing the morphologic and behavioral characteristics of the cancer."
* mcode-histology-morphology-behavior
* insert ExtensionContext(Condition)
* value[x] only CodeableConcept
* value[x] from ICDO3MorphologyVs (required)
* value[x] 1..1
===== END */

Extension: BodyLocationQualifier
Id: mcode-body-location-qualifier
Title: "Body Location Qualifier"
Description: "Qualifier to refine an body location. These include qualifiers for relative location, directionality, number, and plane, and exclude qualifiers for laterality."

* mcode-body-location-qualifier
// FHIR-xxxx
// * insert ExtensionContext(Specimen.collection.bodySite)
// * insert ExtensionContext(Procedure.bodySite)
// * insert ExtensionContext(Condition.bodySite)
// * insert ExtensionContext(Observation.bodySite)
* value[x] only CodeableConcept
* value[x] from BodyLocationQualifierVS (required)
* value[x] 1..1

Extension: LateralityQualifier
Id: mcode-laterality-qualifier
Title: "Laterality Qualifier"
Description: "Qualifier to specify  laterality."

* mcode-laterality-qualifier

// * insert ExtensionContext(Specimen.collection.bodySite)
// * insert ExtensionContext(Procedure.bodySite)
// * insert ExtensionContext(Condition.bodySite)
// * insert ExtensionContext(Observation.bodySite)
* value[x] only CodeableConcept
* value[x] from LateralityQualifierVS (required)
* value[x] 1..1

/*  ----
Extension: ComorbidConditionCode
Id: mcode-comorbid-condition-code
Title:  "Specific Condition Code for Comorbidity"
Description: "An extension for representing a specific condition code corresponding to the comorbid condition category."
* value[x] only CodeableConcept
* value[x] ^short = "Code for a specific condition in the named comorbidity category."
* value[x] 1..1

Extension: ComorbidConditionReference
Id: mcode-comorbid-condition-reference
Title:  "Specific Condition Reference for Comorbidity"
Description: "An extension for representing a reference to a condition resource corresponding to the comorbid condition category."
* value[x] only Reference(Condition)
* value[x] 1..1


Extension: EvidenceType
Id: mcode-evidence-type
Title: "Evidence Type"
Description: "Categorization of the kind of evidence used as input to the clinical judgment. This corresponds to both the S and O in SOAP."
* insert ExtensionContext(Observation)
* value[x] only CodeableConcept
* value[x] from CancerDiseaseStatusEvidenceTypeVS (required)
* value[x] 1..1


Extension: TreatmentTerminationReason
Id: mcode-treatment-termination-reason
Title: "Termination Reason"
Description: "A code explaining the unplanned or premature termination, or normal completion, of a plan of treatment, course of medication, or research study."
//* insert ExtensionContext(MedicationRequest) - removed as per FHIR-32243
//* insert ExtensionContext(Procedure)         - removed as per FHIR-32243
* value[x] only CodeableConcept
* value[x] from TreatmentTerminationReasonVS (required)
* value[x] 1..1

Extension: ProcedureIntent
Id: mcode-procedure-intent
Title: "Procedure Intent"
Description: "The purpose of a procedure."
//* insert ExtensionContext(MedicationRequest) - removed as per FHIR-32243
//* insert ExtensionContext(Procedure)         - removed as per FHIR-32243
* value[x] only CodeableConcept
* value[x] from ProcedureIntentVS (required)
* value[x] 1..1


--- */
