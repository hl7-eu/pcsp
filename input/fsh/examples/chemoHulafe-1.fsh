
RuleSet: ChemoHulafe-1-common
* extension[location].valueReference = Reference(ChemoHulafe-1-Location)
* effectivePeriod.start = "2012-08-08"
* effectivePeriod.end = "2012-10-11"
* status = #completed
* insert Hulafe-1-subject
* reasonReference = Reference(PrimaryCancerHulafe-1)

RuleSet: ChemoHulafe-1-dose
* status = #final
* insert Hulafe-1-subject
* code = CsGenericPcsp#cumulativeDose
* method = $sct#702873001	"Calculation technique"
* valueQuantity
  * code = #mg/m2
  * system = $ucum
  * unit = "mg/m2"

// ===================================================================
Instance:  ChemoHulafe-1-Location
InstanceOf: LocationPcsp
Title:   "Hulafe - Location: Chemotherapy"
Description: "Sample of Chemotherapy based on information provided by Hulafe (Location)"
Usage:  #example

* name = "Hospital la Fe"
* address.city = "Valencia"
* address.country = "Spain"

// ===================================================================
  
 // Ciclofosfamide

Instance:  ChemoHulafe-1-Ciclofosfamide
InstanceOf: MedicationAdministrationPcsp
Title:   "Hulafe - MedicationAdministration: Chemotherapy Ciclofosfamide"
Description: "Sample of Chemotherapy based on information provided by Hulafe (Ciclofosfamide)"
Usage:  #example
* insert ChemoHulafe-1-common
* extension[relatedCumulativeDose].valueReference = Reference(ChemoHulafe-1-Ciclofosfamide-dose)
* medicationCodeableConcept = $atc#L01AA01 "cyclophosphamide"

Instance:  ChemoHulafe-1-Ciclofosfamide-dose
InstanceOf: CumulativeDoseChemoObsPcsp
Title:   "Hulafe - Observation: Chemotherapy Ciclofosfamide Cumulative Dose"
Description: "Sample of Chemotherapy based on information provided by Hulafe (Ciclofosfamide Cumulative Dose)"
Usage:  #example
* insert ChemoHulafe-1-dose
* valueQuantity.value = 3000

 // Metotrexato

Instance:  ChemoHulafe-1-Metotrexato
InstanceOf: MedicationAdministrationPcsp
Title:   "Hulafe - MedicationAdministration: Chemotherapy Metotrexato"
Description: "Sample of Chemotherapy based on information provided by Hulafe (Metotrexato)"
Usage:  #example
* insert ChemoHulafe-1-common
* extension[relatedCumulativeDose].valueReference = Reference(ChemoHulafe-1-Metotrexato-dose)
* medicationCodeableConcept = $atc#L01BA01 "methotrexate"

Instance:  ChemoHulafe-1-Metotrexato-dose
InstanceOf: CumulativeDoseChemoObsPcsp
Title:   "Hulafe - Observation: Chemotherapy Metotrexato Cumulative Dose"
Description: "Sample of Chemotherapy based on information provided by Hulafe (Metotrexato Cumulative Dose)"
Usage:  #example
* insert ChemoHulafe-1-dose
* valueQuantity.value = 12000

 // Vincristina

Instance:  ChemoHulafe-1-Vincristina
InstanceOf: MedicationAdministrationPcsp
Title:   "Hulafe - MedicationAdministration: Chemotherapy Vincristina"
Description: "Sample of Chemotherapy based on information provided by Hulafe (Vincristina)"
Usage:  #example
* insert ChemoHulafe-1-common
* extension[relatedCumulativeDose].valueReference = Reference(ChemoHulafe-1-Vincristina-dose)
* medicationCodeableConcept = $atc#L01CA02 "vincristine"

Instance:  ChemoHulafe-1-Vincristina-dose
InstanceOf: CumulativeDoseChemoObsPcsp
Title:   "Hulafe - Observation: Chemotherapy Vincristina Cumulative Dose"
Description: "Sample of Chemotherapy based on information provided by Hulafe (Vincristina Cumulative Dose)"
Usage:  #example
* insert ChemoHulafe-1-dose
* valueQuantity.value = 5.4

 // Citarabina

Instance:  ChemoHulafe-1-Citarabina
InstanceOf: MedicationAdministrationPcsp
Title:   "Hulafe - MedicationAdministration: Chemotherapy Citarabina"
Description: "Sample of Chemotherapy based on information provided by Hulafe (Citarabina)"
Usage:  #example
* insert ChemoHulafe-1-common
* extension[relatedCumulativeDose].valueReference = Reference(ChemoHulafe-1-Citarabina-dose)
* medicationCodeableConcept = $atc#L01BC01 "cytarabine"

Instance:  ChemoHulafe-1-Citarabina-dose
InstanceOf: CumulativeDoseChemoObsPcsp
Title:   "Hulafe - Observation: Chemotherapy Citarabina Cumulative Dose"
Description: "Sample of Chemotherapy based on information provided by Hulafe (Citarabina Cumulative Dose)"
Usage:  #example
* insert ChemoHulafe-1-dose
* valueQuantity.value = 920