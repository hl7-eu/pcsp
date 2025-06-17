// -------------------------------------------------------------------------------				
//  Logical Model				pcsp-DocMetadataFSE.fsh
// -------------------------------------------------------------------------------				
Logical: DocMetadataFSE				
Id: DocMetadataFSE				
Title: "Metadata FSE Italy"				
Description:  """Metadata FSE Italy."""				
* identifier 0..1 Identifier "document ID" """Id documento (dovrebbe essere sull'oid root di regione Liguria) oid root + extension che comincia per nostro standard con le ultime tre cifre del codice azienda (940 per Gaslini) pi� punto pi� id univoco all'interno dell'azienda)"""				
* mimeType 0..1 code "MIME type" """Tipo mime del documento"""				
* size 0..1 unsignedInt "size" """Size del documento"""				
* hash 0..1 base64Binary "hash" """Hash del documento"""				
* code 0..1 CodeableConcept "document code" """Codice loinc del documento (parliamone)"""				
* classCode 0..1 CodeableConcept "Type of document" """Tipo documento (REF)"""				
* contentType 0..1 CodeableConcept "Content Type" """Content type code (da decidere se consulto o dimissione)"""				
* creationDate 0..1 dateTime "creation date" """Data creazione del documento"""				
* confidentiality 0..1 CodeableConcept "confidentiality" """Confidentiality (propendo per V, sarebbe un default))"""				
* mask 0..1 CodeableConcept "mask (oscuramento)" """Oscuramento (propendo per l'invio come oscurato, sarebbe un default)"""				
* replace 0..1 Identifier "replaced document" """Eventuale documento sostituito (oid + extension)"""				
* formatCode 0..1 CodeableConcept "Format of document" """Formato documento (PDF)"""				
* repositoryId 0..1 Identifier "Repository Id" """Id repository (Gaslini ne ha uno)"""				
* indexDate 0..1 dateTime "Index Date" """Data indicizzazione (la aggiunge chi indicizza)"""				
* practiceSettingCode 0..1 CodeableConcept "Practice setting code" """Practice setting code (da stabilire con Gaslini)"""				
* patientFiscalCode 0..1 Identifier "Patient Fiscal Code" """Codice fiscale paziente soggetto del documento"""				
* author 0..1 BackboneElement "Author" """Author"""				
* author.fiscalCode 0..1 Identifier "Author Fiscal Code" """Codice fiscale autore del documento"""				
* author.orgCode 0..1 CodeableConcept "Author Organization (code)" """Struttura dell'autore (codifica come sopra)"""				
* author.role 0..1 CodeableConcept "Author Role (code)" """Ruolo autore (codifica come sopra)"""				
* attesterFiscalCode 0..1 Identifier "Attester Fiscal Code" """Firmatario del documento (codice fiscale)"""				
* custiodian 0..1 CodeableConcept "Custodian" """Codice azienda custode del documento (070940)"""				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
// -------------------------------------------------------------------------------				
//  Map to FHIR R4				
// -------------------------------------------------------------------------------				
Mapping: DocMetadataFSE2Fhir				
Id: fhir				
Title: "DocMetadataFSE model to PCSP HL7 FHIR R4 Profiles"				
Source: DocMetadataFSE				
Target: "hl7.org/fhir/r4"				
				
* . -> "MedicationAdministration.conformsTo('http://hl7.eu/fhir/ig/pcsp/StructureDefinition/MedicationAdministration-eu-pcsp')"				
* identifier -> "�DocumentReference.masterIdentifier"				
* mimeType -> "DocumentReference.content.attachment.contentType"				
* size -> "DocumentReference.content.attachment.size"				
* hash -> "DocumentReference.content.attachment.hash"				
* code -> "DocumentReference.type"				
* classCode -> "DocumentReference.category"				
* contentType -> "DocumentReference.category (TBC)"				
* creationDate -> "DocumentReference.content.attachment.creation"				
* confidentiality -> "DocumentReference.securityLabel"				
* mask -> "DocumentReference.securityLabel"				
* replace -> "DocumentReference.relatesTo.where(code = 'replaces').target"				
* formatCode -> "DocumentReference.content.format"				
* repositoryId -> "DocumentReference.content.attachment.url"				
* indexDate -> "DocumentReference.date (TBC)"				
* practiceSettingCode -> "DocumentReference.context.practiceSetting"				
* patientFiscalCode -> "DocumentReference.subject.resolve().ofType(Patient).identifier"				
* author -> "DocumentReference.author"				
* author.fiscalCode -> "DocumentReference.author.resolve().ofType(PractitionerRole).organization.resolve().identifier"				
* author.orgCode -> "DocumentReference.author.resolve().ofType(PractitionerRole).practitioner.resolve().ofType(Practitioner).identifier"				
* author.role -> "DocumentReference.author.resolve().ofType(PractitionerRole).organization.resolve().code"				
* attesterFiscalCode -> "DocumentReference.author.resolve().ofType(Practitioner).identifier"				
* custiodian -> "DocumentReference.custodian.resolve().identifier"				
// --END				
// --END				
// --END				
