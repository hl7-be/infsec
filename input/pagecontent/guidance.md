### The use of pseudonymisation in FHIR

Pseudonymisation is the activity of replacing meaningful data with a synonym that hides the original data, but when needed this synonym can be replaced by the original data. The aim is to hide data from readers that do not need it, due to legal (GDPR) or other reasons, but still allow the links between different data elements for those who need it. Additional encryption techniques may be used to restrict the access to the information to those who need it.

Detailed explanation about the pseudonymisation techniques used in this solution can be found here. 
* [https://www.ehealth.fgov.be/ehealthplatform/fr/service-codage-anonymisation-et-ttp](https://www.ehealth.fgov.be/ehealthplatform/fr/service-codage-anonymisation-et-ttp)
* [https://www.ehealth.fgov.be/ehealthplatform/nl/service-codering-anonimisering-en-ttp](https://www.ehealth.fgov.be/ehealthplatform/nl/service-codering-anonimisering-en-ttp)


This solution only applies for short texts, i.e. text that fall within the length of the EC key. The solution for longer texts will be described in a subsequent document.

#### Prerequisites:

* Pseudonymised fields must be recognized as such.
* Pseudonymisation of fields should have no impact on the validation of the document, as there is no semantic difference between a pseudonymised and a non-pseudonymised document.
* Pseudonymisation should interfere as little as possible with the standard FHIR APIs for searching information, without endangering the essence of pseudonymisation.
* Pseudonymisation should be as coherent as possible, so that the developer can (re)use the same techniques whenever he encounters pseudonymisation.

#### The solution for short texts, less than 32 bytes:

* Within the FHIR document, a pseudonymised value will be marked by an extension. This extension is applicable to any text field (string).
* The original value of the string will be replaced by the pseudonym. This pseudonym can take following forms:
   - {base64 json string, containing x, y, and transitInfo}
   - urn:be:fgov:pseudo:v1:{base64 json string, containing x, y, and transitInfo}

* The extension will have following fields:
   - marker: true (mandatory), indicates that this field is a pseudonym.
   - format: direct|encrypted (optional) default is direct
      + direct indicates that the field is an immediate result of the pseudonymization service
      + encrypted see below for texts larger than 32 bytes. 
   - version: no version defaults to version 1
* Searching on a pseudonymised field will be done using the normal search parameter. The fact that this search parameter contains a pseudonym will be indicated by a urn-style prefix. The pseudonym will be represented by the same way as described in item 2. "urn:be:fgov:pseudo-encrypted:" fields cannot be used in a search, if the search parameters are not available as a resource.
* Depending on the need of the implementing server, and the length of the query string, the implementing server will be able to use both GET and POST to execute the search, according to the FHIR specifications. The use of POST might be necessary in case of the combination of several pseudonymised search parameters in one query string.

Example of a json containing a pseudonym, before the application of the base64 encoding:

```
{
   "x": "AUHWy0LqOxFe6T5dL6x97ygKzukuS+Q6jvqGwxaahWR7XNGh/tdUKNj82Ozhl/gOsoqrGtlUAI/XbZqKKmdZ5zuH",
   "y": "AbFTfZ8vaitgHSmOQr7DTMjdgHXVe9J+BJqtBurDxeICNJA4ho/+scwVKIiWgjA1v0Xx2pb8fGPH8Kp0tjWyEYh1",
   "transitInfo": "eyJhbGciOiJkaXIiLCJlbmMiOiJBMjU2R0NNIiwia2lkIjoiNzQ5YjhlZjUtZjQwMS00NDc2LWIyNDMtYzFiZjIxY2MzZWE4IiwiYXVkIjoiaHR0cHM6Ly9hcGktaW50cmMuZWhlYWx0aC5mZ292LmJlL3BzZXVkby92MS9kb21haW5zL2RvbWFpbmFfdjEifQ..thFZVzwXff8HuxBY.fI8p0EdY1HNuzBP7Vb8AYldoCb1dgkLc5HunHkfTmkJc4H1dzgQ8LBbnBaIPmWFI2DgoPCpFNGqW8ucMYF4dC12l-IGDZv30SGv4RI4qppq_uiR8ik1N_psJSEptDIWsruBicXnNwYy22CHvaIy8-HGq2z6wlrNVgmZEsXqusCEeTIB0Udik.arPBjcRK8geT6aSElM7D0g"
}
```

The resulting value will put in the original field.

If you want to use the pseudonym for searching, you take the resulting value, and you prefix it with:

```
urn:be:fgov:ehealth:pseudo:v1:
```
The resulting value will look like this:
```
urn:be:fgov:ehealth:pseudo:v1:eyJhbGciOiJkaXIiLCJlbmMiOiJBMjU2R0NNIiwia2lkIjoiMjAyMi0xMi... 

```

#### The solution for short texts, larger than 32 bytes:

* Within the FHIR document, a pseudonymised value will be marked by an extension. This extension is applicable to any text field (string).
* The original value of the string will be replaced by the pseudonym. This pseudonym can take following forms:
   - urn:be:fgov:pseudo-encrypted:v1:{KID}:{JWE}
* The extension will have following fields:
   - marker: true (mandatory), indicates that this field is a pseudonym.
   - format: direct|encrypted (optional), default is direct
      +  direct see above for texts less than 32 bytes
      + encrypted indicates that the field is encrypted with a key you can find in the .meta section of the resource, in the extension with url "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-key-pseudonymization". 
   - version: no version defaults to version 1
* In each resource of the document, you will add an extension with url "https://www.ehealth.fgov.be/standards/fhir/infsec/StructureDefinition/be-ext-key-pseudonymization"
   - This extension contains one extension containing a string value, with url "key". This is the encryption key that can be used to blockcipher the long text fields. The key is 32 bytes or less, so direct pseudonymization applies.
   - This .valueString field is pseudonymized in the direct way, using a pseudonymize extension for short texts. 

### Ensuring computable integrity clarifying the use of meta.profile and semantic integrity by using the BeExtIntendedProfile extension

#### Prerequisites:

* There is an absolute need for computable integrity of the stored resource/document. Changes to a stored document by someone who is not a practitioner, be it a system or a technician, are not possible, because this would break the computable integrity. The breaking of the computable integrity has serious legal and business implications.
* There is an absolute need for semantic integrity. Research revealed that semantic integrity cannot be maintained without making the profile and profile version an integral part of the resource/document. The breaking of semantic integrity can have serious medical, and thus legal consequences.


#### The solution:

These two requirements lead to the following consequences:

* The need for computable integrity entails that all resources/documents will be delivered as they were stored. A vault will support all possible versions of a profile, as they can be applied to a stored resource/document for delivery.
* For economic reasons, a vault will accept a limited number of profiles for storage. Ideally, they will only support one version of the profile, but to support a smooth transition between profile versions, they can also accept the previous version for a limited time. Resources with older versions of profiles will remain in storage as they are.
* The need for semantic integrity entails that the profile and its version that express the intent of the sender shall be an integral part of the resource/document. Current FHIR best practices (02/10/2023) discourage the use of profiles and versions of profiles in the meta.profile section of the resource, certainly in a mandatory way. Therefore the vaults introduce a Belgian extension that will contain the (only 1)  profile and version as intended by the sender. A resource/document which does not contain the extension will not be accepted by the vault.
* The vault will give priority to the profile and version stored in the extension for the validation before the storage in the vault. With regard to other profiles present in the meta.profile storage, they will be handled according to the normal FHIR validation rules, and if the resource does not comply with one of them, the resource will also be invalid. Normal validation rules imply that the versions of the profile that are supported are indicated in the servers capability statement to avoid all ambiguity.
* Any information in the meta section of the resource is a part of the computable integrity of the resource. As a Provenance resource is not an integral part of the resource it is about, it is not sufficient to prove the computable integrity of the resource. 

To conclude, it is clear that systems that do not have the absolute need for computable integrity and semantic integrity, can adopt other rules. However, these other choices will never imply that they will be allowed to store their resources/documents in a vault, without complying with the rules above.

#### Additional comments

* If new extensions are added to a profile, and searches are executed against the new extension, the resource will be regarded as such, so instances which do not contain the extra information will not be returned, unless explicitly requested in the query. This means that stored resources will not be modified to contain default values.

* Upon the storage of a resource in the vault, a means will be made available check the computational integrity of the resource.

#### References

Following sources were used in the draughting of these rules:

Discussion on chat.fhir.org about how to define the integrity of a message and the use of meta.profile:
https://chat.fhir.org/#narrow/stream/179247-Security-and-Privacy/topic/Progress.20on.20digital.20signatures.20and.20integrity

Discussion on chat.fhir.org about how to manage different versions of profiles: https://chat.fhir.org/#narrow/stream/179166-implementers/topic/Capturing.20multiple.20business.20versions.20supported

Discussion on chat.fhir.org about the meaning of versionless profile references:
https://chat.fhir.org/#narrow/stream/179166-implementers/topic/Profile.20versions.20in.20a.20resource

Definition of the Canonical datatype, used to indicate the profile and its version:
https://www.hl7.org/fhir/r4/datatypes.html#canonical

Description of the use of Canonicals:
https://www.hl7.org/fhir/r4/references.html#canonical

Description of versioning in the R4 standard:
https://www.hl7.org/fhir/R4/versioning.html
