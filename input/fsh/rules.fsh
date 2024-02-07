RuleSet: DefinitionMetadata(id, type)
* extension[knowledgeCapability].valueCode = #computable
* url = "http://example.org/{type}/{id}"
* name = "{id}"
* version = "0.1.0"
* status = #draft
* experimental = true
* publisher = "Acme Co."

RuleSet: ConformanceMetadata
* ^meta.profile = $cpg-casefeaturedefinition
* ^extension[$cpg-knowledgeCapability][+].valueCode = #shareable
* ^extension[$cpg-knowledgeCapability][+].valueCode = #computable
* ^extension[$cpg-knowledgeCapability][+].valueCode = #publishable
* ^extension[$cpg-knowledgeRepresentationLevel].valueCode = #structured
* ^experimental = true
* ^publisher = "Acme Co."

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

RuleSet: QuestionnaireMetaData(id)
* url = "http://questionnaire-processor/Questionnaire/{id}"
* status = #draft

RuleSet: QuestionnaireItem(id, path)
* linkId = "{id}#{path}"
* definition = "http://example.org/StructureDefinition/{id}#{path}"

RuleSet: BundleEntry(resourceType, id)
* entry[+]
  * fullUrl = "http://example.org/{resourceType}/{id}"
  * resource = {id}

RuleSet: QuestionnaireBundleEntry(id)
* entry[+]
  * fullUrl = "http://questionnaire-processor/Questionnaire/{id}"
  * resource = {id}

RuleSet: QuestionnaireResponseMetaData(questionnaireId)
* questionnaire = Canonical({questionnaireId})
* status = #completed

RuleSet: HiddenExtension
* extension[+]
  * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
  * valueBoolean = true

// Dates for test cases

RuleSet: InitialDate1
* initial[+].valueDateTime = "2023-12-04"
RuleSet: InitialDate2
* initial[+].valueDateTime = "2023-06-21"
RuleSet: InitialDateCurrent // Use in place of current date from inferred observation
* initial[+].valueDateTime = "2022-12-13"

RuleSet: EffectiveDateTime1
* effectiveDateTime = "2021-01-01"
RuleSet: EffectiveDateTime2
* effectiveDateTime = "2023-06-21"
RuleSet: EffectiveDateCurrent // Use in place of current date from inferred observation
* effectiveDateTime = "2023-12-13"

RuleSet: ValueDateTime1
* valueDateTime = "2023-12-04"
RuleSet: ValueDateTime2
* valueDateTime = "2023-06-21"

RuleSet: AnswerDate1
* answer[+].valueDateTime = "2023-12-04"
RuleSet: AnswerDate2
* answer[+].valueDateTime = "2023-06-21"