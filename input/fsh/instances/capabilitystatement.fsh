Instance: capabilitystatement
InstanceOf: CapabilityStatement
Usage: #example
Title: "Capability Statement with Pseudonymisation"
Description: "This capability statement indicates support for pseudo v1, pseudo v2 and pseudo-encryption v1."

* url = "https://www.ehealth.fgov.be/standards/fhir/infsec/CapabilityStatement/capabilitystatement"
* version = "1.3.0"
* name = "PseudonymizationSupport"
* status = #active
* date = "2026-06-28"
* publisher = "eHealth Platform"
* kind = #instance

* implementation.description = "Example FHIR server supporting pseudonymisation"
* implementation.url = "https://example.org/fhir"

* fhirVersion = #4.0.1
* format[+] = #json
* format[+] = #xml

* rest[+].mode = #server

* rest[=].security.service[+].coding[+].system = "https://www.ehealth.fgov.be/standards/fhir/infsec/CodeSystem/be-cs-pseudonymization-version"
* rest[=].security.service[=].coding[=].code = #urn:be:fgov:ehealth:pseudo:v1

* rest[=].security.service[+].coding[+].system = "https://www.ehealth.fgov.be/standards/fhir/infsec/CodeSystem/be-cs-pseudonymization-version"
* rest[=].security.service[=].coding[=].code = #urn:be:fgov:ehealth:pseudo:v2

* rest[=].security.service[+].coding[+].system = "https://www.ehealth.fgov.be/standards/fhir/infsec/CodeSystem/be-cs-pseudonymization-version"
* rest[=].security.service[=].coding[=].code = #urn:be:fgov:pseudo-encrypted:v1