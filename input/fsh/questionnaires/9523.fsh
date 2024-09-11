Instance: 9523
InstanceOf: ValueSet
Usage: #inline
* url = "http://ehelse.no/fhir/ValueSet/Predefined"
* version = "1.0"
* name = "urn:oid:9523"
* title = "Ja / Nei / Usikker (structor)"
* status = #draft
* publisher = "Direktoratet for e-helse"
* compose.include.system = "urn:oid:2.16.578.1.12.4.1.9523"
* compose.include.concept[0].code = #1
* compose.include.concept[=].display = "Ja"
* compose.include.concept[+].code = #2
* compose.include.concept[=].display = "Nei"
* compose.include.concept[+].code = #3
* compose.include.concept[=].display = "Usikker"