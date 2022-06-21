Invariant: bdl-pcsp-1
Description: "An SarPass document must have no additional Composition (including Composition subclass) resources besides the first."
Severity: #error
Expression: "entry.tail().where(resource is Composition).empty()"

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
    composition 1..1 and
    patient 1..1 and
	primaryCancer 1..* and
	flt 0..* and
	location 0..* and
	organization 0..* and
    chemotherapy 0..* and
    stemCellTransplantation  0..* and
    radiotherapy			  0..* and
    majorSurgery			  0..* and
	carePlan 0..* 
	


* entry[composition].resource only CompositionSurpassPcsp
* entry[patient].resource only PatientPcsp
* entry[primaryCancer].resource only ConditionPrimaryCancerPcsp
* entry[flt].resource only PlanDefinitionFltPcsp
* entry[location].resource only LocationPcsp
* entry[organization].resource only OrganizationCenterPcsp or Organization
* entry[chemotherapy].resource only MedicationAdministrationPcsp
* entry[stemCellTransplantation].resource  only ProcedureSctPcsp
* entry[radiotherapy].resource	only ProcedureRadiotherapyPcsp or ProcedureRadiotherapyBoostPcsp
* entry[majorSurgery].resource	only ProcedureSurgeryPcsp
* entry[carePlan].resource only CarePlanPcsp
