Invariant: BeInvUrlAndVersionCanonical
Description: "Both the canonical and the version will be present"
Severity: #error
Expression: "Extension.value.toString().contains('|')"