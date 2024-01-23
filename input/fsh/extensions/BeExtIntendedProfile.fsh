Extension: BeExtIntendedProfile
Id: be-ext-intended-profile
Title: "Intended profile"
Description: "Using this extension, the sender indicates that he intends this resource to comply with the profile and version mentioned here. This profile will be used to determine the semantic integrity of the profile."
* ^context.type = #element
* ^context.expression = "DomainResource"
* . ^short = "Intended profile"
* value[x] only canonical
* valueCanonical 1..1 MS
* obeys BeInvUrlAndVersionCanonical