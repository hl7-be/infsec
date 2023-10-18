Extension: BeExtPseudonymization
Id: be-ext-pseudonymization
Title: "Pseudonymization Extension"
Description: "This is a marker interface. If the field is pseudonymized, the string field SHALL have this extension. The original text field SHALL contain the x, y and transitInfo in JWE encoded form. transitInfo is optional depending on the situation."
* ^context.type = #element
* ^context.expression = "Element"
* . ^short = "Pseudonymization data"
* extension contains  marker 1..1 MS 
* extension[marker].value[x] only boolean
* extension[marker].valueBoolean = true