Instance: parameters1
InstanceOf: Parameters
Usage: #example
* meta.extension[+].url = "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-key-pseudonymization"
* meta.extension[=].id = "fcc557e7-40fa-4fde-b802-12a461cd176f"
* meta.extension[=].extension[+].url = "key"
* meta.extension[=].extension[=].valueString = "urn:be:fgov:pseudo:v2:OZADJVppdeQzwgvAUjQNaLvuf94ulY6iDgeip7iSHAW7TNrDBa0XMGeS6G3s/HWLSQ4eirpcox28GghzbtaiUzg=.UPOBi75XsreuYfQwyVvIaHgpzrrdS6joS8JaPlkMPxeU8FmFHRtteJp/FAq91pEllcbH4V4PRSC+QEm0C9thkO4="
* meta.extension[=].extension[=].valueString.extension[BeExtPseudonymization].extension[marker].valueBoolean = true
* parameter[0].name = "name"
* parameter[=].valueString = "urn:be:fgov:pseudo-encrypted:v1:OZADJVppdeQzwgvAUjQNaLvuf94ulY6iD:geip7iSHAW7TNrDBa0XMGeS6G3s/HWLSQ4eirpcox28GghzbtaiUzg=.UPOBi75XsreuYfQwyVvIaHgpzrrdS6joS8JaPlkMPxeU8FmFHRtteJp/FAq91pEllcbH4V4PRSC+QEm0C9thkO4="
* parameter[=].valueString.extension[BeExtPseudonymization].extension[marker].valueBoolean = true
* parameter[=].valueString.extension[BeExtPseudonymization].extension[format].valueCode = #encrypted
* parameter[=].valueString.extension[BeExtPseudonymization].extension[version].valuePositiveInt = 1
* parameter[+].name = "version"
* parameter[=].valueString = "1.0.0"