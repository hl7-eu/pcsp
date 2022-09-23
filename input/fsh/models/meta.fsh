Instance: DocMetadataFSE
InstanceOf: StructureDefinition
Description: "Metadata FSE Italy.
Maturity Level: 0"
Title: "Metadata FSE Italy"
Usage: #definition
* publisher = "PanCareSurPass project"
* status = #draft
* url = "http://hl7.eu/fhir/ig/pcsp/StructureDefinition/DocMetadataFSE"
* name = "DocMetadataFSE"
* title = "Metadata FSE Italy"
* status = #draft
* experimental = true
* description = "Metadata FSE Italy.
Maturity Level: 0"
* version = "0.0.1"
* mapping[0].identity = "fhir"
* mapping[0].uri = "hl7.org/fhir/r4"
* mapping[0].name = "HL7 FHIR"
* kind = #logical
* abstract = true
* type = "DocMetadataFSE"
* baseDefinition = "http://hl7.org/fhir/StructureDefinition/Element"
* derivation = #specialization
* differential.element[0].id = "DocMetadataFSE"
* differential.element[0].path = "DocMetadataFSE"
* differential.element[0].short = "Metadata FSE Italy"
* differential.element[0].definition = "Metadata FSE Italy"
* differential.element[0].min = 1
* differential.element[0].max = "1"
* differential.element[1].id = "DocMetadataFSE.identifier"
* differential.element[1].path = "DocMetadataFSE.identifier"
* differential.element[1].short = "document ID"
* differential.element[1].definition = "Id documento (dovrebbe essere sull'oid root di regione Liguria) oid root + extension che comincia per nostro standard con le ultime tre cifre del codice azienda (940 per Gaslini) pi� punto pi� id univoco all'interno dell'azienda)"
* differential.element[1].min = 0
* differential.element[1].max = "1"
* differential.element[1].type.code = #Identifier
* differential.element[2].id = "DocMetadataFSE.mimeType"
* differential.element[2].path = "DocMetadataFSE.mimeType"
* differential.element[2].short = "MIME type"
* differential.element[2].definition = "Tipo mime del documento"
* differential.element[2].min = 0
* differential.element[2].max = "1"
* differential.element[2].type.code = #code
* differential.element[3].id = "DocMetadataFSE.size"
* differential.element[3].path = "DocMetadataFSE.size"
* differential.element[3].short = "size"
* differential.element[3].definition = "Size del documento"
* differential.element[3].min = 0
* differential.element[3].max = "1"
* differential.element[3].type.code = #unsignedInt
* differential.element[4].id = "DocMetadataFSE.hash"
* differential.element[4].path = "DocMetadataFSE.hash"
* differential.element[4].short = "hash"
* differential.element[4].definition = "Hash del documento"
* differential.element[4].min = 0
* differential.element[4].max = "1"
* differential.element[4].type.code = #base64Binary
* differential.element[5].id = "DocMetadataFSE.code"
* differential.element[5].path = "DocMetadataFSE.code"
* differential.element[5].short = "document code"
* differential.element[5].definition = "Codice loinc del documento (parliamone)"
* differential.element[5].min = 0
* differential.element[5].max = "1"
* differential.element[5].type.code = #CodeableConcept
* differential.element[6].id = "DocMetadataFSE.classCode"
* differential.element[6].path = "DocMetadataFSE.classCode"
* differential.element[6].short = "Type of document"
* differential.element[6].definition = "Tipo documento (REF)"
* differential.element[6].min = 0
* differential.element[6].max = "1"
* differential.element[6].type.code = #CodeableConcept
* differential.element[7].id = "DocMetadataFSE.contentType"
* differential.element[7].path = "DocMetadataFSE.contentType"
* differential.element[7].short = "Content Type"
* differential.element[7].definition = "Content type code (da decidere se consulto o dimissione)"
* differential.element[7].min = 0
* differential.element[7].max = "1"
* differential.element[7].type.code = #CodeableConcept
* differential.element[8].id = "DocMetadataFSE.creationDate"
* differential.element[8].path = "DocMetadataFSE.creationDate"
* differential.element[8].short = "creation date"
* differential.element[8].definition = "Data creazione del documento"
* differential.element[8].min = 0
* differential.element[8].max = "1"
* differential.element[8].type.code = #dateTime
* differential.element[9].id = "DocMetadataFSE.confidentiality"
* differential.element[9].path = "DocMetadataFSE.confidentiality"
* differential.element[9].short = "confidentiality"
* differential.element[9].definition = "Confidentiality (propendo per V, sarebbe un default))"
* differential.element[9].min = 0
* differential.element[9].max = "1"
* differential.element[9].type.code = #CodeableConcept
* differential.element[10].id = "DocMetadataFSE.mask"
* differential.element[10].path = "DocMetadataFSE.mask"
* differential.element[10].short = "mask (oscuramento)"
* differential.element[10].definition = "Oscuramento (propendo per l'invio come oscurato, sarebbe un default)"
* differential.element[10].min = 0
* differential.element[10].max = "1"
* differential.element[10].type.code = #CodeableConcept
* differential.element[11].id = "DocMetadataFSE.replace"
* differential.element[11].path = "DocMetadataFSE.replace"
* differential.element[11].short = "replaced document"
* differential.element[11].definition = "Eventuale documento sostituito (oid + extension)"
* differential.element[11].min = 0
* differential.element[11].max = "1"
* differential.element[11].type.code = #Identifier
* differential.element[12].id = "DocMetadataFSE.formatCode"
* differential.element[12].path = "DocMetadataFSE.formatCode"
* differential.element[12].short = "Format of document"
* differential.element[12].definition = "Formato documento (PDF)"
* differential.element[12].min = 0
* differential.element[12].max = "1"
* differential.element[12].type.code = #CodeableConcept
* differential.element[13].id = "DocMetadataFSE.repositoryId"
* differential.element[13].path = "DocMetadataFSE.repositoryId"
* differential.element[13].short = "Repository Id"
* differential.element[13].definition = "Id repository (Gaslini ne ha uno)"
* differential.element[13].min = 0
* differential.element[13].max = "1"
* differential.element[13].type.code = #Identifier
* differential.element[14].id = "DocMetadataFSE.indexDate"
* differential.element[14].path = "DocMetadataFSE.indexDate"
* differential.element[14].short = "Index Date"
* differential.element[14].definition = "Data indicizzazione (la aggiunge chi indicizza)"
* differential.element[14].min = 0
* differential.element[14].max = "1"
* differential.element[14].type.code = #dateTime
* differential.element[15].id = "DocMetadataFSE.practiceSettingCode"
* differential.element[15].path = "DocMetadataFSE.practiceSettingCode"
* differential.element[15].short = "Practice setting code"
* differential.element[15].definition = "Practice setting code (da stabilire con Gaslini)"
* differential.element[15].min = 0
* differential.element[15].max = "1"
* differential.element[15].type.code = #CodeableConcept
* differential.element[16].id = "DocMetadataFSE.patientFiscalCode"
* differential.element[16].path = "DocMetadataFSE.patientFiscalCode"
* differential.element[16].short = "Patient Fiscal Code"
* differential.element[16].definition = "Codice fiscale paziente soggetto del documento"
* differential.element[16].min = 0
* differential.element[16].max = "1"
* differential.element[16].type.code = #Identifier
* differential.element[17].id = "DocMetadataFSE.author"
* differential.element[17].path = "DocMetadataFSE.author"
* differential.element[17].short = "Author"
* differential.element[17].definition = "Author"
* differential.element[17].min = 0
* differential.element[17].max = "1"
* differential.element[17].type.code = #BackboneElement
* differential.element[18].id = "DocMetadataFSE.author.fiscalCode"
* differential.element[18].path = "DocMetadataFSE.author.fiscalCode"
* differential.element[18].short = "Author Fiscal Code"
* differential.element[18].definition = "Codice fiscale autore del documento"
* differential.element[18].min = 0
* differential.element[18].max = "1"
* differential.element[18].type.code = #Identifier
* differential.element[19].id = "DocMetadataFSE.author.orgCode"
* differential.element[19].path = "DocMetadataFSE.author.orgCode"
* differential.element[19].short = "Author Organization (code)"
* differential.element[19].definition = "Struttura dell'autore (codifica come sopra)"
* differential.element[19].min = 0
* differential.element[19].max = "1"
* differential.element[19].type.code = #CodeableConcept
* differential.element[20].id = "DocMetadataFSE.author.role"
* differential.element[20].path = "DocMetadataFSE.author.role"
* differential.element[20].short = "Author Role (code)"
* differential.element[20].definition = "Ruolo autore (codifica come sopra)"
* differential.element[20].min = 0
* differential.element[20].max = "1"
* differential.element[20].type.code = #CodeableConcept
* differential.element[21].id = "DocMetadataFSE.attesterFiscalCode"
* differential.element[21].path = "DocMetadataFSE.attesterFiscalCode"
* differential.element[21].short = "Attester Fiscal Code"
* differential.element[21].definition = "Firmatario del documento (codice fiscale)"
* differential.element[21].min = 0
* differential.element[21].max = "1"
* differential.element[21].type.code = #Identifier
* differential.element[22].id = "DocMetadataFSE.custiodian"
* differential.element[22].path = "DocMetadataFSE.custiodian"
* differential.element[22].short = "Custodian"
* differential.element[22].definition = "Codice azienda custode del documento (070940)"
* differential.element[22].min = 0
* differential.element[22].max = "1"
* differential.element[22].type.code = #CodeableConcept
// 
//  
// === MAPPING === 
// 
* differential.element[0].mapping[0].identity = "fhir"
* differential.element[0].mapping[0].map = "DocumentReference"

* differential.element[1].mapping[0].identity = "fhir"
* differential.element[1].mapping[0].map = "�DocumentReference.masterIdentifier"

* differential.element[2].mapping[0].identity = "fhir"
* differential.element[2].mapping[0].map = "DocumentReference.content.attachment.contentType"

* differential.element[3].mapping[0].identity = "fhir"
* differential.element[3].mapping[0].map = "DocumentReference.content.attachment.size"

* differential.element[4].mapping[0].identity = "fhir"
* differential.element[4].mapping[0].map = "DocumentReference.content.attachment.hash"

* differential.element[5].mapping[0].identity = "fhir"
* differential.element[5].mapping[0].map = "DocumentReference.type"

* differential.element[6].mapping[0].identity = "fhir"
* differential.element[6].mapping[0].map = "DocumentReference.category"

* differential.element[7].mapping[0].identity = "fhir"
* differential.element[7].mapping[0].map = "DocumentReference.category (TBC)"

* differential.element[8].mapping[0].identity = "fhir"
* differential.element[8].mapping[0].map = "DocumentReference.content.attachment.creation"

* differential.element[9].mapping[0].identity = "fhir"
* differential.element[9].mapping[0].map = "DocumentReference.securityLabel"

* differential.element[10].mapping[0].identity = "fhir"
* differential.element[10].mapping[0].map = "DocumentReference.securityLabel"

* differential.element[11].mapping[0].identity = "fhir"
* differential.element[11].mapping[0].map = "DocumentReference.relatesTo.where(code = 'replaces').target"

* differential.element[12].mapping[0].identity = "fhir"
* differential.element[12].mapping[0].map = "DocumentReference.content.format"

* differential.element[13].mapping[0].identity = "fhir"
* differential.element[13].mapping[0].map = "DocumentReference.content.attachment.url"

* differential.element[14].mapping[0].identity = "fhir"
* differential.element[14].mapping[0].map = "DocumentReference.date (TBC)"

* differential.element[15].mapping[0].identity = "fhir"
* differential.element[15].mapping[0].map = "DocumentReference.context.practiceSetting"

* differential.element[16].mapping[0].identity = "fhir"
* differential.element[16].mapping[0].map = "DocumentReference.subject.resolve().ofType(Patient).identifier"

* differential.element[17].mapping[0].identity = "fhir"
* differential.element[17].mapping[0].map = "DocumentReference.author"

* differential.element[18].mapping[0].identity = "fhir"
* differential.element[18].mapping[0].map = "DocumentReference.author.resolve().ofType(PractitionerRole).organization.resolve().identifier"

* differential.element[19].mapping[0].identity = "fhir"
* differential.element[19].mapping[0].map = "DocumentReference.author.resolve().ofType(PractitionerRole).practitioner.resolve().ofType(Practitioner).identifier"

* differential.element[20].mapping[0].identity = "fhir"
* differential.element[20].mapping[0].map = "DocumentReference.author.resolve().ofType(PractitionerRole).organization.resolve().code"

* differential.element[21].mapping[0].identity = "fhir"
* differential.element[21].mapping[0].map = "DocumentReference.author.resolve().ofType(Practitioner).identifier"

* differential.element[22].mapping[0].identity = "fhir"
* differential.element[22].mapping[0].map = "DocumentReference.custodian.resolve().identifier"






































































































































// 
