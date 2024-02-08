RuleSet: DefinitionMetadata(id, type)
* url = "http://example.org/{type}/{id}"
* name = "{id}"
* version = "0.1.0"
* status = #draft
* experimental = true
* publisher = "Example"

RuleSet: ConformanceMetadata
* ^meta.profile = $cpg-casefeaturedefinition
* ^experimental = true
* ^publisher = "Example"

RuleSet: CaseFeatureExpressions(reference, baseExpression)
* ^extension[$cpg-inferenceExpression].valueExpression.language = #text/cql-identifier
* ^extension[$cpg-inferenceExpression].valueExpression.reference = "http://example.org/Library/{reference}"
* ^extension[$cpg-inferenceExpression].valueExpression.expression = "{baseExpression} Inference"
* ^extension[$cpg-assertionExpression].valueExpression.language = #text/cql-identifier
* ^extension[$cpg-assertionExpression].valueExpression.reference = "http://example.org/Library/{reference}"
* ^extension[$cpg-assertionExpression].valueExpression.expression = "{baseExpression} Assertion"
* ^extension[$cpg-featureExpression].valueExpression.language = #text/cql-identifier
* ^extension[$cpg-featureExpression].valueExpression.reference = "http://example.org/Library/{reference}"
* ^extension[$cpg-featureExpression].valueExpression.expression = "{baseExpression}"

RuleSet: BundleEntryPut(resourceType, id)
* entry[+]
  * fullUrl = "http://example.org/{resourceType}/{id}"
  * request
    * method = #PUT
    * url = "{resourceType}/{id}"
  * resource = {id}

RuleSet: BundleEntry(resourceType, id)
* entry[+]
  * fullUrl = "http://example.org/{resourceType}/{id}"
  * resource = {id}
