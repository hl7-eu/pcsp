Instance: 3998
InstanceOf: ProcedureSurgeryPcsp
Title: "Cineca - Procedure: Surgery Example"
Description: "Example of a surgery procedure from Cineca for the PanCareSurPass project"
Usage: #example
* status = #completed
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">surgery</div>"
* extension[sacrifiedOrgan].valueCodeableConcept = $sct#78961009
* category = $sct#387713003
* subject = Reference(Patient/3971)
* performedDateTime = "2020-11-11"
* reasonReference = Reference(Condition/3972)
* bodySite[0] = $sct#818983003
* bodySite[+] = $sct#12738006
* bodySite[+] = $sct#89545001
* bodySite[+] = $sct#12921003
* bodySite[+] = $sct#421060004
* bodySite[+] = $sct#2748008
* bodySite[+] = $sct#90456006
* bodySite[+] = $sct#51185008
* bodySite[+] = $sct#32849002
* bodySite[+] = $sct#10200004
* usedCode = $cs-generic-eu-pcsp#int-prosthesis