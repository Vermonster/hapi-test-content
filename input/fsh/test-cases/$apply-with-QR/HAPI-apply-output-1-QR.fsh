Instance: TherapyMonitoringRecommendation1QR
InstanceOf: CarePlan
Usage: #example
* contained[0] = Inline-Instance-for-TherapyMonitoringRecommendation-1-QR
* contained[+] = Inline-Instance-for-TherapyMonitoringRecommendation-2-QR
* contained[+] = Inline-Instance-for-TherapyMonitoringRecommendation-3-QR
* contained[+] = OrderCBCActivity
* instantiatesCanonical = "http://example.org/PlanDefinition/TherapyMonitoringRecommendation|0.1.0"
* status = #draft
* intent = #proposal
* subject = Reference(Patient/Patient1)
* supportingInfo = Reference(QuestionnaireResponse/TherapyMonitoringRecommendation3)
* activity.reference = Reference(RequestGroup/TherapyMonitoringRecommendation2)

Instance: Inline-Instance-for-TherapyMonitoringRecommendation-1-QR
InstanceOf: RequestGroup
Usage: #inline
* id = "TherapyMonitoringRecommendation2"
* instantiatesCanonical = "http://example.org/PlanDefinition/TherapyMonitoringRecommendation|0.1.0"
* status = #draft
* intent = #proposal
* subject = Reference(Patient/Patient1)
* action
  * extension[0]
    * url = "http://hl7.org/fhir/StructureDefinition/cqf-qualityOfEvidence"
    * valueCodeableConcept = $evidence-quality#high
  * extension[+]
    * url = "http://hl7.org/fhir/StructureDefinition/cqf-strengthOfRecommendation"
    * valueCodeableConcept = $recommendation-strength#strong
  * extension[+]
    * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-directionOfRecommendation"
    * valueCodeableConcept = $cpg-recommendation-direction-cs#for
  * title = "Order monitoring tests for antirheumatic drug therapy (Therapy)."
  * description = "Order monitoring tests for antirheumatic drug therapy (Therapy)."
  * code = $cpg-common-process#diagnostic-testing
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql-identifier
      * expression = "Should order CBC if on Sulfasalazine or Methotrexate and missing test"
  * resource = Reference(OrderCBCActivity)

Instance: Inline-Instance-for-TherapyMonitoringRecommendation-2-QR
InstanceOf: QuestionnaireResponse
Usage: #inline
* id = "TherapyMonitoringRecommendation3"
* questionnaire = "http://example.org/Questionnaire/TherapyMonitoringRecommendationQuestionnaire"
* status = #completed
* subject = Reference(Patient/Patient1)
* authored = "2024-01-22T11:45:33+11:00"
* item[0]
  * extension
    * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
    * valueExpression
      * language = #text/cql-identifier
      * expression = "On Therapy"
      * reference = "http://example.org/Library/ActiveTherapyFeatureLogic"
  * linkId = "1"
  * definition = "http://example.org/StructureDefinition/ActiveTherapyFeature#Observation"
  * text = "ActiveTherapyFeature"
  * item
    * linkId = "1.1"
    * definition = "http://example.org/StructureDefinition/ActiveTherapyFeature#Observation.value[x]"
    * text = "Observation.value[x]"
    * answer.valueCoding = $therapy-cs#on-methotrexate
* item[+]
  * linkId = "2"
  * definition = "http://example.org/StructureDefinition/LastCbcPanelReportDateFeature#Observation"
  * text = "LastCbcPanelReportDateFeature"
  * item
    * linkId = "2.1"
    * definition = "http://example.org/StructureDefinition/LastCbcPanelReportDateFeature#Observation.value[x]"
    * text = "Observation.value[x]"
    * answer.valueDateTime = "2024-01-22T11:45:33+11:00"

Instance: Inline-Instance-for-TherapyMonitoringRecommendation-3-QR
InstanceOf: Questionnaire
Usage: #inline
* id = "TherapyMonitoringRecommendation4"
* status = #draft // Status was missing
* item[0]
  * linkId = "1"
  * definition = "http://example.org/StructureDefinition/ActiveTherapyFeature#Observation"
  * text = "ActiveTherapyFeature"
  * type = #group
  * item
    * linkId = "1.1"
    * definition = "http://example.org/StructureDefinition/ActiveTherapyFeature#Observation.value[x]"
    * text = "Observation.value[x]"
    * type = #choice
    * required = false
    * answerOption[0].valueCoding = $therapy-cs#on-methotrexate "On Methotrexate"
    * answerOption[+].valueCoding = $therapy-cs#on-sulfasalazine "On Sulfasalazine"
    * initial.valueCoding = $therapy-cs#on-methotrexate
* item[+]
  * linkId = "2"
  * definition = "http://example.org/StructureDefinition/LastCbcPanelReportDateFeature#Observation"
  * text = "LastCbcPanelReportDateFeature"
  * type = #group
  * item
    * linkId = "2.1"
    * definition = "http://example.org/StructureDefinition/LastCbcPanelReportDateFeature#Observation.value[x]"
    * text = "Observation.value[x]"
    * type = #dateTime
    * required = false

Instance: OrderCBCActivityQR
InstanceOf: ServiceRequest
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-servicerequest"
* instantiatesCanonical = "http://example.org/ActivityDefinition/OrderCBCActivity"
* status = #draft
* intent = #proposal
* doNotPerform = false
* code = $loinc#58410-2 "CBC panel - Blood by Automated count"
* subject = Reference(Patient/Patient1)