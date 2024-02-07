Instance: QuestionnaireResponse1
InstanceOf: QuestionnaireResponse
Usage: #inline
* id = "TherapyMonitoringRecommendation"
* status = #completed
* subject = Reference(Patient/Patient1)
* authored = "2024-01-22T11:45:33+11:00"
* questionnaire = Canonical(Inline-Instance-for-TherapyMonitoringRecommendation-2)
* item[0]
  * extension[+]
    * valueExpression
      * language = #text/cql-identifier
      * expression = "On Therapy"
      * reference = "http://example.org/Library/ActiveTherapyFeatureLogic"
    * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
  * linkId = "1"
  * definition = "http://example.org/StructureDefinition/ActiveTherapyFeature#Observation"
  * text = "ActiveTherapyFeature"
  * item
    * linkId = "1.1"
    * definition = "http://example.org/StructureDefinition/ActiveTherapyFeature#Observation.value[x]"
    * text = "Observation.value[x]"
    * answer.valueCoding = therapy-cs#on-methotrexate
* item[+]
  * linkId = "2"
  * definition = "http://example.org/StructureDefinition/LastCbcPanelReportDateFeature#Observation"
  * text = "LastCbcPanelReportDateFeature"
  * item
    * linkId = "2.1"
    * definition = "http://example.org/StructureDefinition/LastCbcPanelReportDateFeature#Observation.value[x]"
    * text = "Observation.value[x]"
    * answer.valueDateTime = "2023-01-22T11:45:33+11:00"