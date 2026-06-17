# Belgian FHIR Information Security Implementation Guide

This implementation guide describes how pseudonymisation mechanisms can be represented and exchanged using FHIR in the Belgian eHealth context.

It provides a set of reusable FHIR artefacts and implementation guidance to support interoperable handling of pseudonymised data while preserving the semantic integrity of FHIR resources.

## Scope

The specifications in this implementation guide aim to:

* identify pseudonymised elements within FHIR resources;
* support both direct and encrypted pseudonymisation techniques;
* preserve interoperability between systems exchanging pseudonymised information;
* enable validation of pseudonymised resources without affecting their semantic meaning;

## Content

This implementation guide contains:

* Extension definitions used to represent pseudonymisation-related information;
* Terminology artefacts supporting the pseudonymisation mechanisms;
* Example instances illustrating the different approaches;
* Detailed implementation guidance explaining how the specifications should be used.

For practical implementation details, readers are encouraged to consult the guidance section of this publication.

See the [Guidance](guidance.html) pages for detailed explanations and examples.


## Intellectual Property Considerations

While this implementation guide and the underlying FHIR are licensed as public domain, this guide includes examples making use of terminologies such as LOINC, SNOMED CT and others which have more restrictive licensing requirements. Implementers should make themselves familiar with licensing and any other constraints of terminologies, questionnaires, and other components used as part of their implementation process. In some cases, licensing requirements may limit the systems that data captured using certain questionnaires may be shared with.

## Disclaimer

The specification herewith documented is the first published version of the Belgian profiling initiative. Every effort has been made to remain within the FHIR standard and to be enabling in nature above all else. It is expected there will be further clarifications and guidelines in the future. Should an implementation encounter ambiguities due to this guide, your feedback is most welcome on support@be-ehealth-standards.atlassian.net.
