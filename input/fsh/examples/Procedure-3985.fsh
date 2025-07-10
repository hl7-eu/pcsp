Instance: 3985
InstanceOf: ProcedureSctProphylaxisPcsp
Title: "Cineca - Procedure: Prophylaxis Example"
Description: "Example of a prophylaxis procedure from Cineca for the PanCareSurPass project"
Usage: #example
* status = #completed
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">MTX, ARA-C</div>"
* category = $sct#416608005
* subject = Reference(Patient/3971)
* performedPeriod.end = "2020-12-12"
* reasonReference[0] = Reference(Condition/3972)
* reasonReference[+] = Reference(Procedure/3984)