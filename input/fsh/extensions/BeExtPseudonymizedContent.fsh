Extension: BeExtPseudonymizedContent
Id: be-ext-pseudonymized-content
Title: "Pseudonymized content Extension"
Description: "This is a marker interface. This extension allows to encrypt FHIR primitive elements."
* ^context.type = #element
* ^context.expression = "Element"
* . ^short = "Pseudonymization data"
* extension contains  encryptedValue 1..1 MS and
	marker 1..1 MS and
    format 0..1 MS and
    version 0..1 MS
* extension[encryptedValue].value[x] only string
* extension[encryptedValue].valueString 0..1 MS
* extension[encryptedValue].valueString ^short = "FHIR primitive element that needs to be encrypted."
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