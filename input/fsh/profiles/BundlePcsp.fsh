Invariant: bdl-pcsp-1
Description: "An SarPass document must have no additional Composition (including Composition subclass) resources besides the first."
Severity: #error
Expression: "entry.tail().where(resource is Composition).empty()"


RuleSet: BunldeEntrySlicDefRules (name, card, short, def, profiles)
// SectionEntrySliceDefRules (flags, 0.., "Care Team", "Care Team", CareTeamXeh)

* entry contains {name} {card}
* entry[{name}] {card}
* entry[{name}] ^short = "{short}"
* entry[{name}] ^definition = "{def}"
* entry[{name}].resource only {profiles}


//===================================
Profile: BundlePcsp
Parent: Bundle
Id: Bundle-eu-pcsp
Title: "Bundle: Survivor Passport"
Description: "This profile represents the constraints applied to the Bundle resource by the PCSP FHIR Implementation Guide."
//===================================

* obeys bdl-pcsp-1
* . ^short = "Survivorship Passport (SurPass) Bundle"
* . ^definition = "Survivorship Passport Bundle. \r\nA container for a collection of resources in the patient summary document."
* identifier 1.. 
* type = #document (exactly)
* timestamp 1.. 
* link ..0
* entry 1.. 
* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.discriminator[+].type = #profile
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.rules = #open
* entry ^short = "Entry resource in the SurPass bundle"
* entry ^definition = "An entry resource included in the surpass document bundle resource. "
* entry ^comment = "Must contain the PCSP Composition as the first entry (only a single Composition resource instance may be included).  Additional constraints are specified in the PCSP Composition profile."
* entry.fullUrl 1..
* entry.resource 1..
* entry.search ..0
* entry.request ..0
* entry.response ..0

// * entry[composition].resource only CompositionSurpassPcsp
* insert BunldeEntrySlicDefRules (composition, 1..1, PCSP Composition, PCSP Composition, CompositionSurpassPcsp)
* insert BunldeEntrySlicDefRules (patient, 1..1, Patient: PCSP, Patient: PCSP,  PatientPcsp )


* insert BunldeEntrySlicDefRules (flt-def, 0.., PlanDefinition: FLT, PlanDefinition: Front Line Treatment, PlanDefinitionFltPcsp)
* insert BunldeEntrySlicDefRules (flt, 0.., Procedure: FLT, Procedure: FronLine Treatment, ProcedureFltPcsp)

// Cancer Diagnosis
* insert BunldeEntrySlicDefRules (cancerCondition, 1..*, Primary Cancer\, Relapse and Metastasis, Primary Cancer\, Relapse and Metastasis, ConditionPrimaryCancerPcsp or ConditionSecondaryCancerPcsp )
* insert BunldeEntrySlicDefRules (observationDiagnosis, 0..*, Observation: Diagnosis details, Observation: Diagnosis details,  ObservationDiagnosisPcsp)
* insert BunldeEntrySlicDefRules (observationHereditaryPredisposition, 0..*, Observation: Hereditary Predisposition, Observation: Hereditary Predisposition,  ObservationHereditaryPredispositionPcsp )
* insert BunldeEntrySlicDefRules (cancerStageGroup, 0..*, Observation: Cancer Stage Group, Observation: Cancer Stage Group,  CancerStageGroup )
* insert BunldeEntrySlicDefRules (encounter, 0..*, Encounter: Treatment Center, Encounter: Treatment Center,  EncounterPcsp )
* insert BunldeEntrySlicDefRules (location, 0..*, Location: PCSP, Location: PCSP,  LocationPcsp )
* insert BunldeEntrySlicDefRules (organization, 0..*, Organization: Primary Center, Organization: Primary Treatment Center / Center of diagnosis,  OrganizationCenterPcsp or Organization )




// RADIO
* insert BunldeEntrySlicDefRules (radiotherapy, 0..*, Procedure: Radiotherapy, Procedure: Radiotherapy,  ProcedureRadiotherapyPcsp or ProcedureRadiotherapyBoostPcsp or ProcedureRadiotherapyShieldingPcsp )
* insert BunldeEntrySlicDefRules (totalDoseRadio, 0..*, Observation: Radiotherapy Total Dose, Observation: Radiotherapy Total Dose,  TotalDoseRadObsPcsp )

// Surgery
* insert BunldeEntrySlicDefRules (majorSurgery, 0..*, Procedure: Surgery, Procedure: Surgery,  ProcedureSurgeryPcsp )

// Care Plan
* insert BunldeEntrySlicDefRules (carePlan, 0..*, CarePlan: PCSP-generated plan, CarePlan: PCSP-generated plan,  CarePlanPcsp )
* insert BunldeEntrySlicDefRules (riskFactor, 0..*, Observation: Risk Factor, Observation: Risk Factor,  ObservationRiskFactor )



// SCT
* insert BunldeEntrySlicDefRules (biologicallyDerivedProduct, 0..*, BiologicallyDerivedProduct: Stem Cell, BiologicallyDerivedProduct: Stem Cell, BiologicallyDerivedProductSctPcsp)
* insert BunldeEntrySlicDefRules (stemCellTransplantation, 0..*, Procedure: Stem Cell Transplantation, Procedure: Stem Cell Transplantation, ProcedureSctPcsp)
* insert BunldeEntrySlicDefRules (bloodAboRh, 0..*, Observation: Blood type/RH, Observation: Blood type/RH, ObservationBloodAboRh)
* insert BunldeEntrySlicDefRules (gvhd, 0..*, Condition: GvHD, Condition: GvHD, ConditionGvhdPcsp)
* insert BunldeEntrySlicDefRules (gvhd-prophylaxis, 0..*, Procedure: SCT Prophylaxis, Procedure: SCT Prophylaxis, ProcedureSctProphylaxisPcsp)

// Chemo
* insert BunldeEntrySlicDefRules (medAdminChemo, 0..*, MedicationAdministration: Chemotherapy, MedicationAdministration: Chemotherapy, MedicationAdministrationPcsp)
* insert BunldeEntrySlicDefRules (medStatementChemo, 0..*, MedicationStatement: Chemotherapy, MedicationStatement: Chemotherapy, MedicationStatementPcsp)
* insert BunldeEntrySlicDefRules (cumulativeDoseChemo, 0..*, Observation: Chemotherapy Cumulative Dose, Observation: Chemotherapy Cumulative Dose, CumulativeDoseChemoObsPcsp)


// Other
* insert BunldeEntrySlicDefRules (conditionToxicity, 0.., Condition: Severe Toxicity, Condition: Severe Toxicity, ConditionToxicityPcsp)
* insert BunldeEntrySlicDefRules (conditionOtherInfos, 0.., Other Conditions,Other Conditions, ConditionOtherInfosPcsp)
* insert BunldeEntrySlicDefRules (procedureCVC, 0.., Procedure: Catheter,Procedure: Catheter, ProcedureCVCOtherInfosPcsp)
* insert BunldeEntrySlicDefRules (procedureTransfusion, 0.., Procedure: Transfusion,Procedure: Transfusion, ProcedureTransfusionOtherInfosPcsp)
* insert BunldeEntrySlicDefRules (procedureCryopreservation, 0.., Procedure: Cryopreservation,Procedure: Cryopreservation, ProcedureCryopreservationOtherInfosPcsp)
* insert BunldeEntrySlicDefRules (procedureOtherTreatment, 0.., Procedure: Other Treatments,Procedure: Other Treatments, ProcedureOtherTreatmentPcsp)

