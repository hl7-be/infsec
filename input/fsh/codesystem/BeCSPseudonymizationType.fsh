CodeSystem: BeCSPseudonymizationType
Id: be-cs-pseudonymization-type
Title: "Types of pseudonymization"
Description: "The technique used for pseudonymization"
* ^experimental = false
* ^caseSensitive = true
* #direct "Direct pseudonym, for text shorter than 32 bytes"
* #encrypted "Encrypted pseudonym, for text longer than 32 bytes"