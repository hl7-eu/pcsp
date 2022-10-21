//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsRadiotherapy
Id: vs-radiotherapy-pcsp
Title: "Radiotherapy sites"
Description: "PancareSurPass radiotherapy sites Value Set"
//-------------------------------------------------------------------------------------------

* codes from system http://hl7.eu/fhir/ig/pcsp/CodeSystem/cs-radiotherapy-pcsp
* $data-absent-reason#as-text "As Text"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Instance: cs-radiotherapy-pcsp
InstanceOf: CodeSystem
Usage: #definition
* url = "http://hl7.eu/fhir/ig/pcsp/CodeSystem/cs-radiotherapy-pcsp"
* version = "0.0.1"
* name = "CsRadiotherapy"
* title = "Radiotherapy sites"
* status = #active
* description = "PancareSurPass radiotherapy sites Code System"
* content = #complete
* caseSensitive = false
* hierarchyMeaning = #part-of
* count = 536
* concept[0].code = #1
* concept[=].display = "Brain"
* concept[=].concept[0].code = #1.1
* concept[=].concept[=].display = "Brain: Whole brain"
* concept[=].concept[+].code = #1.2
* concept[=].concept[=].display = "Brain: Frontal lobe"
* concept[=].concept[=].concept[0].code = #1.2.R
* concept[=].concept[=].concept[=].display = "Brain: Frontal lobe (right)"
* concept[=].concept[=].concept[+].code = #1.2.L
* concept[=].concept[=].concept[=].display = "Brain: Frontal lobe (left)"
* concept[=].concept[=].concept[+].code = #1.2.B
* concept[=].concept[=].concept[=].display = "Brain: Frontal lobe (bilateral)"
* concept[=].concept[+].code = #1.3
* concept[=].concept[=].display = "Brain: Temporal lobe"
* concept[=].concept[=].concept[0].code = #1.3.R
* concept[=].concept[=].concept[=].display = "Brain: Temporal lobe (right)"
* concept[=].concept[=].concept[+].code = #1.3.L
* concept[=].concept[=].concept[=].display = "Brain: Temporal lobe (left)"
* concept[=].concept[=].concept[+].code = #1.3.B
* concept[=].concept[=].concept[=].display = "Brain: Temporal lobe (bilateral)"
* concept[=].concept[+].code = #1.4
* concept[=].concept[=].display = "Brain: Occipital lobe"
* concept[=].concept[=].concept[0].code = #1.4.R
* concept[=].concept[=].concept[=].display = "Brain: Occipital lobe (right)"
* concept[=].concept[=].concept[+].code = #1.4.L
* concept[=].concept[=].concept[=].display = "Brain: Occipital lobe (left)"
* concept[=].concept[=].concept[+].code = #1.4.B
* concept[=].concept[=].concept[=].display = "Brain: Occipital lobe (bilateral)"
* concept[=].concept[+].code = #1.5
* concept[=].concept[=].display = "Brain: Left Ventricle"
* concept[=].concept[+].code = #1.6
* concept[=].concept[=].display = "Brain: Right Ventricle"
* concept[=].concept[+].code = #1.7
* concept[=].concept[=].display = "Brain: Pituitary"
* concept[=].concept[+].code = #1.8
* concept[=].concept[=].display = "Brain: Hypothalamus"
* concept[=].concept[+].code = #1.9
* concept[=].concept[=].display = "Brain: III Ventricle"
* concept[=].concept[+].code = #1.10
* concept[=].concept[=].display = "Brain: IV Ventricle"
* concept[=].concept[+].code = #1.11
* concept[=].concept[=].display = "Brain: Cerebellum"
* concept[=].concept[=].concept[0].code = #1.11.R
* concept[=].concept[=].concept[=].display = "Brain: Cerebellum (right)"
* concept[=].concept[=].concept[+].code = #1.11.L
* concept[=].concept[=].concept[=].display = "Brain: Cerebellum (left)"
* concept[=].concept[=].concept[+].code = #1.11.B
* concept[=].concept[=].concept[=].display = "Brain: Cerebellum (bilateral)"
* concept[=].concept[+].code = #1.12
* concept[=].concept[=].display = "Brain: Mesencephalon/midbrain"
* concept[=].concept[+].code = #1.13
* concept[=].concept[=].display = "Brain: Pons"
* concept[=].concept[+].code = #1.14
* concept[=].concept[=].display = "Brain: Medulla"
* concept[=].concept[+].code = #1.98
* concept[=].concept[=].display = "Brain: Other specified"
* concept[=].concept[+].code = #1.99
* concept[=].concept[=].display = "Brain: Unspecified"
* concept[+].code = #2
* concept[=].display = "Head"
* concept[=].concept[0].code = #2.1
* concept[=].concept[=].display = "Head: Orbit/Eye"
* concept[=].concept[=].concept[0].code = #2.1.R
* concept[=].concept[=].concept[=].display = "Head: Orbit/Eye (right)"
* concept[=].concept[=].concept[+].code = #2.1.L
* concept[=].concept[=].concept[=].display = "Head: Orbit/Eye (left)"
* concept[=].concept[=].concept[+].code = #2.1.B
* concept[=].concept[=].concept[=].display = "Head: Orbit/Eye (bilateral)"
* concept[=].concept[+].code = #2.2
* concept[=].concept[=].display = "Head: Ear/Infratemporal area"
* concept[=].concept[=].concept[0].code = #2.2.R
* concept[=].concept[=].concept[=].display = "Head: Ear/Infratemporal area (right)"
* concept[=].concept[=].concept[+].code = #2.2.L
* concept[=].concept[=].concept[=].display = "Head: Ear/Infratemporal area (left)"
* concept[=].concept[=].concept[+].code = #2.2.B
* concept[=].concept[=].concept[=].display = "Head: Ear/Infratemporal area (bilateral)"
* concept[=].concept[+].code = #2.3
* concept[=].concept[=].display = "Head: Nasopharynx"
* concept[=].concept[=].concept[0].code = #2.3.R
* concept[=].concept[=].concept[=].display = "Head: Nasopharynx (right)"
* concept[=].concept[=].concept[+].code = #2.3.L
* concept[=].concept[=].concept[=].display = "Head: Nasopharynx (left)"
* concept[=].concept[=].concept[+].code = #2.3.B
* concept[=].concept[=].concept[=].display = "Head: Nasopharynx (bilateral)"
* concept[=].concept[+].code = #2.4
* concept[=].concept[=].display = "Head: Oropharynx"
* concept[=].concept[=].concept[0].code = #2.4.R
* concept[=].concept[=].concept[=].display = "Head: Oropharynx (right)"
* concept[=].concept[=].concept[+].code = #2.4.L
* concept[=].concept[=].concept[=].display = "Head: Oropharynx (left)"
* concept[=].concept[=].concept[+].code = #2.4.B
* concept[=].concept[=].concept[=].display = "Head: Oropharynx (bilateral)"
* concept[=].concept[+].code = #2.5
* concept[=].concept[=].display = "Head: Waldeyer's Ring = nasopharynx + oropharynx"
* concept[=].concept[=].concept[0].code = #2.5.R
* concept[=].concept[=].concept[=].display = "Head: Waldeyer's Ring = nasopharynx + oropharynx (right)"
* concept[=].concept[=].concept[+].code = #2.5.L
* concept[=].concept[=].concept[=].display = "Head: Waldeyer's Ring = nasopharynx + oropharynx (left)"
* concept[=].concept[=].concept[+].code = #2.5.B
* concept[=].concept[=].concept[=].display = "Head: Waldeyer's Ring = nasopharynx + oropharynx (bilateral)"
* concept[=].concept[+].code = #2.6
* concept[=].concept[=].display = "Head: Oral cavity"
* concept[=].concept[=].concept[0].code = #2.6.1
* concept[=].concept[=].concept[=].display = "Head: Oral cavity - Tongue"
* concept[=].concept[=].concept[+].code = #2.6.2
* concept[=].concept[=].concept[=].display = "Head: Oral cavity - Hard palate"
* concept[=].concept[+].code = #2.7
* concept[=].concept[=].display = "Head: Hypopharynx"
* concept[=].concept[+].code = #2.98
* concept[=].concept[=].display = "Head: Other specified"
* concept[=].concept[+].code = #2.99
* concept[=].concept[=].display = "Head: Unspecified"
* concept[+].code = #3
* concept[=].display = "Neck"
* concept[=].concept[0].code = #3.1
* concept[=].concept[=].display = "Neck: Whole neck"
* concept[=].concept[+].code = #3.2
* concept[=].concept[=].display = "Neck: Upper neck"
* concept[=].concept[=].concept[0].code = #3.2.R
* concept[=].concept[=].concept[=].display = "Neck: Upper neck (right)"
* concept[=].concept[=].concept[+].code = #3.2.L
* concept[=].concept[=].concept[=].display = "Neck: Upper neck (left)"
* concept[=].concept[=].concept[+].code = #3.2.B
* concept[=].concept[=].concept[=].display = "Neck: Upper neck (bilateral)"
* concept[=].concept[+].code = #3.3
* concept[=].concept[=].display = "Neck: Supraclavicular area"
* concept[=].concept[=].concept[0].code = #3.3.R
* concept[=].concept[=].concept[=].display = "Neck: Supraclavicular area (right)"
* concept[=].concept[=].concept[+].code = #3.3.L
* concept[=].concept[=].concept[=].display = "Neck: Supraclavicular area (left)"
* concept[=].concept[=].concept[+].code = #3.3.B
* concept[=].concept[=].concept[=].display = "Neck: Supraclavicular area (bilateral)"
* concept[=].concept[+].code = #3.4
* concept[=].concept[=].display = "Neck: Thyroid"
* concept[=].concept[+].code = #3.5
* concept[=].concept[=].display = "Neck: Larinx"
* concept[=].concept[+].code = #3.6
* concept[=].concept[=].display = "Neck: Cervical nodes"
* concept[=].concept[=].concept[0].code = #3.6.R
* concept[=].concept[=].concept[=].display = "Neck: Cervical nodes (right)"
* concept[=].concept[=].concept[+].code = #3.6.L
* concept[=].concept[=].concept[=].display = "Neck: Cervical nodes (left)"
* concept[=].concept[=].concept[+].code = #3.6.B
* concept[=].concept[=].concept[=].display = "Neck: Cervical nodes (bilateral)"
* concept[=].concept[+].code = #3.7
* concept[=].concept[=].display = "Neck: Supraclavicular nodes"
* concept[=].concept[=].concept[0].code = #3.7.R
* concept[=].concept[=].concept[=].display = "Neck: Supraclavicular nodes (right)"
* concept[=].concept[=].concept[+].code = #3.7.L
* concept[=].concept[=].concept[=].display = "Neck: Supraclavicular nodes (left)"
* concept[=].concept[=].concept[+].code = #3.7.B
* concept[=].concept[=].concept[=].display = "Neck: Supraclavicular nodes (bilateral)"
* concept[=].concept[+].code = #3.98
* concept[=].concept[=].display = "Neck: Other specified"
* concept[=].concept[+].code = #3.99
* concept[=].concept[=].display = "Neck: Unspecified"
* concept[+].code = #4
* concept[=].display = "Spine"
* concept[=].concept[0].code = #4.1
* concept[=].concept[=].display = "Spine: Whole spine"
* concept[=].concept[+].code = #4.2
* concept[=].concept[=].display = "Spine: Cervical spine"
* concept[=].concept[=].concept[0].code = #4.2.1
* concept[=].concept[=].concept[=].display = "Spine: Cervical spine - Cervical vertebra 1"
* concept[=].concept[=].concept[+].code = #4.2.2
* concept[=].concept[=].concept[=].display = "Spine: Cervical spine - Cervical vertebra 2"
* concept[=].concept[=].concept[+].code = #4.2.3
* concept[=].concept[=].concept[=].display = "Spine: Cervical spine - Cervical vertebra 3"
* concept[=].concept[=].concept[+].code = #4.2.4
* concept[=].concept[=].concept[=].display = "Spine: Cervical spine - Cervical vertebra 4"
* concept[=].concept[=].concept[+].code = #4.2.5
* concept[=].concept[=].concept[=].display = "Spine: Cervical spine - Cervical vertebra 5"
* concept[=].concept[=].concept[+].code = #4.2.6
* concept[=].concept[=].concept[=].display = "Spine: Cervical spine - Cervical vertebra 6"
* concept[=].concept[=].concept[+].code = #4.2.7
* concept[=].concept[=].concept[=].display = "Spine: Cervical spine - Cervical vertebra 7"
* concept[=].concept[+].code = #4.3
* concept[=].concept[=].display = "Spine: Thoracic / Dorsal spine"
* concept[=].concept[=].concept[0].code = #4.3.1
* concept[=].concept[=].concept[=].display = "Spine: Thoracic / Dorsal spine - Thoracic / dorsal vertebra 1"
* concept[=].concept[=].concept[+].code = #4.3.2
* concept[=].concept[=].concept[=].display = "Spine: Thoracic / Dorsal spine - Thoracic / dorsal vertebra 2"
* concept[=].concept[=].concept[+].code = #4.3.3
* concept[=].concept[=].concept[=].display = "Spine: Thoracic / Dorsal spine - Thoracic / dorsal vertebra 3"
* concept[=].concept[=].concept[+].code = #4.3.4
* concept[=].concept[=].concept[=].display = "Spine: Thoracic / Dorsal spine - Thoracic / dorsal vertebra 4"
* concept[=].concept[=].concept[+].code = #4.3.5
* concept[=].concept[=].concept[=].display = "Spine: Thoracic / Dorsal spine - Thoracic / dorsal vertebra 5"
* concept[=].concept[=].concept[+].code = #4.3.6
* concept[=].concept[=].concept[=].display = "Spine: Thoracic / Dorsal spine - Thoracic / dorsal vertebra 6"
* concept[=].concept[=].concept[+].code = #4.3.7
* concept[=].concept[=].concept[=].display = "Spine: Thoracic / Dorsal spine - Thoracic / dorsal vertebra 7"
* concept[=].concept[=].concept[+].code = #4.3.8
* concept[=].concept[=].concept[=].display = "Spine: Thoracic / Dorsal spine - Thoracic / dorsal vertebra 8"
* concept[=].concept[=].concept[+].code = #4.3.9
* concept[=].concept[=].concept[=].display = "Spine: Thoracic / Dorsal spine - Thoracic / dorsal vertebra 9"
* concept[=].concept[=].concept[+].code = #4.3.10
* concept[=].concept[=].concept[=].display = "Spine: Thoracic / Dorsal spine - Thoracic / dorsal vertebra 10"
* concept[=].concept[=].concept[+].code = #4.3.11
* concept[=].concept[=].concept[=].display = "Spine: Thoracic / Dorsal spine - Thoracic / dorsal vertebra 11"
* concept[=].concept[=].concept[+].code = #4.3.12
* concept[=].concept[=].concept[=].display = "Spine: Thoracic / Dorsal spine - Thoracic / dorsal vertebra 12"
* concept[=].concept[+].code = #4.4
* concept[=].concept[=].display = "Spine: Lumbar spine"
* concept[=].concept[=].concept[0].code = #4.4.1
* concept[=].concept[=].concept[=].display = "Spine: Lumbar spine - Lumbar vertebra 1"
* concept[=].concept[=].concept[+].code = #4.4.2
* concept[=].concept[=].concept[=].display = "Spine: Lumbar spine - Lumbar vertebra 2"
* concept[=].concept[=].concept[+].code = #4.4.3
* concept[=].concept[=].concept[=].display = "Spine: Lumbar spine - Lumbar vertebra 3"
* concept[=].concept[=].concept[+].code = #4.4.4
* concept[=].concept[=].concept[=].display = "Spine: Lumbar spine - Lumbar vertebra 4"
* concept[=].concept[=].concept[+].code = #4.4.5
* concept[=].concept[=].concept[=].display = "Spine: Lumbar spine - Lumbar vertebra 5"
* concept[=].concept[+].code = #4.5
* concept[=].concept[=].display = "Spine: Sacral/cocygeal spine"
* concept[=].concept[=].concept[0].code = #4.5.1
* concept[=].concept[=].concept[=].display = "Spine: Sacral/cocygeal spine - Sacral vertebra 1"
* concept[=].concept[=].concept[+].code = #4.5.2
* concept[=].concept[=].concept[=].display = "Spine: Sacral/cocygeal spine - Sacral vertebra 2"
* concept[=].concept[=].concept[+].code = #4.5.3
* concept[=].concept[=].concept[=].display = "Spine: Sacral/cocygeal spine - Sacral vertebra 3"
* concept[=].concept[=].concept[+].code = #4.5.4
* concept[=].concept[=].concept[=].display = "Spine: Sacral/cocygeal spine - Sacral vertebra 4"
* concept[=].concept[=].concept[+].code = #4.5.5
* concept[=].concept[=].concept[=].display = "Spine: Sacral/cocygeal spine - Sacral vertebra 5"
* concept[=].concept[=].concept[+].code = #4.5.6
* concept[=].concept[=].concept[=].display = "Spine: Sacral/cocygeal spine - Cocyx"
* concept[=].concept[+].code = #4.6
* concept[=].concept[=].display = "Spine: Cervical / Thoracic spine"
* concept[=].concept[=].concept[0].code = #4.6.1
* concept[=].concept[=].concept[=].display = "Spine: Cervical / Thoracic spine - Cervical vertebra 1"
* concept[=].concept[=].concept[+].code = #4.6.2
* concept[=].concept[=].concept[=].display = "Spine: Cervical / Thoracic spine - Cervical vertebra 2"
* concept[=].concept[=].concept[+].code = #4.6.3
* concept[=].concept[=].concept[=].display = "Spine: Cervical / Thoracic spine - Cervical vertebra 3"
* concept[=].concept[=].concept[+].code = #4.6.4
* concept[=].concept[=].concept[=].display = "Spine: Cervical / Thoracic spine - Cervical vertebra 4"
* concept[=].concept[=].concept[+].code = #4.6.5
* concept[=].concept[=].concept[=].display = "Spine: Cervical / Thoracic spine - Cervical vertebra 5"
* concept[=].concept[=].concept[+].code = #4.6.6
* concept[=].concept[=].concept[=].display = "Spine: Cervical / Thoracic spine - Cervical vertebra 6"
* concept[=].concept[=].concept[+].code = #4.6.7
* concept[=].concept[=].concept[=].display = "Spine: Cervical / Thoracic spine - Cervical vertebra 7"
* concept[=].concept[=].concept[+].code = #4.6.8
* concept[=].concept[=].concept[=].display = "Spine: Cervical / Thoracic spine - Thoracic / dorsal vertebra 1"
* concept[=].concept[=].concept[+].code = #4.6.9
* concept[=].concept[=].concept[=].display = "Spine: Cervical / Thoracic spine - Thoracic / dorsal vertebra 2"
* concept[=].concept[=].concept[+].code = #4.6.10
* concept[=].concept[=].concept[=].display = "Spine: Cervical / Thoracic spine - Thoracic / dorsal vertebra 3"
* concept[=].concept[=].concept[+].code = #4.6.11
* concept[=].concept[=].concept[=].display = "Spine: Cervical / Thoracic spine - Thoracic / dorsal vertebra 4"
* concept[=].concept[=].concept[+].code = #4.6.12
* concept[=].concept[=].concept[=].display = "Spine: Cervical / Thoracic spine - Thoracic / dorsal vertebra 5"
* concept[=].concept[=].concept[+].code = #4.6.13
* concept[=].concept[=].concept[=].display = "Spine: Cervical / Thoracic spine - Thoracic / dorsal vertebra 6"
* concept[=].concept[=].concept[+].code = #4.6.14
* concept[=].concept[=].concept[=].display = "Spine: Cervical / Thoracic spine - Thoracic / dorsal vertebra 7"
* concept[=].concept[=].concept[+].code = #4.6.15
* concept[=].concept[=].concept[=].display = "Spine: Cervical / Thoracic spine - Thoracic / dorsal vertebra 8"
* concept[=].concept[=].concept[+].code = #4.6.16
* concept[=].concept[=].concept[=].display = "Spine: Cervical / Thoracic spine - Thoracic / dorsal vertebra 9"
* concept[=].concept[=].concept[+].code = #4.6.17
* concept[=].concept[=].concept[=].display = "Spine: Cervical / Thoracic spine - Thoracic / dorsal vertebra 10"
* concept[=].concept[=].concept[+].code = #4.6.18
* concept[=].concept[=].concept[=].display = "Spine: Cervical / Thoracic spine - Thoracic / dorsal vertebra 11"
* concept[=].concept[=].concept[+].code = #4.6.19
* concept[=].concept[=].concept[=].display = "Spine: Cervical / Thoracic spine - Thoracic / dorsal vertebra 12"
* concept[=].concept[+].code = #4.7
* concept[=].concept[=].display = "Spine: Thoracic / Abdominal spine"
* concept[=].concept[=].concept[0].code = #4.7.1
* concept[=].concept[=].concept[=].display = "Spine: Thoracic / Abdominal spine - Thoracic / dorsal vertebra 1"
* concept[=].concept[=].concept[+].code = #4.7.2
* concept[=].concept[=].concept[=].display = "Spine: Thoracic / Abdominal spine - Thoracic / dorsal vertebra 2"
* concept[=].concept[=].concept[+].code = #4.7.3
* concept[=].concept[=].concept[=].display = "Spine: Thoracic / Abdominal spine - Thoracic / dorsal vertebra 3"
* concept[=].concept[=].concept[+].code = #4.7.4
* concept[=].concept[=].concept[=].display = "Spine: Thoracic / Abdominal spine - Thoracic / dorsal vertebra 4"
* concept[=].concept[=].concept[+].code = #4.7.5
* concept[=].concept[=].concept[=].display = "Spine: Thoracic / Abdominal spine - Thoracic / dorsal vertebra 5"
* concept[=].concept[=].concept[+].code = #4.7.6
* concept[=].concept[=].concept[=].display = "Spine: Thoracic / Abdominal spine - Thoracic / dorsal vertebra 6"
* concept[=].concept[=].concept[+].code = #4.7.7
* concept[=].concept[=].concept[=].display = "Spine: Thoracic / Abdominal spine - Thoracic / dorsal vertebra 7"
* concept[=].concept[=].concept[+].code = #4.7.8
* concept[=].concept[=].concept[=].display = "Spine: Thoracic / Abdominal spine - Thoracic / dorsal vertebra 8"
* concept[=].concept[=].concept[+].code = #4.7.9
* concept[=].concept[=].concept[=].display = "Spine: Thoracic / Abdominal spine - Thoracic / dorsal vertebra 9"
* concept[=].concept[=].concept[+].code = #4.7.10
* concept[=].concept[=].concept[=].display = "Spine: Thoracic / Abdominal spine - Thoracic / dorsal vertebra 10"
* concept[=].concept[=].concept[+].code = #4.7.11
* concept[=].concept[=].concept[=].display = "Spine: Thoracic / Abdominal spine - Thoracic / dorsal vertebra 11"
* concept[=].concept[=].concept[+].code = #4.7.12
* concept[=].concept[=].concept[=].display = "Spine: Thoracic / Abdominal spine - Thoracic / dorsal vertebra 12"
* concept[=].concept[=].concept[+].code = #4.7.13
* concept[=].concept[=].concept[=].display = "Spine: Thoracic / Abdominal spine - Lumbar vertebra 1"
* concept[=].concept[=].concept[+].code = #4.7.14
* concept[=].concept[=].concept[=].display = "Spine: Thoracic / Abdominal spine - Lumbar vertebra 2"
* concept[=].concept[=].concept[+].code = #4.7.15
* concept[=].concept[=].concept[=].display = "Spine: Thoracic / Abdominal spine - Lumbar vertebra 3"
* concept[=].concept[=].concept[+].code = #4.7.16
* concept[=].concept[=].concept[=].display = "Spine: Thoracic / Abdominal spine - Lumbar vertebra 4"
* concept[=].concept[=].concept[+].code = #4.7.17
* concept[=].concept[=].concept[=].display = "Spine: Thoracic / Abdominal spine - Lumbar vertebra 5"
* concept[=].concept[+].code = #4.8
* concept[=].concept[=].display = "Spine: Abdominal / Pelvic spine"
* concept[=].concept[=].concept[0].code = #4.8.1
* concept[=].concept[=].concept[=].display = "Spine: Abdominal / Pelvic spine - Lumbar vertebra 1"
* concept[=].concept[=].concept[+].code = #4.8.2
* concept[=].concept[=].concept[=].display = "Spine: Abdominal / Pelvic spine - Lumbar vertebra 2"
* concept[=].concept[=].concept[+].code = #4.8.3
* concept[=].concept[=].concept[=].display = "Spine: Abdominal / Pelvic spine - Lumbar vertebra 3"
* concept[=].concept[=].concept[+].code = #4.8.4
* concept[=].concept[=].concept[=].display = "Spine: Abdominal / Pelvic spine - Lumbar vertebra 4"
* concept[=].concept[=].concept[+].code = #4.8.5
* concept[=].concept[=].concept[=].display = "Spine: Abdominal / Pelvic spine - Lumbar vertebra 5"
* concept[=].concept[=].concept[+].code = #4.8.6
* concept[=].concept[=].concept[=].display = "Spine: Abdominal / Pelvic spine - Sacral vertebra 1"
* concept[=].concept[=].concept[+].code = #4.8.7
* concept[=].concept[=].concept[=].display = "Spine: Abdominal / Pelvic spine - Sacral vertebra 2"
* concept[=].concept[=].concept[+].code = #4.8.8
* concept[=].concept[=].concept[=].display = "Spine: Abdominal / Pelvic spine - Sacral vertebra 3"
* concept[=].concept[=].concept[+].code = #4.8.9
* concept[=].concept[=].concept[=].display = "Spine: Abdominal / Pelvic spine - Sacral vertebra 4"
* concept[=].concept[=].concept[+].code = #4.8.10
* concept[=].concept[=].concept[=].display = "Spine: Abdominal / Pelvic spine - Sacral vertebra 5"
* concept[=].concept[=].concept[+].code = #4.8.11
* concept[=].concept[=].concept[=].display = "Spine: Abdominal / Pelvic spine - Cocyx"
* concept[=].concept[+].code = #4.98
* concept[=].concept[=].display = "Spine: Other specified"
* concept[=].concept[+].code = #4.99
* concept[=].concept[=].display = "Spine: Unspecified"
* concept[+].code = #6
* concept[=].display = "Cervico-Thoracic (area)"
* concept[=].concept[0].code = #6.1
* concept[=].concept[=].display = "Cervico-Thoracic (area): Paraspinal"
* concept[=].concept[=].concept[0].code = #6.1.R
* concept[=].concept[=].concept[=].display = "Cervico-Thoracic (area): Paraspinal (right)"
* concept[=].concept[=].concept[+].code = #6.1.L
* concept[=].concept[=].concept[=].display = "Cervico-Thoracic (area): Paraspinal (left)"
* concept[=].concept[=].concept[+].code = #6.1.B
* concept[=].concept[=].concept[=].display = "Cervico-Thoracic (area): Paraspinal (bilateral)"
* concept[=].concept[=].concept[+].code = #6.1.1
* concept[=].concept[=].concept[=].display = "Cervico-Thoracic (area): Paraspinal - Cervical vertebra 1"
* concept[=].concept[=].concept[+].code = #6.1.2
* concept[=].concept[=].concept[=].display = "Cervico-Thoracic (area): Paraspinal - Cervical vertebra 2"
* concept[=].concept[=].concept[+].code = #6.1.3
* concept[=].concept[=].concept[=].display = "Cervico-Thoracic (area): Paraspinal - Cervical vertebra 3"
* concept[=].concept[=].concept[+].code = #6.1.4
* concept[=].concept[=].concept[=].display = "Cervico-Thoracic (area): Paraspinal - Cervical vertebra 4"
* concept[=].concept[=].concept[+].code = #6.1.5
* concept[=].concept[=].concept[=].display = "Cervico-Thoracic (area): Paraspinal - Cervical vertebra 5"
* concept[=].concept[=].concept[+].code = #6.1.6
* concept[=].concept[=].concept[=].display = "Cervico-Thoracic (area): Paraspinal - Cervical vertebra 6"
* concept[=].concept[=].concept[+].code = #6.1.7
* concept[=].concept[=].concept[=].display = "Cervico-Thoracic (area): Paraspinal - Cervical vertebra 7"
* concept[=].concept[=].concept[+].code = #6.1.8
* concept[=].concept[=].concept[=].display = "Cervico-Thoracic (area): Paraspinal - Thoracic / dorsal vertebra 1"
* concept[=].concept[=].concept[+].code = #6.1.9
* concept[=].concept[=].concept[=].display = "Cervico-Thoracic (area): Paraspinal - Thoracic / dorsal vertebra 2"
* concept[=].concept[=].concept[+].code = #6.1.10
* concept[=].concept[=].concept[=].display = "Cervico-Thoracic (area): Paraspinal - Thoracic / dorsal vertebra 3"
* concept[=].concept[=].concept[+].code = #6.1.11
* concept[=].concept[=].concept[=].display = "Cervico-Thoracic (area): Paraspinal - Thoracic / dorsal vertebra 4"
* concept[=].concept[=].concept[+].code = #6.1.12
* concept[=].concept[=].concept[=].display = "Cervico-Thoracic (area): Paraspinal - Thoracic / dorsal vertebra 5"
* concept[=].concept[=].concept[+].code = #6.1.13
* concept[=].concept[=].concept[=].display = "Cervico-Thoracic (area): Paraspinal - Thoracic / dorsal vertebra 6"
* concept[=].concept[=].concept[+].code = #6.1.14
* concept[=].concept[=].concept[=].display = "Cervico-Thoracic (area): Paraspinal - Thoracic / dorsal vertebra 7"
* concept[=].concept[=].concept[+].code = #6.1.15
* concept[=].concept[=].concept[=].display = "Cervico-Thoracic (area): Paraspinal - Thoracic / dorsal vertebra 8"
* concept[=].concept[=].concept[+].code = #6.1.16
* concept[=].concept[=].concept[=].display = "Cervico-Thoracic (area): Paraspinal - Thoracic / dorsal vertebra 9"
* concept[=].concept[=].concept[+].code = #6.1.17
* concept[=].concept[=].concept[=].display = "Cervico-Thoracic (area): Paraspinal - Thoracic / dorsal vertebra 10"
* concept[=].concept[=].concept[+].code = #6.1.18
* concept[=].concept[=].concept[=].display = "Cervico-Thoracic (area): Paraspinal - Thoracic / dorsal vertebra 11"
* concept[=].concept[=].concept[+].code = #6.1.19
* concept[=].concept[=].concept[=].display = "Cervico-Thoracic (area): Paraspinal - Thoracic / dorsal vertebra 12"
* concept[=].concept[+].code = #6.98
* concept[=].concept[=].display = "Cervico-Thoracic (area): Other specified"
* concept[=].concept[+].code = #6.99
* concept[=].concept[=].display = "Cervico-Thoracic (area): Unspecified"
* concept[+].code = #7
* concept[=].display = "Chest (thorax)"
* concept[=].concept[0].code = #7.1
* concept[=].concept[=].display = "Chest (thorax): Whole chest (thorax)"
* concept[=].concept[+].code = #7.2
* concept[=].concept[=].display = "Chest (thorax): Ribs"
* concept[=].concept[=].concept[0].code = #7.2.R
* concept[=].concept[=].concept[=].display = "Chest (thorax): Ribs (right)"
* concept[=].concept[=].concept[+].code = #7.2.L
* concept[=].concept[=].concept[=].display = "Chest (thorax): Ribs (left)"
* concept[=].concept[=].concept[+].code = #7.2.B
* concept[=].concept[=].concept[=].display = "Chest (thorax): Ribs (bilateral)"
* concept[=].concept[=].concept[+].code = #7.2.1
* concept[=].concept[=].concept[=].display = "Chest (thorax): Ribs - Rib 1"
* concept[=].concept[=].concept[+].code = #7.2.2
* concept[=].concept[=].concept[=].display = "Chest (thorax): Ribs - Rib 2"
* concept[=].concept[=].concept[+].code = #7.2.3
* concept[=].concept[=].concept[=].display = "Chest (thorax): Ribs - Rib 3"
* concept[=].concept[=].concept[+].code = #7.2.4
* concept[=].concept[=].concept[=].display = "Chest (thorax): Ribs - Rib 4"
* concept[=].concept[=].concept[+].code = #7.2.5
* concept[=].concept[=].concept[=].display = "Chest (thorax): Ribs - Rib 5"
* concept[=].concept[=].concept[+].code = #7.2.6
* concept[=].concept[=].concept[=].display = "Chest (thorax): Ribs - Rib 6"
* concept[=].concept[=].concept[+].code = #7.2.7
* concept[=].concept[=].concept[=].display = "Chest (thorax): Ribs - Rib 7"
* concept[=].concept[=].concept[+].code = #7.2.8
* concept[=].concept[=].concept[=].display = "Chest (thorax): Ribs - Rib 8"
* concept[=].concept[=].concept[+].code = #7.2.9
* concept[=].concept[=].concept[=].display = "Chest (thorax): Ribs - Rib 9"
* concept[=].concept[=].concept[+].code = #7.2.10
* concept[=].concept[=].concept[=].display = "Chest (thorax): Ribs - Rib 10"
* concept[=].concept[=].concept[+].code = #7.2.11
* concept[=].concept[=].concept[=].display = "Chest (thorax): Ribs - Rib 11"
* concept[=].concept[=].concept[+].code = #7.2.12
* concept[=].concept[=].concept[=].display = "Chest (thorax): Ribs - Rib 12"
* concept[=].concept[+].code = #7.3
* concept[=].concept[=].display = "Chest (thorax): Clavicle"
* concept[=].concept[=].concept[0].code = #7.3.R
* concept[=].concept[=].concept[=].display = "Chest (thorax): Clavicle (right)"
* concept[=].concept[=].concept[+].code = #7.3.L
* concept[=].concept[=].concept[=].display = "Chest (thorax): Clavicle (left)"
* concept[=].concept[=].concept[+].code = #7.3.B
* concept[=].concept[=].concept[=].display = "Chest (thorax): Clavicle (bilateral)"
* concept[=].concept[=].concept[+].code = #7.3.1
* concept[=].concept[=].concept[=].display = "Chest (thorax): Clavicle - Whole clavicle"
* concept[=].concept[=].concept[+].code = #7.3.2
* concept[=].concept[=].concept[=].display = "Chest (thorax): Clavicle - Medial clavicle"
* concept[=].concept[=].concept[+].code = #7.3.2.R
* concept[=].concept[=].concept[=].display = "Chest (thorax): Clavicle - Medial clavicle (right)"
* concept[=].concept[=].concept[+].code = #7.3.2.L
* concept[=].concept[=].concept[=].display = "Chest (thorax): Clavicle - Medial clavicle (left)"
* concept[=].concept[=].concept[+].code = #7.3.2.B
* concept[=].concept[=].concept[=].display = "Chest (thorax): Clavicle - Medial clavicle (bilateral)"
* concept[=].concept[=].concept[+].code = #7.3.3
* concept[=].concept[=].concept[=].display = "Chest (thorax): Clavicle - Lateral clavicle"
* concept[=].concept[=].concept[+].code = #7.3.3.R
* concept[=].concept[=].concept[=].display = "Chest (thorax): Clavicle - Lateral clavicle (right)"
* concept[=].concept[=].concept[+].code = #7.3.3.L
* concept[=].concept[=].concept[=].display = "Chest (thorax): Clavicle - Lateral clavicle (left)"
* concept[=].concept[=].concept[+].code = #7.3.3.B
* concept[=].concept[=].concept[=].display = "Chest (thorax): Clavicle - Lateral clavicle (bilateral)"
* concept[=].concept[+].code = #7.4
* concept[=].concept[=].display = "Chest (thorax): Sternum"
* concept[=].concept[=].concept[0].code = #7.4.1
* concept[=].concept[=].concept[=].display = "Chest (thorax): Sternum - Whole sternum"
* concept[=].concept[=].concept[+].code = #7.4.2
* concept[=].concept[=].concept[=].display = "Chest (thorax): Sternum - Upper sternum"
* concept[=].concept[=].concept[+].code = #7.4.3
* concept[=].concept[=].concept[=].display = "Chest (thorax): Sternum - Lower sternum"
* concept[=].concept[=].concept[+].code = #7.4.98
* concept[=].concept[=].concept[=].display = "Chest (thorax): Sternum - Other specified"
* concept[=].concept[=].concept[+].code = #7.4.99
* concept[=].concept[=].concept[=].display = "Chest (thorax): Sternum - Unspecified"
* concept[=].concept[+].code = #7.5
* concept[=].concept[=].display = "Chest (thorax): Scapula"
* concept[=].concept[=].concept[0].code = #7.5.R
* concept[=].concept[=].concept[=].display = "Chest (thorax): Scapula (right)"
* concept[=].concept[=].concept[+].code = #7.5.L
* concept[=].concept[=].concept[=].display = "Chest (thorax): Scapula (left)"
* concept[=].concept[=].concept[+].code = #7.5.B
* concept[=].concept[=].concept[=].display = "Chest (thorax): Scapula (bilateral)"
* concept[=].concept[=].concept[+].code = #7.5.1
* concept[=].concept[=].concept[=].display = "Chest (thorax): Scapula - Whole scapula"
* concept[=].concept[=].concept[+].code = #7.5.2
* concept[=].concept[=].concept[=].display = "Chest (thorax): Scapula - Upper scapula"
* concept[=].concept[=].concept[+].code = #7.5.2.R
* concept[=].concept[=].concept[=].display = "Chest (thorax): Scapula - Upper scapula (right)"
* concept[=].concept[=].concept[+].code = #7.5.2.L
* concept[=].concept[=].concept[=].display = "Chest (thorax): Scapula - Upper scapula (left)"
* concept[=].concept[=].concept[+].code = #7.5.2.B
* concept[=].concept[=].concept[=].display = "Chest (thorax): Scapula - Upper scapula (bilateral)"
* concept[=].concept[=].concept[+].code = #7.5.3
* concept[=].concept[=].concept[=].display = "Chest (thorax): Scapula - Lower scapula"
* concept[=].concept[=].concept[+].code = #7.5.3.R
* concept[=].concept[=].concept[=].display = "Chest (thorax): Scapula - Lower scapula (right)"
* concept[=].concept[=].concept[+].code = #7.5.3.L
* concept[=].concept[=].concept[=].display = "Chest (thorax): Scapula - Lower scapula (left)"
* concept[=].concept[=].concept[+].code = #7.5.3.B
* concept[=].concept[=].concept[=].display = "Chest (thorax): Scapula - Lower scapula (bilateral)"
* concept[=].concept[=].concept[+].code = #7.5.98
* concept[=].concept[=].concept[=].display = "Chest (thorax): Scapula - Other specified"
* concept[=].concept[=].concept[+].code = #7.5.99
* concept[=].concept[=].concept[=].display = "Chest (thorax): Scapula - Unspecified"
* concept[=].concept[+].code = #7.6
* concept[=].concept[=].display = "Chest (thorax): Mediastinum"
* concept[=].concept[=].concept[0].code = #7.6.1
* concept[=].concept[=].concept[=].display = "Chest (thorax): Mediastinum - Whole mediastinum"
* concept[=].concept[=].concept[+].code = #7.6.2
* concept[=].concept[=].concept[=].display = "Chest (thorax): Mediastinum - Upper mediastinum"
* concept[=].concept[=].concept[+].code = #7.6.2.R
* concept[=].concept[=].concept[=].display = "Chest (thorax): Mediastinum - Upper mediastinum (right)"
* concept[=].concept[=].concept[+].code = #7.6.2.L
* concept[=].concept[=].concept[=].display = "Chest (thorax): Mediastinum - Upper mediastinum (left)"
* concept[=].concept[=].concept[+].code = #7.6.3
* concept[=].concept[=].concept[=].display = "Chest (thorax): Mediastinum - Lower mediastinum"
* concept[=].concept[=].concept[+].code = #7.6.3.R
* concept[=].concept[=].concept[=].display = "Chest (thorax): Mediastinum - Lower mediastinum (right)"
* concept[=].concept[=].concept[+].code = #7.6.3.L
* concept[=].concept[=].concept[=].display = "Chest (thorax): Mediastinum - Lower mediastinum (left)"
* concept[=].concept[=].concept[+].code = #7.6.98
* concept[=].concept[=].concept[=].display = "Chest (thorax): Mediastinum - Other specified"
* concept[=].concept[=].concept[+].code = #7.6.99
* concept[=].concept[=].concept[=].display = "Chest (thorax): Mediastinum - Unspecified"
* concept[=].concept[+].code = #7.7
* concept[=].concept[=].display = "Chest (thorax): Thymus"
* concept[=].concept[=].concept[0].code = #7.7.R
* concept[=].concept[=].concept[=].display = "Chest (thorax): Thymus (right)"
* concept[=].concept[=].concept[+].code = #7.7.L
* concept[=].concept[=].concept[=].display = "Chest (thorax): Thymus (left)"
* concept[=].concept[=].concept[+].code = #7.7.B
* concept[=].concept[=].concept[=].display = "Chest (thorax): Thymus (bilateral)"
* concept[=].concept[+].code = #7.8
* concept[=].concept[=].display = "Chest (thorax): Oesophagus"
* concept[=].concept[+].code = #7.9
* concept[=].concept[=].display = "Chest (thorax): Trachea"
* concept[=].concept[+].code = #7.10
* concept[=].concept[=].display = "Chest (thorax): Carina"
* concept[=].concept[+].code = #7.11
* concept[=].concept[=].display = "Chest (thorax): Lung"
* concept[=].concept[=].concept[0].code = #7.11.R
* concept[=].concept[=].concept[=].display = "Chest (thorax): Lung (right)"
* concept[=].concept[=].concept[+].code = #7.11.L
* concept[=].concept[=].concept[=].display = "Chest (thorax): Lung (left)"
* concept[=].concept[=].concept[+].code = #7.11.B
* concept[=].concept[=].concept[=].display = "Chest (thorax): Lung (bilateral)"
* concept[=].concept[=].concept[+].code = #7.11.1
* concept[=].concept[=].concept[=].display = "Chest (thorax): Lung - Whole lung"
* concept[=].concept[=].concept[+].code = #7.11.2
* concept[=].concept[=].concept[=].display = "Chest (thorax): Lung - Lung upper zone"
* concept[=].concept[=].concept[=].concept[0].code = #7.11.2.R
* concept[=].concept[=].concept[=].concept[=].display = "Chest (thorax): Lung - Lung upper zone (right)"
* concept[=].concept[=].concept[=].concept[+].code = #7.11.2.L
* concept[=].concept[=].concept[=].concept[=].display = "Chest (thorax): Lung - Lung upper zone (left)"
* concept[=].concept[=].concept[=].concept[+].code = #7.11.2.B
* concept[=].concept[=].concept[=].concept[=].display = "Chest (thorax): Lung - Lung upper zone (bilateral)"
* concept[=].concept[=].concept[+].code = #7.11.3
* concept[=].concept[=].concept[=].display = "Chest (thorax): Lung - Lung mid zone"
* concept[=].concept[=].concept[=].concept[0].code = #7.11.3.R
* concept[=].concept[=].concept[=].concept[=].display = "Chest (thorax): Lung - Lung mid zone (right)"
* concept[=].concept[=].concept[=].concept[+].code = #7.11.3.L
* concept[=].concept[=].concept[=].concept[=].display = "Chest (thorax): Lung - Lung mid zone (left)"
* concept[=].concept[=].concept[=].concept[+].code = #7.11.3.B
* concept[=].concept[=].concept[=].concept[=].display = "Chest (thorax): Lung - Lung mid zone (bilateral)"
* concept[=].concept[=].concept[+].code = #7.11.4
* concept[=].concept[=].concept[=].display = "Chest (thorax): Lung - Lung lower zone"
* concept[=].concept[=].concept[=].concept[0].code = #7.11.4.R
* concept[=].concept[=].concept[=].concept[=].display = "Chest (thorax): Lung - Lung lower zone (right)"
* concept[=].concept[=].concept[=].concept[+].code = #7.11.4.L
* concept[=].concept[=].concept[=].concept[=].display = "Chest (thorax): Lung - Lung lower zone (left)"
* concept[=].concept[=].concept[=].concept[+].code = #7.11.4.B
* concept[=].concept[=].concept[=].concept[=].display = "Chest (thorax): Lung - Lung lower zone (bilateral)"
* concept[=].concept[=].concept[+].code = #7.11.5
* concept[=].concept[=].concept[=].display = "Chest (thorax): Lung - Lung hilum"
* concept[=].concept[=].concept[=].concept[0].code = #7.11.5.R
* concept[=].concept[=].concept[=].concept[=].display = "Chest (thorax): Lung - Lung hilum (right)"
* concept[=].concept[=].concept[=].concept[+].code = #7.11.5.L
* concept[=].concept[=].concept[=].concept[=].display = "Chest (thorax): Lung - Lung hilum (left)"
* concept[=].concept[=].concept[=].concept[+].code = #7.11.5.B
* concept[=].concept[=].concept[=].concept[=].display = "Chest (thorax): Lung - Lung hilum (bilateral)"
* concept[=].concept[=].concept[+].code = #7.11.98
* concept[=].concept[=].concept[=].display = "Chest (thorax): Lung - Lung other specified"
* concept[=].concept[=].concept[+].code = #7.11.99
* concept[=].concept[=].concept[=].display = "Chest (thorax): Lung - Lung unspecified"
* concept[=].concept[+].code = #7.12
* concept[=].concept[=].display = "Chest (thorax): Heart"
* concept[=].concept[=].concept[0].code = #7.12.1
* concept[=].concept[=].concept[=].display = "Chest (thorax): Heart - Whole heart"
* concept[=].concept[=].concept[+].code = #7.12.2
* concept[=].concept[=].concept[=].display = "Chest (thorax): Heart - Left ventricle of heart"
* concept[=].concept[=].concept[+].code = #7.12.3
* concept[=].concept[=].concept[=].display = "Chest (thorax): Heart - Right ventricle of heart"
* concept[=].concept[=].concept[+].code = #7.12.4
* concept[=].concept[=].concept[=].display = "Chest (thorax): Heart - Left atrium of heart,"
* concept[=].concept[=].concept[+].code = #7.12.5
* concept[=].concept[=].concept[=].display = "Chest (thorax): Heart - Right atrium of heart"
* concept[=].concept[=].concept[+].code = #7.12.6
* concept[=].concept[=].concept[=].display = "Chest (thorax): Heart - Pericardium"
* concept[=].concept[+].code = #7.13
* concept[=].concept[=].display = "Chest (thorax): Breast"
* concept[=].concept[=].concept[0].code = #7.13.R
* concept[=].concept[=].concept[=].display = "Chest (thorax): Breast (right)"
* concept[=].concept[=].concept[+].code = #7.13.L
* concept[=].concept[=].concept[=].display = "Chest (thorax): Breast (left)"
* concept[=].concept[=].concept[+].code = #7.13.B
* concept[=].concept[=].concept[=].display = "Chest (thorax): Breast (bilateral)"
* concept[=].concept[+].code = #7.13.1
* concept[=].concept[=].display = "Chest (thorax): Breast - Whole Breast"
* concept[=].concept[+].code = #7.13.2
* concept[=].concept[=].display = "Chest (thorax): Breast - Nipple"
* concept[=].concept[=].concept[0].code = #7.13.2.R
* concept[=].concept[=].concept[=].display = "Chest (thorax): Breast - Nipple (right)"
* concept[=].concept[=].concept[+].code = #7.13.2.L
* concept[=].concept[=].concept[=].display = "Chest (thorax): Breast - Nipple (left)"
* concept[=].concept[=].concept[+].code = #7.13.2.B
* concept[=].concept[=].concept[=].display = "Chest (thorax): Breast - Nipple (bilateral)"
* concept[=].concept[+].code = #7.13.3
* concept[=].concept[=].display = "Chest (thorax): Breast - Areola"
* concept[=].concept[=].concept[0].code = #7.13.3.R
* concept[=].concept[=].concept[=].display = "Chest (thorax): Breast - Areola (right)"
* concept[=].concept[=].concept[+].code = #7.13.3.L
* concept[=].concept[=].concept[=].display = "Chest (thorax): Breast - Areola (left)"
* concept[=].concept[=].concept[+].code = #7.13.3.B
* concept[=].concept[=].concept[=].display = "Chest (thorax): Breast - Areola (bilateral)"
* concept[=].concept[+].code = #7.13.4
* concept[=].concept[=].display = "Chest (thorax): Breast - Breast bud (in male or prepubertal female)"
* concept[=].concept[=].concept[0].code = #7.13.4.R
* concept[=].concept[=].concept[=].display = "Chest (thorax): Breast - Breast bud (in male or prepubertal female) (right)"
* concept[=].concept[=].concept[+].code = #7.13.4.L
* concept[=].concept[=].concept[=].display = "Chest (thorax): Breast - Breast bud (in male or prepubertal female) (left)"
* concept[=].concept[=].concept[+].code = #7.13.4.B
* concept[=].concept[=].concept[=].display = "Chest (thorax): Breast - Breast bud (in male or prepubertal female) (bilateral)"
* concept[=].concept[+].code = #7.13.5
* concept[=].concept[=].display = "Chest (thorax): Breast - Upper outer quadrant"
* concept[=].concept[=].concept[0].code = #7.13.5.R
* concept[=].concept[=].concept[=].display = "Chest (thorax): Breast - Upper outer quadrant (right)"
* concept[=].concept[=].concept[+].code = #7.13.5.L
* concept[=].concept[=].concept[=].display = "Chest (thorax): Breast - Upper outer quadrant (left)"
* concept[=].concept[=].concept[+].code = #7.13.5.B
* concept[=].concept[=].concept[=].display = "Chest (thorax): Breast - Upper outer quadrant (bilateral)"
* concept[=].concept[+].code = #7.13.6
* concept[=].concept[=].display = "Chest (thorax): Breast - Upper inner quadrant"
* concept[=].concept[=].concept[0].code = #7.13.6.R
* concept[=].concept[=].concept[=].display = "Chest (thorax): Breast - Upper inner quadrant (right)"
* concept[=].concept[=].concept[+].code = #7.13.6.L
* concept[=].concept[=].concept[=].display = "Chest (thorax): Breast - Upper inner quadrant (left)"
* concept[=].concept[=].concept[+].code = #7.13.6.B
* concept[=].concept[=].concept[=].display = "Chest (thorax): Breast - Upper inner quadrant (bilateral)"
* concept[=].concept[+].code = #7.13.7
* concept[=].concept[=].display = "Chest (thorax): Breast - Lower outer quadrant"
* concept[=].concept[=].concept[0].code = #7.13.7.R
* concept[=].concept[=].concept[=].display = "Chest (thorax): Breast - Lower outer quadrant (right)"
* concept[=].concept[=].concept[+].code = #7.13.7.L
* concept[=].concept[=].concept[=].display = "Chest (thorax): Breast - Lower outer quadrant (left)"
* concept[=].concept[=].concept[+].code = #7.13.7.B
* concept[=].concept[=].concept[=].display = "Chest (thorax): Breast - Lower outer quadrant (bilateral)"
* concept[=].concept[+].code = #7.13.8
* concept[=].concept[=].display = "Chest (thorax): Breast - Lower inner quadrant"
* concept[=].concept[=].concept[0].code = #7.13.8.R
* concept[=].concept[=].concept[=].display = "Chest (thorax): Breast - Lower inner quadrant (right)"
* concept[=].concept[=].concept[+].code = #7.13.8.L
* concept[=].concept[=].concept[=].display = "Chest (thorax): Breast - Lower inner quadrant (left)"
* concept[=].concept[=].concept[+].code = #7.13.8.B
* concept[=].concept[=].concept[=].display = "Chest (thorax): Breast - Lower inner quadrant (bilateral)"
* concept[=].concept[+].code = #7.14
* concept[=].concept[=].display = "Chest (thorax): Aorta"
* concept[=].concept[=].concept[0].code = #7.14.1
* concept[=].concept[=].concept[=].display = "Chest (thorax): Aorta - Whole aorta above diaphragm"
* concept[=].concept[=].concept[+].code = #7.14.2
* concept[=].concept[=].concept[=].display = "Chest (thorax): Aorta - Ascending aorta"
* concept[=].concept[=].concept[+].code = #7.14.3
* concept[=].concept[=].concept[=].display = "Chest (thorax): Aorta - Arch of aorta"
* concept[=].concept[=].concept[+].code = #7.14.4
* concept[=].concept[=].concept[=].display = "Chest (thorax): Aorta - Descending aorta above diaphragm"
* concept[=].concept[=].concept[+].code = #7.15
* concept[=].concept[=].concept[=].display = "Chest (thorax): Axilla"
* concept[=].concept[=].concept[=].concept[0].code = #7.15.R
* concept[=].concept[=].concept[=].concept[=].display = "Chest (thorax): Axilla (right)"
* concept[=].concept[=].concept[=].concept[+].code = #7.15.L
* concept[=].concept[=].concept[=].concept[=].display = "Chest (thorax): Axilla (left)"
* concept[=].concept[=].concept[=].concept[+].code = #7.15.B
* concept[=].concept[=].concept[=].concept[=].display = "Chest (thorax): Axilla (bilateral)"
* concept[=].concept[+].code = #7.16
* concept[=].concept[=].display = "Chest (thorax): Paraspinal"
* concept[=].concept[=].concept[0].code = #7.16.R
* concept[=].concept[=].concept[=].display = "Chest (thorax): Paraspinal (right)"
* concept[=].concept[=].concept[+].code = #7.16.L
* concept[=].concept[=].concept[=].display = "Chest (thorax): Paraspinal (left)"
* concept[=].concept[=].concept[+].code = #7.16.B
* concept[=].concept[=].concept[=].display = "Chest (thorax): Paraspinal (bilateral)"
* concept[=].concept[=].concept[+].code = #7.16.1
* concept[=].concept[=].concept[=].display = "Chest (thorax): Paraspinal - Thoracic / dorsal vertebra 1"
* concept[=].concept[=].concept[+].code = #7.16.2
* concept[=].concept[=].concept[=].display = "Chest (thorax): Paraspinal - Thoracic / dorsal vertebra 2"
* concept[=].concept[=].concept[+].code = #7.16.3
* concept[=].concept[=].concept[=].display = "Chest (thorax): Paraspinal - Thoracic / dorsal vertebra 3"
* concept[=].concept[=].concept[+].code = #7.16.4
* concept[=].concept[=].concept[=].display = "Chest (thorax): Paraspinal - Thoracic / dorsal vertebra 4"
* concept[=].concept[=].concept[+].code = #7.16.5
* concept[=].concept[=].concept[=].display = "Chest (thorax): Paraspinal - Thoracic / dorsal vertebra 5"
* concept[=].concept[=].concept[+].code = #7.16.6
* concept[=].concept[=].concept[=].display = "Chest (thorax): Paraspinal - Thoracic / dorsal vertebra 6"
* concept[=].concept[=].concept[+].code = #7.16.7
* concept[=].concept[=].concept[=].display = "Chest (thorax): Paraspinal - Thoracic / dorsal vertebra 7"
* concept[=].concept[=].concept[+].code = #7.16.8
* concept[=].concept[=].concept[=].display = "Chest (thorax): Paraspinal - Thoracic / dorsal vertebra 8"
* concept[=].concept[=].concept[+].code = #7.16.9
* concept[=].concept[=].concept[=].display = "Chest (thorax): Paraspinal - Thoracic / dorsal vertebra 9"
* concept[=].concept[=].concept[+].code = #7.16.10
* concept[=].concept[=].concept[=].display = "Chest (thorax): Paraspinal - Thoracic / dorsal vertebra 10"
* concept[=].concept[=].concept[+].code = #7.16.11
* concept[=].concept[=].concept[=].display = "Chest (thorax): Paraspinal - Thoracic / dorsal vertebra 11"
* concept[=].concept[=].concept[+].code = #7.16.12
* concept[=].concept[=].concept[=].display = "Chest (thorax): Paraspinal - Thoracic / dorsal vertebra 12"
* concept[=].concept[+].code = #7.17
* concept[=].concept[=].display = "Chest (thorax): Axillary nodes"
* concept[=].concept[=].concept[0].code = #7.17.R
* concept[=].concept[=].concept[=].display = "Chest (thorax): Axillary nodes (right)"
* concept[=].concept[=].concept[+].code = #7.17.L
* concept[=].concept[=].concept[=].display = "Chest (thorax): Axillary nodes (left)"
* concept[=].concept[=].concept[+].code = #7.17.B
* concept[=].concept[=].concept[=].display = "Chest (thorax): Axillary nodes (bilateral)"
* concept[=].concept[+].code = #7.98
* concept[=].concept[=].display = "Chest (thorax): Other specified"
* concept[=].concept[+].code = #7.99
* concept[=].concept[=].display = "Chest (thorax): Unspecified"
* concept[+].code = #8
* concept[=].display = "Thoraco-Abdominal (area)"
* concept[=].concept[0].code = #8.1
* concept[=].concept[=].display = "Thoraco-Abdominal (area): Paraspinal"
* concept[=].concept[=].concept[0].code = #8.1.R
* concept[=].concept[=].concept[=].display = "Thoraco-Abdominal (area): Paraspinal (right)"
* concept[=].concept[=].concept[+].code = #8.1.L
* concept[=].concept[=].concept[=].display = "Thoraco-Abdominal (area): Paraspinal (left)"
* concept[=].concept[=].concept[+].code = #8.1.B
* concept[=].concept[=].concept[=].display = "Thoraco-Abdominal (area): Paraspinal (bilateral)"
* concept[=].concept[=].concept[+].code = #8.1.1
* concept[=].concept[=].concept[=].display = "Thoraco-Abdominal (area): Paraspinal - Thoracic / dorsal vertebra 1"
* concept[=].concept[=].concept[+].code = #8.1.2
* concept[=].concept[=].concept[=].display = "Thoraco-Abdominal (area): Paraspinal - Thoracic / dorsal vertebra 2"
* concept[=].concept[=].concept[+].code = #8.1.3
* concept[=].concept[=].concept[=].display = "Thoraco-Abdominal (area): Paraspinal - Thoracic / dorsal vertebra 3"
* concept[=].concept[=].concept[+].code = #8.1.4
* concept[=].concept[=].concept[=].display = "Thoraco-Abdominal (area): Paraspinal - Thoracic / dorsal vertebra 4"
* concept[=].concept[=].concept[+].code = #8.1.5
* concept[=].concept[=].concept[=].display = "Thoraco-Abdominal (area): Paraspinal - Thoracic / dorsal vertebra 5"
* concept[=].concept[=].concept[+].code = #8.1.6
* concept[=].concept[=].concept[=].display = "Thoraco-Abdominal (area): Paraspinal - Thoracic / dorsal vertebra 6"
* concept[=].concept[=].concept[+].code = #8.1.7
* concept[=].concept[=].concept[=].display = "Thoraco-Abdominal (area): Paraspinal - Thoracic / dorsal vertebra 7"
* concept[=].concept[=].concept[+].code = #8.1.8
* concept[=].concept[=].concept[=].display = "Thoraco-Abdominal (area): Paraspinal - Thoracic / dorsal vertebra 8"
* concept[=].concept[=].concept[+].code = #8.1.9
* concept[=].concept[=].concept[=].display = "Thoraco-Abdominal (area): Paraspinal - Thoracic / dorsal vertebra 9"
* concept[=].concept[=].concept[+].code = #8.1.10
* concept[=].concept[=].concept[=].display = "Thoraco-Abdominal (area): Paraspinal - Thoracic / dorsal vertebra 10"
* concept[=].concept[=].concept[+].code = #8.1.11
* concept[=].concept[=].concept[=].display = "Thoraco-Abdominal (area): Paraspinal - Thoracic / dorsal vertebra 11"
* concept[=].concept[=].concept[+].code = #8.1.12
* concept[=].concept[=].concept[=].display = "Thoraco-Abdominal (area): Paraspinal - Thoracic / dorsal vertebra 12"
* concept[=].concept[=].concept[+].code = #8.1.13
* concept[=].concept[=].concept[=].display = "Thoraco-Abdominal (area): Paraspinal - Lumbar vertebra 1"
* concept[=].concept[=].concept[+].code = #8.1.14
* concept[=].concept[=].concept[=].display = "Thoraco-Abdominal (area): Paraspinal - Lumbar vertebra 2"
* concept[=].concept[=].concept[+].code = #8.1.15
* concept[=].concept[=].concept[=].display = "Thoraco-Abdominal (area): Paraspinal - Lumbar vertebra 3"
* concept[=].concept[=].concept[+].code = #8.1.16
* concept[=].concept[=].concept[=].display = "Thoraco-Abdominal (area): Paraspinal - Lumbar vertebra 4"
* concept[=].concept[=].concept[+].code = #8.1.17
* concept[=].concept[=].concept[=].display = "Thoraco-Abdominal (area): Paraspinal - Lumbar vertebra 5"
* concept[=].concept[+].code = #8.98
* concept[=].concept[=].display = "Thoraco-Abdominal (area): Other specified"
* concept[=].concept[+].code = #8.99
* concept[=].concept[=].display = "Thoraco-Abdominal (area): Unspecified"
* concept[+].code = #9
* concept[=].display = "Abdomen"
* concept[=].concept[0].code = #9.1
* concept[=].concept[=].display = "Abdomen: Whole (upper) abdomen (diaphragm to iliac crests)"
* concept[=].concept[+].code = #9.2
* concept[=].concept[=].display = "Abdomen: Upper quadrant"
* concept[=].concept[=].concept[0].code = #9.2.R
* concept[=].concept[=].concept[=].display = "Abdomen: Upper quadrant (right)"
* concept[=].concept[=].concept[+].code = #9.2.L
* concept[=].concept[=].concept[=].display = "Abdomen: Upper quadrant (left)"
* concept[=].concept[+].code = #9.3
* concept[=].concept[=].display = "Abdomen: Flank / hemiabdomen (top of diaphragm to iliac crest)"
* concept[=].concept[=].concept[0].code = #9.3.R
* concept[=].concept[=].concept[=].display = "Abdomen: Flank / hemiabdomen (top of diaphragm to iliac crest) (right)"
* concept[=].concept[=].concept[+].code = #9.3.L
* concept[=].concept[=].concept[=].display = "Abdomen: Flank / hemiabdomen (top of diaphragm to iliac crest) (left)"
* concept[=].concept[+].code = #9.4
* concept[=].concept[=].display = "Abdomen: Kidney"
* concept[=].concept[=].concept[0].code = #9.4.R
* concept[=].concept[=].concept[=].display = "Abdomen: Kidney (right)"
* concept[=].concept[=].concept[+].code = #9.4.L
* concept[=].concept[=].concept[=].display = "Abdomen: Kidney (left)"
* concept[=].concept[=].concept[+].code = #9.4.B
* concept[=].concept[=].concept[=].display = "Abdomen: Kidney (bilateral)"
* concept[=].concept[+].code = #9.5
* concept[=].concept[=].display = "Abdomen: Liver"
* concept[=].concept[=].concept[0].code = #9.5.1
* concept[=].concept[=].concept[=].display = "Abdomen: Liver - Whole liver"
* concept[=].concept[=].concept[+].code = #9.5.2
* concept[=].concept[=].concept[=].display = "Abdomen: Liver - Right lobe"
* concept[=].concept[=].concept[+].code = #9.5.3
* concept[=].concept[=].concept[=].display = "Abdomen: Liver - Left lobe"
* concept[=].concept[+].code = #9.6
* concept[=].concept[=].display = "Abdomen: Spleen"
* concept[=].concept[+].code = #9.7
* concept[=].concept[=].display = "Abdomen: Paraaortic area/nodes"
* concept[=].concept[=].concept[0].code = #9.7.R
* concept[=].concept[=].concept[=].display = "Abdomen: Paraaortic area/nodes (right)"
* concept[=].concept[=].concept[+].code = #9.7.L
* concept[=].concept[=].concept[=].display = "Abdomen: Paraaortic area/nodes (left)"
* concept[=].concept[=].concept[+].code = #9.7.B
* concept[=].concept[=].concept[=].display = "Abdomen: Paraaortic area/nodes (bilateral)"
* concept[=].concept[+].code = #9.8
* concept[=].concept[=].display = "Abdomen: Descending aorta below diaphragm"
* concept[=].concept[+].code = #9.9
* concept[=].concept[=].display = "Abdomen: Paraspinal"
* concept[=].concept[=].concept[0].code = #9.9.R
* concept[=].concept[=].concept[=].display = "Abdomen: Paraspinal (right)"
* concept[=].concept[=].concept[+].code = #9.9.L
* concept[=].concept[=].concept[=].display = "Abdomen: Paraspinal (left)"
* concept[=].concept[=].concept[+].code = #9.9.B
* concept[=].concept[=].concept[=].display = "Abdomen: Paraspinal (bilateral)"
* concept[=].concept[=].concept[+].code = #9.9.1
* concept[=].concept[=].concept[=].display = "Abdomen: Paraspinal - Lumbar vertebra 1"
* concept[=].concept[=].concept[+].code = #9.9.2
* concept[=].concept[=].concept[=].display = "Abdomen: Paraspinal - Lumbar vertebra 2"
* concept[=].concept[=].concept[+].code = #9.9.3
* concept[=].concept[=].concept[=].display = "Abdomen: Paraspinal - Lumbar vertebra 3"
* concept[=].concept[=].concept[+].code = #9.9.4
* concept[=].concept[=].concept[=].display = "Abdomen: Paraspinal - Lumbar vertebra 4"
* concept[=].concept[=].concept[+].code = #9.9.5
* concept[=].concept[=].concept[=].display = "Abdomen: Paraspinal - Lumbar vertebra 5"
* concept[=].concept[+].code = #9.98
* concept[=].concept[=].display = "Abdomen: Other specified"
* concept[=].concept[+].code = #9.99
* concept[=].concept[=].display = "Abdomen: Unspecified"
* concept[+].code = #10
* concept[=].display = "Abdomino-Pelvic (area)"
* concept[=].concept[0].code = #10.1
* concept[=].concept[=].display = "Abdomino-Pelvic (area): Whole abdomiopelvic field; (top of diaphragm to inferior pubis)"
* concept[=].concept[+].code = #10.2
* concept[=].concept[=].display = "Abdomino-Pelvic (area): Flank / hemiabdomen; (top of diaphragm to inferior pubis)"
* concept[=].concept[+].code = #10.3
* concept[=].concept[=].display = "Abdomino-Pelvic (area): Paraspinal"
* concept[=].concept[=].concept[0].code = #10.3.R
* concept[=].concept[=].concept[=].display = "Abdomino-Pelvic (area): Paraspinal (right)"
* concept[=].concept[=].concept[+].code = #10.3.L
* concept[=].concept[=].concept[=].display = "Abdomino-Pelvic (area): Paraspinal (left)"
* concept[=].concept[=].concept[+].code = #10.3.B
* concept[=].concept[=].concept[=].display = "Abdomino-Pelvic (area): Paraspinal (bilateral)"
* concept[=].concept[=].concept[+].code = #10.3.1
* concept[=].concept[=].concept[=].display = "Abdomino-Pelvic (area): Paraspinal - Lumbar vertebra 1"
* concept[=].concept[=].concept[+].code = #10.3.2
* concept[=].concept[=].concept[=].display = "Abdomino-Pelvic (area): Paraspinal - Lumbar vertebra 2"
* concept[=].concept[=].concept[+].code = #10.3.3
* concept[=].concept[=].concept[=].display = "Abdomino-Pelvic (area): Paraspinal - Lumbar vertebra 3"
* concept[=].concept[=].concept[+].code = #10.3.4
* concept[=].concept[=].concept[=].display = "Abdomino-Pelvic (area): Paraspinal - Lumbar vertebra 4"
* concept[=].concept[=].concept[+].code = #10.3.5
* concept[=].concept[=].concept[=].display = "Abdomino-Pelvic (area): Paraspinal - Lumbar vertebra 5"
* concept[=].concept[=].concept[+].code = #10.3.6
* concept[=].concept[=].concept[=].display = "Abdomino-Pelvic (area): Paraspinal - Sacral vertebra 1"
* concept[=].concept[=].concept[+].code = #10.3.7
* concept[=].concept[=].concept[=].display = "Abdomino-Pelvic (area): Paraspinal - Sacral vertebra 2"
* concept[=].concept[=].concept[+].code = #10.3.8
* concept[=].concept[=].concept[=].display = "Abdomino-Pelvic (area): Paraspinal - Sacral vertebra 3"
* concept[=].concept[=].concept[+].code = #10.3.9
* concept[=].concept[=].concept[=].display = "Abdomino-Pelvic (area): Paraspinal - Sacral vertebra 4"
* concept[=].concept[=].concept[+].code = #10.3.10
* concept[=].concept[=].concept[=].display = "Abdomino-Pelvic (area): Paraspinal - Sacral vertebra 5"
* concept[=].concept[=].concept[+].code = #10.3.11
* concept[=].concept[=].concept[=].display = "Abdomino-Pelvic (area): Paraspinal - Cocyx"
* concept[=].concept[+].code = #10.98
* concept[=].concept[=].display = "Abdomino-Pelvic (area): Other specified"
* concept[=].concept[+].code = #10.99
* concept[=].concept[=].display = "Abdomino-Pelvic (area): Unspecified"
* concept[+].code = #11
* concept[=].display = "Pelvis"
* concept[=].concept[0].code = #11.1
* concept[=].concept[=].display = "Pelvis: Whole Pelvis"
* concept[=].concept[+].code = #11.2
* concept[=].concept[=].display = "Pelvis: Hemi Pelvis"
* concept[=].concept[=].concept[0].code = #11.2.R
* concept[=].concept[=].concept[=].display = "Pelvis: Hemi Pelvis (right)"
* concept[=].concept[=].concept[+].code = #11.2.L
* concept[=].concept[=].concept[=].display = "Pelvis: Hemi Pelvis (left)"
* concept[=].concept[+].code = #11.3
* concept[=].concept[=].display = "Pelvis: Ovaries"
* concept[=].concept[=].concept[0].code = #11.3.R
* concept[=].concept[=].concept[=].display = "Pelvis: Ovaries (right)"
* concept[=].concept[=].concept[+].code = #11.3.L
* concept[=].concept[=].concept[=].display = "Pelvis: Ovaries (left)"
* concept[=].concept[=].concept[+].code = #11.3.B
* concept[=].concept[=].concept[=].display = "Pelvis: Ovaries (bilateral)"
* concept[=].concept[+].code = #11.4
* concept[=].concept[=].display = "Pelvis: Uterus"
* concept[=].concept[+].code = #11.5
* concept[=].concept[=].display = "Pelvis: Vagina"
* concept[=].concept[+].code = #11.6
* concept[=].concept[=].display = "Pelvis: Prostate"
* concept[=].concept[+].code = #11.7
* concept[=].concept[=].display = "Pelvis: Bladder"
* concept[=].concept[+].code = #11.8
* concept[=].concept[=].display = "Pelvis: Iliac area/nodes"
* concept[=].concept[=].concept[0].code = #11.8.R
* concept[=].concept[=].concept[=].display = "Pelvis: Iliac area/nodes (right)"
* concept[=].concept[=].concept[+].code = #11.8.L
* concept[=].concept[=].concept[=].display = "Pelvis: Iliac area/nodes (left)"
* concept[=].concept[=].concept[+].code = #11.8.B
* concept[=].concept[=].concept[=].display = "Pelvis: Iliac area/nodes (bilateral)"
* concept[=].concept[+].code = #11.9
* concept[=].concept[=].display = "Pelvis: Inguinal area/nodes"
* concept[=].concept[=].concept[0].code = #11.9.R
* concept[=].concept[=].concept[=].display = "Pelvis: Inguinal area/nodes (right)"
* concept[=].concept[=].concept[+].code = #11.9.L
* concept[=].concept[=].concept[=].display = "Pelvis: Inguinal area/nodes (left)"
* concept[=].concept[=].concept[+].code = #11.9.B
* concept[=].concept[=].concept[=].display = "Pelvis: Inguinal area/nodes (bilateral)"
* concept[=].concept[+].code = #11.10
* concept[=].concept[=].display = "Pelvis: Femoral area/nodes"
* concept[=].concept[=].concept[0].code = #11.10.R
* concept[=].concept[=].concept[=].display = "Pelvis: Femoral area/nodes (right)"
* concept[=].concept[=].concept[+].code = #11.10.L
* concept[=].concept[=].concept[=].display = "Pelvis: Femoral area/nodes (left)"
* concept[=].concept[=].concept[+].code = #11.10.B
* concept[=].concept[=].concept[=].display = "Pelvis: Femoral area/nodes (bilateral)"
* concept[=].concept[+].code = #11.11
* concept[=].concept[=].display = "Pelvis: Testicle"
* concept[=].concept[=].concept[0].code = #11.11.R
* concept[=].concept[=].concept[=].display = "Pelvis: Testicle (right)"
* concept[=].concept[=].concept[+].code = #11.11.L
* concept[=].concept[=].concept[=].display = "Pelvis: Testicle (left)"
* concept[=].concept[=].concept[+].code = #11.11.B
* concept[=].concept[=].concept[=].display = "Pelvis: Testicle (bilateral)"
* concept[=].concept[+].code = #11.98
* concept[=].concept[=].display = "Pelvis: Other specified"
* concept[=].concept[+].code = #11.99
* concept[=].concept[=].display = "Pelvis: Unspecified"
* concept[+].code = #13
* concept[=].display = "Upper limb"
* concept[=].concept[0].code = #13.1
* concept[=].concept[=].display = "Upper limb: Whole upper limb"
* concept[=].concept[=].concept[0].code = #13.1.R
* concept[=].concept[=].concept[=].display = "Upper limb: Whole upper limb (right)"
* concept[=].concept[=].concept[+].code = #13.1.L
* concept[=].concept[=].concept[=].display = "Upper limb: Whole upper limb (left)"
* concept[=].concept[=].concept[+].code = #13.1.B
* concept[=].concept[=].concept[=].display = "Upper limb: Whole upper limb (bilateral)"
* concept[=].concept[+].code = #13.2
* concept[=].concept[=].display = "Upper limb: Shoulder"
* concept[=].concept[=].concept[0].code = #13.2.R
* concept[=].concept[=].concept[=].display = "Upper limb: Shoulder (right)"
* concept[=].concept[=].concept[+].code = #13.2.L
* concept[=].concept[=].concept[=].display = "Upper limb: Shoulder (left)"
* concept[=].concept[=].concept[+].code = #13.2.B
* concept[=].concept[=].concept[=].display = "Upper limb: Shoulder (bilateral)"
* concept[=].concept[+].code = #13.3
* concept[=].concept[=].display = "Upper limb: Arm above elbow"
* concept[=].concept[=].concept[0].code = #13.3.R
* concept[=].concept[=].concept[=].display = "Upper limb: Arm above elbow (right)"
* concept[=].concept[=].concept[+].code = #13.3.L
* concept[=].concept[=].concept[=].display = "Upper limb: Arm above elbow (left)"
* concept[=].concept[=].concept[+].code = #13.3.B
* concept[=].concept[=].concept[=].display = "Upper limb: Arm above elbow (bilateral)"
* concept[=].concept[+].code = #13.4
* concept[=].concept[=].display = "Upper limb: Elbow"
* concept[=].concept[=].concept[0].code = #13.4.R
* concept[=].concept[=].concept[=].display = "Upper limb: Elbow (right)"
* concept[=].concept[=].concept[+].code = #13.4.L
* concept[=].concept[=].concept[=].display = "Upper limb: Elbow (left)"
* concept[=].concept[=].concept[+].code = #13.4.B
* concept[=].concept[=].concept[=].display = "Upper limb: Elbow (bilateral)"
* concept[=].concept[+].code = #13.5
* concept[=].concept[=].display = "Upper limb: Forearm"
* concept[=].concept[=].concept[0].code = #13.5.R
* concept[=].concept[=].concept[=].display = "Upper limb: Forearm (right)"
* concept[=].concept[=].concept[+].code = #13.5.L
* concept[=].concept[=].concept[=].display = "Upper limb: Forearm (left)"
* concept[=].concept[=].concept[+].code = #13.5.B
* concept[=].concept[=].concept[=].display = "Upper limb: Forearm (bilateral)"
* concept[=].concept[+].code = #13.6
* concept[=].concept[=].display = "Upper limb: Wrist"
* concept[=].concept[=].concept[0].code = #13.6.R
* concept[=].concept[=].concept[=].display = "Upper limb: Wrist (right)"
* concept[=].concept[=].concept[+].code = #13.6.L
* concept[=].concept[=].concept[=].display = "Upper limb: Wrist (left)"
* concept[=].concept[=].concept[+].code = #13.6.B
* concept[=].concept[=].concept[=].display = "Upper limb: Wrist (bilateral)"
* concept[=].concept[+].code = #13.7
* concept[=].concept[=].display = "Upper limb: Hand"
* concept[=].concept[=].concept[0].code = #13.7.R
* concept[=].concept[=].concept[=].display = "Upper limb: Hand (right)"
* concept[=].concept[=].concept[+].code = #13.7.L
* concept[=].concept[=].concept[=].display = "Upper limb: Hand (left)"
* concept[=].concept[=].concept[+].code = #13.7.B
* concept[=].concept[=].concept[=].display = "Upper limb: Hand (bilateral)"
* concept[=].concept[+].code = #13.98
* concept[=].concept[=].display = "Upper limb: Other specified"
* concept[=].concept[+].code = #13.99
* concept[=].concept[=].display = "Upper limb: Unspecified"
* concept[+].code = #14
* concept[=].display = "Lower limb"
* concept[=].concept[0].code = #14.1
* concept[=].concept[=].display = "Lower limb: Whole lower limb"
* concept[=].concept[=].concept[0].code = #14.1.R
* concept[=].concept[=].concept[=].display = "Lower limb: Whole lower limb (right)"
* concept[=].concept[=].concept[+].code = #14.1.L
* concept[=].concept[=].concept[=].display = "Lower limb: Whole lower limb (left)"
* concept[=].concept[=].concept[+].code = #14.1.B
* concept[=].concept[=].concept[=].display = "Lower limb: Whole lower limb (bilateral)"
* concept[=].concept[+].code = #14.2
* concept[=].concept[=].display = "Lower limb: Groin"
* concept[=].concept[=].concept[0].code = #14.2.R
* concept[=].concept[=].concept[=].display = "Lower limb: Groin (right)"
* concept[=].concept[=].concept[+].code = #14.2.L
* concept[=].concept[=].concept[=].display = "Lower limb: Groin (left)"
* concept[=].concept[=].concept[+].code = #14.2.B
* concept[=].concept[=].concept[=].display = "Lower limb: Groin (bilateral)"
* concept[=].concept[+].code = #14.3
* concept[=].concept[=].display = "Lower limb: Leg above the knee"
* concept[=].concept[=].concept[0].code = #14.3.R
* concept[=].concept[=].concept[=].display = "Lower limb: Leg above the knee (right)"
* concept[=].concept[=].concept[+].code = #14.3.L
* concept[=].concept[=].concept[=].display = "Lower limb: Leg above the knee (left)"
* concept[=].concept[=].concept[+].code = #14.3.B
* concept[=].concept[=].concept[=].display = "Lower limb: Leg above the knee (bilateral)"
* concept[=].concept[+].code = #14.4
* concept[=].concept[=].display = "Lower limb: Knee"
* concept[=].concept[=].concept[0].code = #14.4.R
* concept[=].concept[=].concept[=].display = "Lower limb: Knee (right)"
* concept[=].concept[=].concept[+].code = #14.4.L
* concept[=].concept[=].concept[=].display = "Lower limb: Knee (left)"
* concept[=].concept[=].concept[+].code = #14.4.B
* concept[=].concept[=].concept[=].display = "Lower limb: Knee (bilateral)"
* concept[=].concept[+].code = #14.5
* concept[=].concept[=].display = "Lower limb: Leg below the knee"
* concept[=].concept[=].concept[0].code = #14.5.R
* concept[=].concept[=].concept[=].display = "Lower limb: Leg below the knee (right)"
* concept[=].concept[=].concept[+].code = #14.5.L
* concept[=].concept[=].concept[=].display = "Lower limb: Leg below the knee (left)"
* concept[=].concept[=].concept[+].code = #14.5.B
* concept[=].concept[=].concept[=].display = "Lower limb: Leg below the knee (bilateral)"
* concept[=].concept[+].code = #14.6
* concept[=].concept[=].display = "Lower limb: Ankle"
* concept[=].concept[=].concept[0].code = #14.6.R
* concept[=].concept[=].concept[=].display = "Lower limb: Ankle (right)"
* concept[=].concept[=].concept[+].code = #14.6.L
* concept[=].concept[=].concept[=].display = "Lower limb: Ankle (left)"
* concept[=].concept[=].concept[+].code = #14.6.B
* concept[=].concept[=].concept[=].display = "Lower limb: Ankle (bilateral)"
* concept[=].concept[+].code = #14.7
* concept[=].concept[=].display = "Lower limb: Foot"
* concept[=].concept[=].concept[0].code = #14.7.R
* concept[=].concept[=].concept[=].display = "Lower limb: Foot (right)"
* concept[=].concept[=].concept[+].code = #14.7.L
* concept[=].concept[=].concept[=].display = "Lower limb: Foot (left)"
* concept[=].concept[=].concept[+].code = #14.7.B
* concept[=].concept[=].concept[=].display = "Lower limb: Foot (bilateral)"
* concept[=].concept[+].code = #14.98
* concept[=].concept[=].display = "Lower limb: Other specified"
* concept[=].concept[+].code = #14.99
* concept[=].concept[=].display = "Lower limb: Unspecified"
* concept[+].code = #50
* concept[=].display = "Special sites"
* concept[=].concept[0].code = #50.50
* concept[=].concept[=].display = "Special sites: Total body irradiation (TBI) entire body, includes all radiation sites"
* concept[=].concept[+].code = #50.51
* concept[=].concept[=].display = "Special sites: Upper hemi-body includes all radiation sites above the top of the iliac crests/umbilicus"
* concept[=].concept[+].code = #50.52
* concept[=].concept[=].display = "Special sites: Lower hemi-body includes all radiation sites below the top of the iliac crests/umbilicus"
* concept[=].concept[+].code = #50.53
* concept[=].concept[=].display = "Special sites: Total lymphoid irradiation (TLI) includes mantle and inverted Y + splenic fields"
* concept[=].concept[+].code = #50.54
* concept[=].concept[=].display = "Special sites: Subtotal lymphoid irradiation (STLI) mantle + paraaortic+ splenic fields"
* concept[=].concept[+].code = #50.55
* concept[=].concept[=].display = "Special sites: Extended mantle includes mantle and paraaortic fields"
* concept[=].concept[+].code = #50.56
* concept[=].concept[=].display = "Special sites: Mantle includes bilateral cervical (neck), supraclavicular, mediastinal, hilar and axillary fields"
* concept[=].concept[+].code = #50.57
* concept[=].concept[=].display = "Special sites: Mini-mantle includes bilateral cervical (neck) supraclavicular and axillary fields (excludes mediastinal and lung)"
* concept[=].concept[+].code = #50.58
* concept[=].concept[=].display = "Special sites: Inverted Y includes bilateral paraaortic nodes+ iliac nodes +/- splenic fields"
* concept[=].concept[+].code = #50.59
* concept[=].concept[=].display = "Special sites: Whole Central Nervous System /Cranio-Spinal Irradiation, includes the whole brain and the whole spine"