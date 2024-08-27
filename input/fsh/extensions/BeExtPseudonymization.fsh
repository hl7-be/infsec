Extension: BeExtPseudonymization
Id: be-ext-pseudonymization
Title: "Pseudonymization Extension"
Description: "This is a marker interface. If the field is pseudonymized, the string field SHALL have this extension. "
* ^context.type = #element
* ^context.expression = "Element"
* . ^short = "Pseudonymization data"
* extension contains  marker 1..1 MS and
    format 0..1 MS and
    version 0..1 MS
* extension[marker].value[x] only boolean
* extension[marker].valueBoolean = true
* extension[format].value[x] only code
* extension[format].valueCode 0..1 MS 
* extension[format].valueCode ^short = "provide encrypted only in case of Blinded Pseudonymization Cookbook, Annex: Processing of input data exceeding 32
bytes"
* extension[format].valueCode from BeVSPseudonymizationType
* extension[version].value[x] only positiveInt
* extension[version].valuePositiveInt 0..1 MS
* extension[version].valuePositiveInt ^short = "version of the pseudonym encoding"