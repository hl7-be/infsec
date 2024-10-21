Instance: capabilitystatement
InstanceOf: CapabilityStatement
Usage: #definition
* name = "RestServer"
* status = #active
* date = "2024-10-21T09:29:32.761+00:00"
* publisher = "Not provided"
* kind = #instance
* software.name = "Fictitious FHIR Server"
* implementation.description = "HAPI FHIR"
* implementation.url = "http://localhost:8080/fhir"
* fhirVersion = #4.0.1
* format[0] = #application/fhir+xml
* format[+] = #xml
* format[+] = #application/fhir+json
* format[+] = #json
* format[+] = #application/x-turtle
* format[+] = #ttl
* rest.mode = #server
* rest.security.service[+] = BeCSPseudonymizationVersion#urn:be:fgov:ehealth:pseudo:v1
* rest.security.service[+] = BeCSPseudonymizationVersion#urn:be:fgov:ehealth:pseudo:v2
* rest.security.service[+] = BeCSPseudonymizationVersion#urn:be:fgov:pseudo-encrypted:v1
* rest.resource[0].type = #CodeSystem
* rest.resource[=].profile = "http://hl7.org/fhir/StructureDefinition/CodeSystem"
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[+].code = #delete
* rest.resource[=].searchInclude = "*"
* rest.resource[=].searchParam[0].name = "code"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "A code defined in the code system"
* rest.resource[=].searchParam[+].name = "context"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "A use context assigned to the code system"
* rest.resource[=].searchParam[+].name = "context-quantity"
* rest.resource[=].searchParam[=].type = #quantity
* rest.resource[=].searchParam[=].documentation = "A quantity- or range-valued use context assigned to the code system"
* rest.resource[=].searchParam[+].name = "context-type"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "A type of use context assigned to the code system"
* rest.resource[=].searchParam[+].name = "date"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "The code system publication date"
* rest.resource[=].searchParam[+].name = "description"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "The description of the code system"
* rest.resource[=].searchParam[+].name = "id"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "External identifier for the code system"
* rest.resource[=].searchParam[+].name = "jurisdiction"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Intended jurisdiction for the code system"
* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Computationally friendly name of the code system"
* rest.resource[=].searchParam[+].name = "publisher"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Name of the publisher of the code system"
* rest.resource[=].searchParam[+].name = "reference"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "The current status of the code system"
* rest.resource[=].searchParam[+].name = "title"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "The human-friendly name of the code system"
* rest.resource[=].searchParam[+].name = "url"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "The uri that identifies the code system"
* rest.resource[=].searchParam[+].name = "version"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "The business version of the code system"
* rest.resource[=].operation[0].name = "validate-code"
* rest.resource[=].operation[=].definition = "http://localhost:8080/fhir/OperationDefinition/CodeSystemValueSet-it-validate-code"
* rest.resource[=].operation[+].name = "upload-external-code-system"
* rest.resource[=].operation[=].definition = "http://localhost:8080/fhir/OperationDefinition/CodeSystem-t-upload-external-code-system"
* rest.resource[=].operation[+].name = "subsumes"
* rest.resource[=].operation[=].definition = "http://localhost:8080/fhir/OperationDefinition/CodeSystem-it-subsumes"
* rest.resource[=].operation[+].name = "lookup"
* rest.resource[=].operation[=].definition = "http://localhost:8080/fhir/OperationDefinition/CodeSystem-it-lookup"
* rest.resource[+].type = #ConceptMap
* rest.resource[=].profile = "http://hl7.org/fhir/StructureDefinition/ConceptMap"
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].searchInclude = "*"
* rest.resource[=].searchParam.name = "url"
* rest.resource[=].searchParam.type = #string
* rest.resource[=].searchParam.documentation = "The uri that identifies the concept map"
* rest.resource[=].operation.name = "translate"
* rest.resource[=].operation.definition = "http://localhost:8080/fhir/OperationDefinition/ConceptMap-t-translate"
* rest.resource[+].type = #Medication
* rest.resource[=].profile = "http://hl7.org/fhir/StructureDefinition/Medication"
* rest.resource[=].interaction.code = #read
* rest.resource[=].searchInclude = "*"
* rest.resource[+].type = #OperationDefinition
* rest.resource[=].profile = "http://hl7.org/fhir/StructureDefinition/OperationDefinition"
* rest.resource[=].interaction.code = #read
* rest.resource[=].searchInclude = "*"
* rest.resource[+].type = #StructureDefinition
* rest.resource[=].profile = "http://hl7.org/fhir/StructureDefinition/StructureDefinition"
* rest.resource[=].interaction[0].code = #update
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[+].code = #delete
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].searchInclude = "*"
* rest.resource[=].searchParam[0].name = "code"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[+].name = "context"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "A use context assigned to the structure definition"
* rest.resource[=].searchParam[+].name = "context-quantity"
* rest.resource[=].searchParam[=].type = #quantity
* rest.resource[=].searchParam[=].documentation = "A quantity- or range-valued use context assigned to the structure definition"
* rest.resource[=].searchParam[+].name = "context-type"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "A type of use context assigned to the structure definition"
* rest.resource[=].searchParam[+].name = "date"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "The structure definition publication date"
* rest.resource[=].searchParam[+].name = "description"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "The description of the structure definition"
* rest.resource[=].searchParam[+].name = "expansion"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "External identifier for the structure definition"
* rest.resource[=].searchParam[+].name = "jurisdiction"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Intended jurisdiction for the structure definition"
* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Computationally friendly name of the structure definition"
* rest.resource[=].searchParam[+].name = "publisher"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Name of the publisher of the structure definition"
* rest.resource[=].searchParam[+].name = "reference"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "The current status of the structure definition"
* rest.resource[=].searchParam[+].name = "title"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "The human-friendly name of the structure definition"
* rest.resource[=].searchParam[+].name = "url"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "The uri that identifies the structure definition"
* rest.resource[=].searchParam[+].name = "version"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "The business version of the structure definition"
* rest.resource[+].type = #ValueSet
* rest.resource[=].profile = "http://hl7.org/fhir/StructureDefinition/ValueSet"
* rest.resource[=].interaction[0].code = #update
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].interaction[+].code = #delete
* rest.resource[=].interaction[+].code = #create
* rest.resource[=].searchInclude = "*"
* rest.resource[=].searchParam[0].name = "_id"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "The ID of the resource"
* rest.resource[=].searchParam[+].name = "code"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "This special parameter searches for codes in the value set. See additional notes on the ValueSet resource"
* rest.resource[=].searchParam[+].name = "context"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "A use context assigned to the value set"
* rest.resource[=].searchParam[+].name = "context-quantity"
* rest.resource[=].searchParam[=].type = #quantity
* rest.resource[=].searchParam[=].documentation = "A quantity- or range-valued use context assigned to the value set"
* rest.resource[=].searchParam[+].name = "context-type"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "A type of use context assigned to the value set"
* rest.resource[=].searchParam[+].name = "date"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "The value set publication date"
* rest.resource[=].searchParam[+].name = "description"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "The description of the value set"
* rest.resource[=].searchParam[+].name = "expansion"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Identifies the value set expansion (business identifier)"
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "External identifier for the value set"
* rest.resource[=].searchParam[+].name = "jurisdiction"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Intended jurisdiction for the value set"
* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Computationally friendly name of the value set"
* rest.resource[=].searchParam[+].name = "publisher"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Name of the publisher of the value set"
* rest.resource[=].searchParam[+].name = "reference"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "A code system included or excluded in the value set or an imported value set"
* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "The current status of the value set"
* rest.resource[=].searchParam[+].name = "title"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "The human-friendly name of the value set"
* rest.resource[=].searchParam[+].name = "url"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "The uri that identifies the value set"
* rest.resource[=].searchParam[+].name = "version"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "The business version of the value set"
* rest.resource[=].operation[0].name = "validate-code"
* rest.resource[=].operation[=].definition = "http://localhost:8080/fhir/OperationDefinition/CodeSystemValueSet-it-validate-code"
* rest.resource[=].operation[+].name = "expand"
* rest.resource[=].operation[=].definition = "http://localhost:8080/fhir/OperationDefinition/ValueSet-it-expand"