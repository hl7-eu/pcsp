Instance: 54
InstanceOf: BundlePcsp
Usage: #example
Title: "Austria - Bundle: Example of a Childhood Cancer Survivor Passport"
Description: "Example of a Childhood Cancer Survivor Passport Bundle for the PanCareSurPass project"
* identifier.system = "http://fhir.ehealth-systems.at/identifier/pcsp-bundle"
* identifier.value = "b32a66ac5fed32e4d8670ba71d8191c24c3bcd63"
* type = #document
* timestamp = "2025-06-11T07:41:51.868411+00:00"
* entry[0].fullUrl = "urn:uuid:1cd43b1c-a24f-4118-b351-70c9d904252f"
* entry[=].resource = composition
* entry[+].fullUrl = "urn:uuid:04394254-c137-4ac6-82a8-c4ad2f973107"
* entry[=].resource = new-patient
* entry[+].fullUrl = "urn:uuid:64c55208-f9d4-45d1-a4fa-2ce338630536"
* entry[=].resource = primary-cancer-condition-1-0
* entry[+].fullUrl = "urn:uuid:1613689f-5599-4210-b9ff-ae26be3f7f19"
* entry[=].resource = diagnosis-observation-1
* entry[+].fullUrl = "urn:uuid:57aa2be0-d267-4e5c-a88b-aa14921c35f0"
* entry[=].resource = diagnosis-organization-1
* entry[+].fullUrl = "urn:uuid:2b20ecab-3277-4c53-b681-156042cc36e8"
* entry[=].resource = treatment-organization-1
* entry[+].fullUrl = "urn:uuid:5785bf99-8454-4bbe-924b-4433e638d075"
* entry[=].resource = diagnosis-encounter-1
* entry[+].fullUrl = "urn:uuid:ccb9f2df-2879-4df2-b5c3-027a56151849"
* entry[=].resource = diagnosis-hereditary-predisposition-1
* entry[+].fullUrl = "urn:uuid:a2d6d445-41e3-437d-8422-307a40e35329"
* entry[=].resource = flt-procecure-1
* entry[+].fullUrl = "urn:uuid:ec5333d0-e3d9-4e86-a3db-a6426d14f4b4"
* entry[=].resource = followed-protocol-plan-definition-1
* entry[+].fullUrl = "urn:uuid:567cd26b-ab14-490c-8d51-256edb3ff940"
* entry[=].resource = surgery-procedure-1-0-1

Instance: composition
InstanceOf: CompositionSurpassPcsp
Usage: #inline
* status = #preliminary
* type = $cs-generic-eu-pcsp#surpass
* subject = Reference(urn:uuid:04394254-c137-4ac6-82a8-c4ad2f973107)
* date = "2025-06-11T07:41:51.417033+00:00"
* author.identifier.value = "test"
* title = "Childhood Cancer Survivor Passport"
* section[flt].title = "FLT 1"
* section[flt].code = $loinc#72135-7
* section[flt].text.status = #generated
* section[flt].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Primary Cancer ...</p></div>"
* section[flt].entry[primaryCancer] = Reference(urn:uuid:64c55208-f9d4-45d1-a4fa-2ce338630536)
* section[flt].entry[flt] = Reference(urn:uuid:a2d6d445-41e3-437d-8422-307a40e35329)
* section[flt].section[majorSurgery].title = "Major Surgery"
* section[flt].section[majorSurgery].code = $loinc#8690-0
* section[flt].section[majorSurgery].text.status = #generated
* section[flt].section[majorSurgery].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Major Surgery ...</p></div>"
* section[flt].section[majorSurgery].entry[procedure] = Reference(urn:uuid:567cd26b-ab14-490c-8d51-256edb3ff940)

Instance: new-patient
InstanceOf: PatientPcsp
Usage: #inline
* identifier[0].use = #temp
* identifier[=].system = "http://fhir.ehealth-systems.at/identifier/patients/supa-transaction-id"
* identifier[=].value = "22e6e42b0babdd4226a0"
* identifier[+].system = "https://fhir.ehealth-systems.at/kiola/identifier/subject"
* identifier[=].value = "k3TaRUeHagAVTwTVZTgvm5"
* name.family = "Patient"
* name.given = "Test"
* gender = #male
* birthDate = "1995-01-01"

Instance: primary-cancer-condition-1-0
InstanceOf: ConditionPrimaryCancerPcsp
Usage: #inline
* extension[assertedDate].valueDateTime = "2005-01-01"
* extension[histologyMorphologyBehavior].valueCodeableConcept = $icd03#9186/3 "Zentrales Osteosarkom o.n.A."
* identifier.system = "http://fhir.ehealth-systems.at/identifier/supaapp/primary-cancer-condition"
* identifier.value = "1"
* code = $v3-NullFlavor#UNC "un-encoded"
* bodySite.extension.url = "http://hl7.eu/fhir/ig/pcsp/StructureDefinition/mcode-laterality-qualifier"
* bodySite.extension.valueCodeableConcept = $data-absent-reason#not-applicable "N/A"
* bodySite = $icd03#C41.9 "Knochen o.n.A."
* subject = Reference(urn:uuid:04394254-c137-4ac6-82a8-c4ad2f973107)
* encounter = Reference(urn:uuid:5785bf99-8454-4bbe-924b-4433e638d075)
* evidence[0].detail = Reference(urn:uuid:1613689f-5599-4210-b9ff-ae26be3f7f19)
* evidence[+].code = $sct#32895009 "Hereditary disease"
* evidence[=].detail = Reference(urn:uuid:ccb9f2df-2879-4df2-b5c3-027a56151849)

Instance: diagnosis-observation-1
InstanceOf: ObservationDiagnosisPcsp
Usage: #inline
* status = #final
* code = $loinc#29308-4 "Diagnosis"
* subject = Reference(urn:uuid:04394254-c137-4ac6-82a8-c4ad2f973107)
* effectiveDateTime = "2005-01-01"
* valueCodeableConcept = $icd03#9186/3 "Zentrales Osteosarkom o.n.A."
* performer = Reference(urn:uuid:57aa2be0-d267-4e5c-a88b-aa14921c35f0)

Instance: diagnosis-organization-1
InstanceOf: OrganizationCenterPcsp
Usage: #inline
* name = "St Anna Kinderspital"
* address.city = "Wien"
* address.country = "Österreich"

Instance: treatment-organization-1
InstanceOf: OrganizationCenterPcsp
Usage: #inline
* name = "St Anna Kinderspital"
* address.city = "Wien"
* address.country = "Österreich"

Instance: diagnosis-encounter-1
InstanceOf: EncounterPcsp
Usage: #inline
* status = #finished
* class = $v3-ActCode#AMB
* period.start = "2005-01-02"
* serviceProvider = Reference(urn:uuid:2b20ecab-3277-4c53-b681-156042cc36e8)

Instance: diagnosis-hereditary-predisposition-1
InstanceOf: ObservationHereditaryPredispositionPcsp
Usage: #inline
* status = #final
* code = $sct#47708004 "Genetic predisposition"
* subject = Reference(urn:uuid:04394254-c137-4ac6-82a8-c4ad2f973107)
* valueCodeableConcept = $orpha#357027 "Hereditary retinoblastoma"

Instance: flt-procecure-1
InstanceOf: ProcedureFltPcsp
Usage: #inline
* instantiatesCanonical = "https://fhir.ehealth-systems.at/PlanDefinition/supa-1f7dc934-fb28-43b7-bbc9-952d4af3d0b6"
* status = #completed
* category = $sct#708255002 "First line treatment"
* subject = Reference(urn:uuid:04394254-c137-4ac6-82a8-c4ad2f973107)
* performedPeriod.end = "2005-09-01"
* reasonReference = Reference(urn:uuid:64c55208-f9d4-45d1-a4fa-2ce338630536)
* outcome = $condition-clinical#inactive "Inactive"

Instance: followed-protocol-plan-definition-1
InstanceOf: PlanDefinitionFltPcsp
Usage: #inline
* extension[fltArm].valueString = "Arm A AND PR < 2/3 after primary surgery-chemotherapy"
* url = "https://fhir.ehealth-systems.at/PlanDefinition/supa-1f7dc934-fb28-43b7-bbc9-952d4af3d0b6"
* title = "RMS 96"
* type = $plan-definition-type#clinical-protocol "Clinical Protocol"
* status = #active

Instance: surgery-procedure-1-0-1
InstanceOf: ProcedureSurgeryPcsp
Usage: #inline
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">prox. Tibiaresektion links</div>"
* extension[0].url = "http://hl7.eu/fhir/ig/pcsp/StructureDefinition/procedure-notAffectedOrgan"
* extension[=].valueCodeableConcept = $sct#32849002
* extension[+].url = "http://hl7.eu/fhir/ig/pcsp/StructureDefinition/procedure-notAffectedOrgan"
* extension[=].valueCodeableConcept = $sct#818983003
* extension[+].url = "http://hl7.eu/fhir/ig/pcsp/StructureDefinition/procedure-notAffectedOrgan"
* extension[=].valueCodeableConcept = $sct#12738006
* extension[+].url = "http://hl7.eu/fhir/ig/pcsp/StructureDefinition/procedure-notAffectedOrgan"
* extension[=].valueCodeableConcept = $sct#89545001
* extension[+].url = "http://hl7.eu/fhir/ig/pcsp/StructureDefinition/procedure-notAffectedOrgan"
* extension[=].valueCodeableConcept = $sct#10200004
* extension[+].url = "http://hl7.eu/fhir/ig/pcsp/StructureDefinition/procedure-notAffectedOrgan"
* extension[=].valueCodeableConcept = $sct#421060004
* extension[+].url = "http://hl7.eu/fhir/ig/pcsp/StructureDefinition/procedure-notAffectedOrgan"
* extension[=].valueCodeableConcept = $sct#2748008
* extension[+].url = "http://hl7.eu/fhir/ig/pcsp/StructureDefinition/procedure-notAffectedOrgan"
* extension[=].valueCodeableConcept = $sct#90456006
* extension[+].url = "http://hl7.eu/fhir/ig/pcsp/StructureDefinition/procedure-notAffectedOrgan"
* extension[=].valueCodeableConcept = $sct#51185008
* extension[+].url = "http://hl7.eu/fhir/ig/pcsp/StructureDefinition/procedure-notAffectedOrgan"
* extension[=].valueCodeableConcept = $sct#12921003
* extension[+].url = "http://hl7.eu/fhir/ig/pcsp/StructureDefinition/procedure-notAffectedOrgan"
* extension[=].valueCodeableConcept = $sct#53120007
* extension[+].url = "http://hl7.eu/fhir/ig/pcsp/StructureDefinition/surgery-sacrifiedOrgan"
* extension[=].valueCodeableConcept = $v3-NullFlavor#OTH "Other"
* extension[=].valueCodeableConcept.text = "Tibia"
* identifier.system = "http://fhir.ehealth-systems.at/identifier/supaapp/major-surgery"
* identifier.value = "1"
* status = #completed
* category = $sct#387713003 "Surgical procedure"
* subject = Reference(urn:uuid:04394254-c137-4ac6-82a8-c4ad2f973107)
* performedDateTime = "2005-08-01"
* reasonReference = Reference(urn:uuid:64c55208-f9d4-45d1-a4fa-2ce338630536)
* bodySite = $sct#61685007 "Lower limb structure"