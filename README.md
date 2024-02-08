# HAPI Testing

$apply

* CarePlan in place of Bundle of RequestGroups

$extract

* Processing of answer.value data type Coding
     Error:  ca.uhn.fhir.parser.DataFormatException: HAPI-1831: value has type org.hl7.fhir.r4.model.Coding but this is not a valid type for this element
* A new resource is created vs updating current case feature (there is a comment in the source code indicating this is a TODO item)
* Extracted resources are missing properties like status, code, etc (r/t missing questionnaire items)
* I was unable to enable this with $apply + data context with QR and instead called $extract separately

$questionnaire (with $apply)

* Does not currently include all items from differential and should use snapshot as fallback - for example, if element in differential does not have property "type", it will not appear on the questionnaire
* Should use hidden extension on non-value case feature items

Questions:
* Should extract context be added to SD generated questionnaires?
* How should we handle snapshots?
* How to enable $extract with $apply operation