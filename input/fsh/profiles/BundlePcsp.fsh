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
* entry contains
 /*    composition 1..1 and */
    patient 1..1 and
	cancerCondition 1..* and
	flt-def 0..* and
	location 0..* and
	organization 0..* and
   /*  chemotherapy 0..* and */
    /* stemCellTransplantation  0..* and */
    radiotherapy			  0..* and
    majorSurgery			  0..* and
	carePlan 0..* 

// * entry[composition].resource only CompositionSurpassPcsp
* insert BunldeEntrySlicDefRules (composition, 1..1, PCSP Composition, PCSP Composition, CompositionSurpassPcsp)
* entry[patient].resource only PatientPcsp
* entry[cancerCondition].resource only ConditionPrimaryCancerPcsp or ConditionSecondaryCancerPcsp
* entry[flt-def].resource only PlanDefinitionFltPcsp
* entry[location].resource only LocationPcsp

* entry[organization].resource only OrganizationCenterPcsp or Organization

// * entry[stemCellTransplantation].resource  only ProcedureSctPcsp
* entry[radiotherapy].resource	only ProcedureRadiotherapyPcsp or ProcedureRadiotherapyBoostPcsp or ProcedureRadiotherapyShieldingPcsp
* entry[majorSurgery].resource	only ProcedureSurgeryPcsp
* entry[carePlan].resource only CarePlanPcsp

* insert BunldeEntrySlicDefRules (encounter, 0..*, Encounter: Treatment Center, Encounter: Treatment Center, EncounterPcsp)

// SCT
* insert BunldeEntrySlicDefRules (biologicallyDerivedProduct, 0..*, BiologicallyDerivedProduct: Stem Cell, BiologicallyDerivedProduct: Stem Cell, EncounterPcsp)
* insert BunldeEntrySlicDefRules (stemCellTransplantation, 0..*, Procedure: Stem Cell Transplantation, Procedure: Stem Cell Transplantation, ProcedureSctPcsp)
* insert BunldeEntrySlicDefRules (bloodAboRh, 0..*, Observation: Blood type/RH, Observation: Blood type/RH, ObservationBloodAboRh)
* insert BunldeEntrySlicDefRules (gvhd, 0..*, Condition: GvHD, Condition: GvHD, ConditionGvhdPcsp)
* insert BunldeEntrySlicDefRules (gvhd-prophylaxis, 0..*, Procedure: SCT Prophylaxis, Procedure: SCT Prophylaxis, ProcedureSctProphylaxisPcsp)

// Chemo
* insert BunldeEntrySlicDefRules (medAdminChemo, 0..*, MedicationAdministration: Chemotherapy, MedicationAdministration: Chemotherapy, MedicationAdministrationPcsp)
* insert BunldeEntrySlicDefRules (medStatementChemo, 0..*, MedicationStatement: Chemotherapy, MedicationStatement: Chemotherapy, MedicationStatementPcsp)
