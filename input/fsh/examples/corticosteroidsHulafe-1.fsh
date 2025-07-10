 
 // Ciclofosfamide

Instance:  ChemoHulafe-1-corticosteroids
InstanceOf: MedicationStatementPcsp
Title:   "Hulafe - MedicationStatement: Chemotherapy Corticosteroids"
Description: "Sample of Chemotherapy based on information provided by Hulafe (Corticosteroids not used for at least 4 weeks continuously)"
Usage:  #example
* insert Hulafe-1-subject
* reasonReference = Reference(PrimaryCancerHulafe-1)
* status = #not-taken
* medicationCodeableConcept = $atc#H02 "CORTICOSTEROIDS FOR SYSTEMIC USE"
* dosage.timing.repeat.boundsDuration
  * value = 4
  * unit = "w"
  * comparator = #>
  * code = #w
  * system = $ucum