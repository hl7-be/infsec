This implementation guide describes how pseudonymisation mechanisms can be represented and exchanged using FHIR in the Belgian eHealth context.

It provides a set of reusable FHIR artefacts and implementation guidance to support interoperable handling of pseudonymised data while preserving the semantic integrity of FHIR resources.

### Scope

The specifications in this implementation guide aim to:

* identify pseudonymised elements within FHIR resources;
* support both direct and encrypted pseudonymisation techniques;
* preserve interoperability between systems exchanging pseudonymised information;
* enable validation of pseudonymised resources without affecting their semantic meaning;

### Content

This implementation guide contains:

* Extension definitions used to represent pseudonymisation-related information;
* Terminology artefacts supporting the pseudonymisation mechanisms;
* Example instances illustrating the different approaches;
* Detailed implementation guidance explaining how the specifications should be used.

For practical implementation details, readers are encouraged to consult the guidance section of this publication.

See the [Guidance](guidance.html) pages for detailed explanations and examples.

### Dependencies
This IG Contains the following dependencies on other IGs.

{% include dependency-table.xhtml %}

### Cross Version Analysis

{% capture cross-version-analysis %}{% include cross-version-analysis.xhtml %}{% endcapture %}{{ cross-version-analysis | remove: '<p>' | remove: '</p>'}}

### Global Profiles

{% include globals-table.xhtml %}

### Intellectual Property Considerations

{% include ip-statements.xhtml %}