### The use of pseudonymisation in FHIR for short texts

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

#### The solution:

* Within the FHIR document, a pseudonymised value will be marked by an extension. This extension is applicable to any text field (string).
* The original value of the string will be replaced by the pseudonym. This pseudonym is a JWE encoded string, containing the transitinfo, x and y value.
* At this moment, the extension does not contain any other fields, but these might be added in the solution for long texts.
* Searching on a pseudonymised field will be done using the normal search parameter. The fact that this search parameter contains a pseudonym will be indicated by a urn-style prefix. The pseudonym will be represented by the same JWE encoded string as described in item 2.
* Depending on the need of the implementing server, and the length of the query string, the implementing server will be able to use both GET and POST to execute the search, according to the FHIR specifications. The use of POST might be necessary in case of the combination of several pseudonymised search parameters in one query string.

Example of a json containing a pseudonym, before the application of JWE:

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