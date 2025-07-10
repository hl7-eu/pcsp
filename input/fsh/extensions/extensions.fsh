
RuleSet: ExtensionContext(path)
* ^context[+].type = #element
* ^context[=].expression = "{path}"

Extension: AnnotationType
Id: annotation-type
Title:  "Annotation Type"
Description: "This extension is used to indicate the kind of note captured"
* insert ExtensionContext(Annotation)
* value[x] only CodeableConcept

Extension: FltArm
Id: procedure-fltArm
Title:  "Randomization arm for trial"
Description: "This extension is used to provide a textual description of the randomization arm for trials (FLT)."
* insert ExtensionContext(PlanDefinition)
* value[x] only string

Extension: PerformedTiming
Id: procedure-performedTiming
Title:  "Performed Timing"
Description: "This extension allows to indicate when the procedure was performed as Timing."
* insert ExtensionContext(Procedure)
* value[x] only Timing


Extension: RelapseType
Id: condition-relapseType
Title:  "Relapse Type"
Description: "This extension is used to indicate if a relapse/progression is local, remote or combined."
* insert ExtensionContext(Condition)
* value[x] only CodeableConcept


Extension: ResourceRelatedInfo
Id:   resource-relatedInfo
Title:  "Resource related information"
Description: "This extension provides a means to link the source resource to any target related information. This extension shall not be used when other more specific elements or standard extensions apply. E.g. Observation.hasMember."
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* value[x] only Reference (Resource)

Extension: EventLocation
Id:   event-location
Title:  "Act Location"
Description: "This extension provides a means to indicate where an act was, is or it is intended to take place."
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert ExtensionContext(Resource)
* value[x] only Reference (Location)

Extension: PreviousStatus
Id:   condition-previousStatus
Title:  "Previous Status"
Description: "This extension provides a mean to indicate the previous clinicalStatus of a condition. It might be used for example to indicate if a relapse is now in remission."
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert ExtensionContext(Condition)
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from $vs-condition-clinical

Extension: ConditionRelated
Id: mcode-condition-related
Title:  "Condition related to resource"
Description: "The resource has an unspecified relationship with a Condition."

* insert ExtensionContext(Condition)
* value[x] only Reference(Condition)
* value[x] 1..1



// ------------------------------------
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

// ------------------------------------
Extension: SacrifiedOrgan
Id:   surgery-sacrifiedOrgan
Title:  "Sacrified organ"
Description: "Organs are 'sacrified' either to allow a radical excision of the tumor or on purpose (spleen) for staging procedures"
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* insert ExtensionContext(Procedure)
* value[x] only CodeableConcept 
* valueCodeableConcept from SacrifiedOrganVs (extensible)


Extension: NotAffectedOrgan
Id: procedure-notAffectedOrgan
Title:  "Not affected Organ"
Description: """This extension is used to explicitly indicate the Organ (body site) that has not been affected by this procedure."""
* insert ExtensionContext(Procedure)
* value[x] only CodeableConcept
* valueCodeableConcept from AffectedOrganVs (preferred)

// ------------------------------------

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
* value[x] from BodyLocationQualifierVS (preferred)
* value[x] 1..1

// ------------------------------------
Extension: LateralityQualifier
Id: mcode-laterality-qualifier
Title: "Laterality Qualifier"
Description: "Qualifier to specify laterality."

* mcode-laterality-qualifier

// * insert ExtensionContext(Specimen.collection.bodySite)
// * insert ExtensionContext(Procedure.bodySite)
// * insert ExtensionContext(Condition.bodySite)
// * insert ExtensionContext(Observation.bodySite)
* value[x] only CodeableConcept
// * value[x] from LateralityQualifierVS (preferred)
* value[x] 1..1

// ------------------------------------
Extension: SctDonorType
Id: sct-donor-type
Title: "Stem Cell Donor Type"
Description: "Specify the type of donor for the cell used in a transplantation"

* value[x] only CodeableConcept
* value[x] 1..1

// ------------------------------------
Extension: SctSourceType
Id: sct-source-type
Title: "Stem Cell Source Type"
Description: "Specify the type of source for the cell used in a transplantation"

* value[x] only CodeableConcept
* value[x] 1..1

// ------------------------------------
Extension: ProcedureUsedReference
Id: procedure-usedReference
Title: "Procedure Used Reference"
Description: "Extend the usedReference element to BiologicallyDerivedProduct"

* value[x] only Reference
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
