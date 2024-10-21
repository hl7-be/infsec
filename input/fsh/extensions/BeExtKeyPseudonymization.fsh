Extension: BeExtKeyPseudonymization
Id: be-ext-key-pseudonymization
Title: "Key Pseudonymization Extension"
Description: "This holds a pseudonymized key that can be used for all encrypted fields in the resource (long text pseudonymisation)"
* ^context.type = #element
* ^context.expression = "Meta"
* . ^short = "Pseudonymization key (See Blinded Pseudonymization Cookbook, Annex: Processing of input data exceeding 32
bytes)"
* id 1..1 MS 
* id ^short = "kid (also available in JWE)"
* extension contains key 1..1 MS
* extension[key].value[x] only string 
* extension[key].valueString 1..1 MS 
* extension[key].valueString ^short = "pseudonymized key"
* extension[key].value[x].extension contains BeExtPseudonymization named pseudonymization 1..1
