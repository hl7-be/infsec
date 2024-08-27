Invariant: BeInvKeyPseudonymization
Description: "the pseudonymized key should always start with 'urn:be:fgov:pseudo:v2:'"
Severity: #error
Expression: "Extension.value.toString().startsWith('urn:be:fgov:pseudo:v2:')"