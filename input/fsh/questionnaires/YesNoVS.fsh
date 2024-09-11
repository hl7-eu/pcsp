Instance: YesNoVS
InstanceOf: ValueSet
Usage: #inline
* name = "YesNoVS"
* title = "Yes / No"
* status = #active
* compose.include.system = $loinc
* compose.include.concept[0].code = #LA32-8
* compose.include.concept[=].display = "NO"
* compose.include.concept[+].code = #LA33-6 
* compose.include.concept[=].display = "YES"