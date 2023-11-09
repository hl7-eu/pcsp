// ====== Invariants ====
Invariant: no-frontLineTreatment
Description: "notForRelapse details are not provided for relapses after EOT"
Expression: "notForRelapse.exists()"
Severity:    #error