Extension: BeExtPseudonymization
Id: be-ext-pseudonymization
Title: "Pseudonymization Extension"
Description: "This is a marker interface. If the field is pseudonymized, the string field SHALL have this extension. The original text field shall contain the x and the y value separated by a dot. The optional transitInfo is a separate field in the extension."
* ^context.type = #element
* ^context.expression = "Element"
* . ^short = "Pseudonymization data"
