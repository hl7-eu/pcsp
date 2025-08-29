// --------- 

/* ValueSet: YesNoVS
Id: yes-no-vs
Title: "Yes/No Value Set"
Description: "Yes/No Value Set"

* ^experimental = false
* $loinc#LA32-8 "NO"
* $loinc#LA33-6 "YES" */

// --------- 

Instance: ConditionsCS
InstanceOf: CodeSystem
Usage: #definition
* experimental = false
* caseSensitive = true
* url = "http://hl7.eu/fhir/ig/pcsp/CodeSystem/ConditionsCS"
* version = "0.0.1"
* name = "ConditionsCS"
* title = "Conditions"
* status = #active
* description = "PancareSurPass Conditions Code System"
* content = #complete
* concept[+].code = #1001,04
* concept[=].display = "Auditory system - Ear - Hearing Impairment (Adults, with subsequent tests available)"
* concept[+].code = #1001,05
* concept[=].display = "Auditory system - Ear - Hearing Impairment (Adults, without subsequent tests available)"
* concept[+].code = #1001,01
* concept[=].display = "Auditory system - Ear - Hearing Impairment (Children)"
* concept[+].code = #1001,02
* concept[=].display = "Auditory system - Ear - Tinnitus"
* concept[+].code = #1001,03
* concept[=].display = "Auditory system - Ear - Vertigo"
* concept[+].code = #1001,99
* concept[=].display = "Auditory system - Ear - Other"
* concept[+].code = #2001,01
* concept[=].display = "Cardiovascular system (excluding cerebrovascular disorder) - Heart - Left ventricular systolic dysfunction"
* concept[+].code = #2001,02
* concept[=].display = "Cardiovascular system (excluding cerebrovascular disorder) - Heart - Coronary artery disease"
* concept[+].code = #2001,03
* concept[=].display = "Cardiovascular system (excluding cerebrovascular disorder) - Heart - Bradycardia, sinus"
* concept[+].code = #2001,04
* concept[=].display = "Cardiovascular system (excluding cerebrovascular disorder) - Heart - Tachycardia sinus"
* concept[+].code = #2001,05
* concept[=].display = "Cardiovascular system (excluding cerebrovascular disorder) - Heart - Atrio-ventricular Heart Block"
* concept[+].code = #2001,06
* concept[=].display = "Cardiovascular system (excluding cerebrovascular disorder) - Heart - Conduction abnormalities"
* concept[+].code = #2001,07
* concept[=].display = "Cardiovascular system (excluding cerebrovascular disorder) - Heart - Prolonged QT corrected (QTc) interval"
* concept[+].code = #2001,98
* concept[=].display = "Cardiovascular system (excluding cerebrovascular disorder) - Heart - Other Cardiac dysrhythmia"
* concept[+].code = #2001,12
* concept[=].display = "Cardiovascular system (excluding cerebrovascular disorder) - Heart - Congestive heart failure (Adults)"
* concept[+].code = #2001,09
* concept[=].display = "Cardiovascular system (excluding cerebrovascular disorder) - Heart - Congestive heart failure (Children - modified NYHA/Ross Classification)"
* concept[+].code = #2001,1
* concept[=].display = "Cardiovascular system (excluding cerebrovascular disorder) - Heart - Cor pulmonare (right heart failure)"
* concept[+].code = #2001,11
* concept[=].display = "Cardiovascular system (excluding cerebrovascular disorder) - Heart - Valvular heart disease"
* concept[+].code = #2001,99
* concept[=].display = "Cardiovascular system (excluding cerebrovascular disorder) - Heart - Other"
* concept[+].code = #2002,01
* concept[=].display = "Cardiovascular system (excluding cerebrovascular disorder) - Pericardium - Pericardial disease (not infective and autoimmune)"
* concept[+].code = #2002,99
* concept[=].display = "Cardiovascular system (excluding cerebrovascular disorder) - Pericardium - Other"
* concept[+].code = #2003,08
* concept[=].display = "Cardiovascular system (excluding cerebrovascular disorder) - Vessels - Hypertension (systemic) - Adults"
* concept[+].code = #2003,01
* concept[=].display = "Cardiovascular system (excluding cerebrovascular disorder) - Vessels - Hypertension (systemic) - Children"
* concept[+].code = #2003,02
* concept[=].display = "Cardiovascular system (excluding cerebrovascular disorder) - Vessels - Pulmonary hypertension"
* concept[+].code = #2003,03
* concept[=].display = "Cardiovascular system (excluding cerebrovascular disorder) - Vessels - Aortic root aneurysm"
* concept[+].code = #2003,04
* concept[=].display = "Cardiovascular system (excluding cerebrovascular disorder) - Vessels - Vascular disease"
* concept[+].code = #2003,05
* concept[=].display = "Cardiovascular system (excluding cerebrovascular disorder) - Vessels - Arterio-venus malformation"
* concept[+].code = #2003,06
* concept[=].display = "Cardiovascular system (excluding cerebrovascular disorder) - Vessels - Thrombus"
* concept[+].code = #2003,07
* concept[=].display = "Cardiovascular system (excluding cerebrovascular disorder) - Vessels - Capillary leak syndrome"
* concept[+].code = #2003,99
* concept[=].display = "Cardiovascular system (excluding cerebrovascular disorder) - Vessels - Other"
* concept[+].code = #3001,01
* concept[=].display = "Lymphatic system - Lymphatic vessels - Lymphedema"
* concept[+].code = #3001,99
* concept[=].display = "Lymphatic system - Lymphatic vessels - Other"
* concept[+].code = #4001,01
* concept[=].display = "Central and peripheral nervous system - Cerebrovascular - Transient ischemic attack"
* concept[+].code = #4001,02
* concept[=].display = "Central and peripheral nervous system - Cerebrovascular - Cerebrovascular accident/stroke"
* concept[+].code = #4001,03
* concept[=].display = "Central and peripheral nervous system - Cerebrovascular - Cerebrovascular disease"
* concept[+].code = #4001,04
* concept[=].display = "Central and peripheral nervous system - Cerebrovascular - Aneurysms"
* concept[+].code = #4001,05
* concept[=].display = "Central and peripheral nervous system - Cerebrovascular - Cavernoma"
* concept[+].code = #4001,99
* concept[=].display = "Central and peripheral nervous system - Cerebrovascular - Other"
* concept[+].code = #4002,01
* concept[=].display = "Central and peripheral nervous system - Brain - Seizures"
* concept[+].code = #4002,02
* concept[=].display = "Central and peripheral nervous system - Brain - Leucoencephalopathy"
* concept[+].code = #4002,03
* concept[=].display = "Central and peripheral nervous system - Brain - Headaches, chronic/ recurrent"
* concept[+].code = #4002,04
* concept[=].display = "Central and peripheral nervous system - Brain - Dementia"
* concept[+].code = #4002,05
* concept[=].display = "Central and peripheral nervous system - Brain - Cerebellar disorder"
* concept[+].code = #4002,99
* concept[=].display = "Central and peripheral nervous system - Brain - Other"
* concept[+].code = #4003,01
* concept[=].display = "Central and peripheral nervous system - Spinal cord and nerves - Paralytic disorder"
* concept[+].code = #4003,02
* concept[=].display = "Central and peripheral nervous system - Spinal cord and nerves - Cranial nerve disorder"
* concept[+].code = #4003,03
* concept[=].display = "Central and peripheral nervous system - Spinal cord and nerves - Sensory peripheral neuropathy"
* concept[+].code = #4003,04
* concept[=].display = "Central and peripheral nervous system - Spinal cord and nerves - Motor peripheral neuropathy"
* concept[+].code = #4003,05
* concept[=].display = "Central and peripheral nervous system - Spinal cord and nerves - Autonomic nervous system dysfunction"
* concept[+].code = #4003,06
* concept[=].display = "Central and peripheral nervous system - Spinal cord and nerves - Neurogenic bowel"
* concept[+].code = #4003,07
* concept[=].display = "Central and peripheral nervous system - Spinal cord and nerves - Neurogenic bladder"
* concept[+].code = #4003,99
* concept[=].display = "Central and peripheral nervous system - Spinal cord and nerves - Other"
* concept[+].code = #5001,01
* concept[=].display = "Neuro-psychiatric system - Neurocognitive problems - Attention impaired"
* concept[+].code = #5001,02
* concept[=].display = "Neuro-psychiatric system - Neurocognitive problems - Memory impairment"
* concept[+].code = #5001,03
* concept[=].display = "Neuro-psychiatric system - Neurocognitive problems - Processing speed impairment"
* concept[+].code = #5001,04
* concept[=].display = "Neuro-psychiatric system - Neurocognitive problems - Intelligence impairment"
* concept[+].code = #5001,05
* concept[=].display = "Neuro-psychiatric system - Neurocognitive problems - Executive function impairment"
* concept[+].code = #5001,06
* concept[=].display = "Neuro-psychiatric system - Neurocognitive problems - Fine-motor dexterity deficit"
* concept[+].code = #5001,99
* concept[=].display = "Neuro-psychiatric system - Neurocognitive problems - Other"
* concept[+].code = #5002,01
* concept[=].display = "Neuro-psychiatric system - Psychosocial problems - Depression"
* concept[+].code = #5002,02
* concept[=].display = "Neuro-psychiatric system - Psychosocial problems - Fatigue, chronic"
* concept[+].code = #5002,03
* concept[=].display = "Neuro-psychiatric system - Psychosocial problems - Anxiety"
* concept[+].code = #5002,04
* concept[=].display = "Neuro-psychiatric system - Psychosocial problems - Post-traumatic stress"
* concept[+].code = #5002,98
* concept[=].display = "Neuro-psychiatric system - Psychosocial problems - Other psychiatric disorders"
* concept[+].code = #5002,06
* concept[=].display = "Neuro-psychiatric system - Psychosocial problems - Oppositionality - Children only"
* concept[+].code = #5002,07
* concept[=].display = "Neuro-psychiatric system - Psychosocial problems - Hyperactivity - Children only"
* concept[+].code = #5002,08
* concept[=].display = "Neuro-psychiatric system - Psychosocial problems - Insomnia"
* concept[+].code = #5002,99
* concept[=].display = "Neuro-psychiatric system - Psychosocial problems - Other"
* concept[+].code = #5003,01
* concept[=].display = "Neuro-psychiatric system - Eating disorders - Bulimia/anorexia/binge eating disorder"
* concept[+].code = #5003,99
* concept[=].display = "Neuro-psychiatric system - Eating disorders - Other"
* concept[+].code = #6001,01
* concept[=].display = "Musculoskeletal system - Skull - Craniofacial growth problems"
* concept[+].code = #6001,99
* concept[=].display = "Musculoskeletal system - Skull - Other"
* concept[+].code = #6002,01
* concept[=].display = "Musculoskeletal system - Bone - Amputation"
* concept[+].code = #6002,02
* concept[=].display = "Musculoskeletal system - Bone - Prosthetic malfunction"
* concept[+].code = #6002,06
* concept[=].display = "Musculoskeletal system - Bone - Reduced bone mineral density (Adults)"
* concept[+].code = #6002,03
* concept[=].display = "Musculoskeletal system - Bone - Reduced bone mineral density (Pediatric)"
* concept[+].code = #6002,04
* concept[=].display = "Musculoskeletal system - Bone - Osteonecrosis"
* concept[+].code = #6002,05
* concept[=].display = "Musculoskeletal system - Bone - Exostosis"
* concept[+].code = #6002,99
* concept[=].display = "Musculoskeletal system - Bone - Other"
* concept[+].code = #6003,01
* concept[=].display = "Musculoskeletal system - Joints - Arthritis"
* concept[+].code = #6003,02
* concept[=].display = "Musculoskeletal system - Joints - Arthralgia"
* concept[+].code = #6003,99
* concept[=].display = "Musculoskeletal system - Joints - Other"
* concept[+].code = #6004,01
* concept[=].display = "Musculoskeletal system - Spine - Scoliosis"
* concept[+].code = #6004,02
* concept[=].display = "Musculoskeletal system - Spine - Kyphosis/Lordosis"
* concept[+].code = #6004,03
* concept[=].display = "Musculoskeletal system - Spine - Intervertebral disc disorder"
* concept[+].code = #6004,99
* concept[=].display = "Musculoskeletal system - Spine - Other"
* concept[+].code = #6005,01
* concept[=].display = "Musculoskeletal system - Muscle/Skeleton - Musculoskeletal deformity"
* concept[+].code = #6005,99
* concept[=].display = "Musculoskeletal system - Muscle/Skeleton - Other"
* concept[+].code = #6006,01
* concept[=].display = "Musculoskeletal system - Extremities - Limb length discrepancy"
* concept[+].code = #6006,99
* concept[=].display = "Musculoskeletal system - Extremities - Other"
* concept[+].code = #7001,01
* concept[=].display = "Integumentary system (skin, subcutaneous, breast) - Hair - Alopecia"
* concept[+].code = #7001,99
* concept[=].display = "Integumentary system (skin, subcutaneous, breast) - Hair - Other"
* concept[+].code = #7002,01
* concept[=].display = "Integumentary system (skin, subcutaneous, breast) - Skin - Skin and subcutaneous tissue disorders"
* concept[+].code = #7002,99
* concept[=].display = "Integumentary system (skin, subcutaneous, breast) - Skin - Other"
* concept[+].code = #7003,01
* concept[=].display = "Integumentary system (skin, subcutaneous, breast) - Breast - Breast hypoplasia"
* concept[+].code = #7003,99
* concept[=].display = "Integumentary system (skin, subcutaneous, breast) - Breast - Other"
* concept[+].code = #8001,01
* concept[=].display = "Gastrointestinal system - Mouth - Dental developmental problems"
* concept[+].code = #8001,02
* concept[=].display = "Gastrointestinal system - Mouth - Xerostomia"
* concept[+].code = #8001,03
* concept[=].display = "Gastrointestinal system - Mouth - Oral lesions"
* concept[+].code = #8001,99
* concept[=].display = "Gastrointestinal system - Mouth - Other"
* concept[+].code = #8002,01
* concept[=].display = "Gastrointestinal system - Esophagus - Esophageal varices"
* concept[+].code = #8002,02
* concept[=].display = "Gastrointestinal system - Esophagus - Gastro esophageal reflux disease"
* concept[+].code = #8002,99
* concept[=].display = "Gastrointestinal system - Esophagus - Other"
* concept[+].code = #8003,01
* concept[=].display = "Gastrointestinal system - Gastrointestinal tract - Gastritis"
* concept[+].code = #8003,02
* concept[=].display = "Gastrointestinal system - Gastrointestinal tract - Gastrointestinal obstruction"
* concept[+].code = #8003,03
* concept[=].display = "Gastrointestinal system - Gastrointestinal tract - Gastrointestinal fistula"
* concept[+].code = #8003,04
* concept[=].display = "Gastrointestinal system - Gastrointestinal tract - Gastrointestinal ulcer"
* concept[+].code = #8003,99
* concept[=].display = "Gastrointestinal system - Gastrointestinal tract - Other"
* concept[+].code = #8004,01
* concept[=].display = "Gastrointestinal system - Bowel - Malabsorption syndrome"
* concept[+].code = #8004,02
* concept[=].display = "Gastrointestinal system - Bowel - Bowel perforation"
* concept[+].code = #8004,03
* concept[=].display = "Gastrointestinal system - Bowel - Enterocolitis"
* concept[+].code = #8004,04
* concept[=].display = "Gastrointestinal system - Bowel - Fecal incontinence"
* concept[+].code = #8004,05
* concept[=].display = "Gastrointestinal system - Bowel - Constipation"
* concept[+].code = #8004,06
* concept[=].display = "Gastrointestinal system - Bowel - Abdominal pain (chronic)"
* concept[+].code = #8004,07
* concept[=].display = "Gastrointestinal system - Bowel - Intestinal surgery"
* concept[+].code = #8004,99
* concept[=].display = "Gastrointestinal system - Bowel - Other"
* concept[+].code = #8005,01
* concept[=].display = "Gastrointestinal system - Pancreas - Pancreatic insufficiency"
* concept[+].code = #8005,99
* concept[=].display = "Gastrointestinal system - Pancreas - Other"
* concept[+].code = #9001,01
* concept[=].display = "Hepato/biliary system - Biliary tract - Cholelithiasis"
* concept[+].code = #9001,02
* concept[=].display = "Hepato/biliary system - Biliary tract - Cholecystectomy"
* concept[+].code = #9001,99
* concept[=].display = "Hepato/biliary system - Biliary tract - Other"
* concept[+].code = #9002,01
* concept[=].display = "Hepato/biliary system - Liver - Liver fibrosis/cirrhosis"
* concept[+].code = #9002,02
* concept[=].display = "Hepato/biliary system - Liver - Hypertransaminasemia"
* concept[+].code = #9002,03
* concept[=].display = "Hepato/biliary system - Liver - Hepatic failure"
* concept[+].code = #9002,04
* concept[=].display = "Hepato/biliary system - Liver - Hepatic nodular lesions"
* concept[+].code = #9002,05
* concept[=].display = "Hepato/biliary system - Liver - Hepatic surgery"
* concept[+].code = #9002,98
* concept[=].display = "Hepato/biliary system - Liver - Other Hepatobiliary disorders, specify"
* concept[+].code = #9002,99
* concept[=].display = "Hepato/biliary system - Liver - Other"
* concept[+].code = #10001,01
* concept[=].display = "Immunology and infectious - Immunologic disorders - Immune deficiencies"
* concept[+].code = #10001,02
* concept[=].display = "Immunology and infectious - Immunologic disorders - Auto-immune diseases"
* concept[+].code = #10001,03
* concept[=].display = "Immunology and infectious - Immunologic disorders - Graft-versus-host disease"
* concept[+].code = #10001,04
* concept[=].display = "Immunology and infectious - Immunologic disorders - Allergic reaction"
* concept[+].code = #10001,99
* concept[=].display = "Immunology and infectious - Immunologic disorders - Other"
* concept[+].code = #10002,01
* concept[=].display = "Immunology and infectious - Infection - Sepsis"
* concept[+].code = #10002,02
* concept[=].display = "Immunology and infectious - Infection - Pericarditis (infectious)"
* concept[+].code = #10002,03
* concept[=].display = "Immunology and infectious - Infection - Genitourinary infection"
* concept[+].code = #10002,04
* concept[=].display = "Immunology and infectious - Infection - HBV Chronic"
* concept[+].code = #10002,05
* concept[=].display = "Immunology and infectious - Infection - HCV Chronic"
* concept[+].code = #10002,06
* concept[=].display = "Immunology and infectious - Infection - HIV"
* concept[+].code = #10002,07
* concept[=].display = "Immunology and infectious - Infection - Infections and infestations"
* concept[+].code = #10002,99
* concept[=].display = "Immunology and infectious - Infection - Other"
* concept[+].code = #11001,01
* concept[=].display = "Hematopoietic system - Blood - Coagulopathy"
* concept[+].code = #11001,02
* concept[=].display = "Hematopoietic system - Blood - Iron overload"
* concept[+].code = #11001,03
* concept[=].display = "Hematopoietic system - Blood - Anemia"
* concept[+].code = #11001,04
* concept[=].display = "Hematopoietic system - Blood - Neutropenia"
* concept[+].code = #11001,05
* concept[=].display = "Hematopoietic system - Blood - Thrombocytopenia"
* concept[+].code = #11001,06
* concept[=].display = "Hematopoietic system - Blood - Polycythemia"
* concept[+].code = #11001,07
* concept[=].display = "Hematopoietic system - Blood - Thrombocytosis"
* concept[+].code = #11001,99
* concept[=].display = "Hematopoietic system - Blood - Other"
* concept[+].code = #11002,01
* concept[=].display = "Hematopoietic system - Spleen - Spleen disorder"
* concept[+].code = #11002,99
* concept[=].display = "Hematopoietic system - Spleen - Other"
* concept[+].code = #12001,01
* concept[=].display = "Respiratory system - Lung - Obstructive ventilatory defect"
* concept[+].code = #12001,02
* concept[=].display = "Respiratory system - Lung - Pulmonary restrictive disease"
* concept[+].code = #12001,03
* concept[=].display = "Respiratory system - Lung - Pulmonary diffusion defect"
* concept[+].code = #12001,04
* concept[=].display = "Respiratory system - Lung - Lung surgery"
* concept[+].code = #12001,99
* concept[=].display = "Respiratory system - Lung - Other"
* concept[+].code = #13001,01
* concept[=].display = "Urinary system - Kidney - Chronic kidney disease (glomerular-tubular-vascular)"
* concept[+].code = #13001,02
* concept[=].display = "Urinary system - Kidney - Hydronephrosis"
* concept[+].code = #13001,03
* concept[=].display = "Urinary system - Kidney - Nephrectomy"
* concept[+].code = #13001,99
* concept[=].display = "Urinary system - Kidney - Other"
* concept[+].code = #13002,01
* concept[=].display = "Urinary system - Urinary tract - Urinary tract calculi (stones)"
* concept[+].code = #13002,02
* concept[=].display = "Urinary system - Urinary tract - Vesico-ureteral reflux (acquired)"
* concept[+].code = #13002,03
* concept[=].display = "Urinary system - Urinary tract - Urinary incontinence"
* concept[+].code = #13002,04
* concept[=].display = "Urinary system - Urinary tract - Hemorrhagic cystitis"
* concept[+].code = #13002,05
* concept[=].display = "Urinary system - Urinary tract - Bladder fibrosis"
* concept[+].code = #13002,06
* concept[=].display = "Urinary system - Urinary tract - Urinary bladder dysfunction"
* concept[+].code = #13002,07
* concept[=].display = "Urinary system - Urinary tract - Cistectomy"
* concept[+].code = #13002,99
* concept[=].display = "Urinary system - Urinary tract - Other"
* concept[+].code = #14001,01
* concept[=].display = "Visual system - Eye - Retinopathy"
* concept[+].code = #14001,02
* concept[=].display = "Visual system - Eye - Cataract"
* concept[+].code = #14001,03
* concept[=].display = "Visual system - Eye - Glaucoma"
* concept[+].code = #14001,04
* concept[=].display = "Visual system - Eye - Dry eye"
* concept[+].code = #14001,05
* concept[=].display = "Visual system - Eye - Visual acuity reduced (OD)"
* concept[+].code = #14001,06
* concept[=].display = "Visual system - Eye - Visual acuity reduced (OS)"
* concept[+].code = #14001,07
* concept[=].display = "Visual system - Eye - Orbital prosthetic complications"
* concept[+].code = #14001,08
* concept[=].display = "Visual system - Eye - Chronic painful eye"
* concept[+].code = #14001,09
* concept[=].display = "Visual system - Eye - Eye enucleation"
* concept[+].code = #14001,99
* concept[=].display = "Visual system - Eye - Other"
* concept[+].code = #15001,01
* concept[=].display = "Endocrine system - Hypothalamus/pituitary gland - Growth hormone deficiency (Children)"
* concept[+].code = #15001,11
* concept[=].display = "Endocrine system - Hypothalamus/pituitary gland - Growth hormone deficiency (Adults)"
* concept[+].code = #15001,02
* concept[=].display = "Endocrine system - Hypothalamus/pituitary gland - Growth hormone excess"
* concept[+].code = #15001,03
* concept[=].display = "Endocrine system - Hypothalamus/pituitary gland - LH/FSH deficiency (hypogonadotropic hypogonadism - central)"
* concept[+].code = #15001,04
* concept[=].display = "Endocrine system - Hypothalamus/pituitary gland - ACTH deficiency"
* concept[+].code = #15001,05
* concept[=].display = "Endocrine system - Hypothalamus/pituitary gland - TSH deficiency (central hypothyroidism)"
* concept[+].code = #15001,06
* concept[=].display = "Endocrine system - Hypothalamus/pituitary gland - Central precocious puberty"
* concept[+].code = #15001,07
* concept[=].display = "Endocrine system - Hypothalamus/pituitary gland - Hyperprolactinemia"
* concept[+].code = #15001,08
* concept[=].display = "Endocrine system - Hypothalamus/pituitary gland - Hypoprolactinemia"
* concept[+].code = #15001,09
* concept[=].display = "Endocrine system - Hypothalamus/pituitary gland - Diabetes insipidus"
* concept[+].code = #15001,1
* concept[=].display = "Endocrine system - Hypothalamus/pituitary gland - Syndrome of inappropriate antidiuretic hormone (SIADH)"
* concept[+].code = #15001,99
* concept[=].display = "Endocrine system - Hypothalamus/pituitary gland - Other"
* concept[+].code = #15002,01
* concept[=].display = "Endocrine system - Thyroid - Primary hypothyroidism"
* concept[+].code = #15002,02
* concept[=].display = "Endocrine system - Thyroid - Hyperthyroidism"
* concept[+].code = #15002,03
* concept[=].display = "Endocrine system - Thyroid - Thyroid nodules"
* concept[+].code = #15002,04
* concept[=].display = "Endocrine system - Thyroid - Thyroidectomy"
* concept[+].code = #15002,99
* concept[=].display = "Endocrine system - Thyroid - Other"
* concept[+].code = #15003,01
* concept[=].display = "Endocrine system - Parathyroid - Hypoparathyroidism"
* concept[+].code = #15003,02
* concept[=].display = "Endocrine system - Parathyroid - Hyperparathyroidism"
* concept[+].code = #15003,99
* concept[=].display = "Endocrine system - Parathyroid - Other"
* concept[+].code = #15004,01
* concept[=].display = "Endocrine system - Adrenal gland - Adrenal insufficiency"
* concept[+].code = #15004,02
* concept[=].display = "Endocrine system - Adrenal gland - Adrenectomy"
* concept[+].code = #15004,99
* concept[=].display = "Endocrine system - Adrenal gland - Other"
* concept[+].code = #16001,01
* concept[=].display = "Metabolic system - Impaired Glucose Metabolism - Iperinsulinism"
* concept[+].code = #16001,02
* concept[=].display = "Metabolic system - Impaired Glucose Metabolism - Hyperglycemia"
* concept[+].code = #16001,03
* concept[=].display = "Metabolic system - Impaired Glucose Metabolism - Hypoglycemia"
* concept[+].code = #16001,99
* concept[=].display = "Metabolic system - Impaired Glucose Metabolism - Other"
* concept[+].code = #16002,01
* concept[=].display = "Metabolic system - Impaired lipid metabolism (Dyslipidemia) - Hypertriglyceridemia"
* concept[+].code = #16002,02
* concept[=].display = "Metabolic system - Impaired lipid metabolism (Dyslipidemia) - Hypercholesterolemia"
* concept[+].code = #16002,99
* concept[=].display = "Metabolic system - Impaired lipid metabolism (Dyslipidemia) - Other"
* concept[+].code = #16003,01
* concept[=].display = "Metabolic system - Nutrition - Metabolism and nutrition disorders"
* concept[+].code = #16003,99
* concept[=].display = "Metabolic system - Nutrition - Other"
* concept[+].code = #16004,01
* concept[=].display = "Metabolic system - Weight disorders - Overweight/Obesity (Age <20 years)"
* concept[+].code = #16004,03
* concept[=].display = "Metabolic system - Weight disorders - Overweight/Obesity (Age ≥ 20 years)"
* concept[+].code = #16004,04
* concept[=].display = "Metabolic system - Weight disorders - Underweight (Age ≥ 20 years)"
* concept[+].code = #16004,02
* concept[=].display = "Metabolic system - Weight disorders - Underweight (Age <20 years)"
* concept[+].code = #16004,99
* concept[=].display = "Metabolic system - Weight disorders - Other"
* concept[+].code = #17001,01
* concept[=].display = "Reproductive/genital system - Female reproductive organs - Delayed puberty/ Failure in pubertal progression/ Primary amenorrhea"
* concept[+].code = #17001,02
* concept[=].display = "Reproductive/genital system - Female reproductive organs - Dysmenorrhea/ Menstrual cycle irregularity (rhythm, quantity, duration and appearance)"
* concept[+].code = #17001,03
* concept[=].display = "Reproductive/genital system - Female reproductive organs - Impaired female fertility (excluding LH/FSH excess and POI as cause)"
* concept[+].code = #17001,04
* concept[=].display = "Reproductive/genital system - Female reproductive organs - LH/FSH excess (Hypogonadism hypergonadotropic -ovarian)"
* concept[+].code = #17001,05
* concept[=].display = "Reproductive/genital system - Female reproductive organs - Genitourinary adhesions (female)"
* concept[+].code = #17001,06
* concept[=].display = "Reproductive/genital system - Female reproductive organs - Vaginal stenosis"
* concept[+].code = #17001,07
* concept[=].display = "Reproductive/genital system - Female reproductive organs - Obstetric issues"
* concept[+].code = #17001,08
* concept[=].display = "Reproductive/genital system - Female reproductive organs - Ovariectomy"
* concept[+].code = #17001,09
* concept[=].display = "Reproductive/genital system - Female reproductive organs - Hysterectomy"
* concept[+].code = #17001,99
* concept[=].display = "Reproductive/genital system - Female reproductive organs - Other"
* concept[+].code = #17002,01
* concept[=].display = "Reproductive/genital system - Male reproductive organs - Delayed puberty/ Failure in pubertal progression"
* concept[+].code = #17002,02
* concept[=].display = "Reproductive/genital system - Male reproductive organs - Testosterone deficiency and/or LH/FSH excess (Hypogonadism hypergonadotropic -testis)"
* concept[+].code = #17002,03
* concept[=].display = "Reproductive/genital system - Male reproductive organs - Abnormal sperm concentration/impaired male fertility/ Impaired spermatogenesis"
* concept[+].code = #17002,04
* concept[=].display = "Reproductive/genital system - Male reproductive organs - Physical sexual dysfunction"
* concept[+].code = #17002,05
* concept[=].display = "Reproductive/genital system - Male reproductive organs - Genitourinary adhesions (male)"
* concept[+].code = #17002,06
* concept[=].display = "Reproductive/genital system - Male reproductive organs - Orchiectomy"
* concept[+].code = #17002,99
* concept[=].display = "Reproductive/genital system - Male reproductive organs - Other"

ValueSet: ConditionsVS
Id: cond-test-vs
Title: "Conditions: follow up"
Description: "Conditions: follow up"
* ^experimental = true
* ^compose.include.system = "http://hl7.eu/fhir/ig/pcsp/CodeSystem/ConditionsCS"

ValueSet: GradeVS
Id: grade-test-vs
Title: "Grade: follow up"
Description: "Grade: follow up"

* ^experimental = true
* $sct#313147000 "Tumor grade G0"
* $sct#54102005 "G1 grade"
* $sct#1663004 "G2 grade"
* $sct#61026006 "G3 grade"
* $sct#258245003 "G4 grade"
* $sct#399166001 "Fatal outcome"