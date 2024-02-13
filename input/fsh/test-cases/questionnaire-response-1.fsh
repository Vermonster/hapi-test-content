Instance: QuestionnaireResponse1
InstanceOf: QuestionnaireResponse
Usage: #example
* id = "TherapyMonitoringRecommendation"
* status = #completed
* subject = Reference(Patient/Patient1)
* authored = "2024-01-22T11:45:33+11:00"
* questionnaire = Canonical(TherapyMonitoringRecommendationQuestionnaire)
* item[0]
  * linkId = "1"
  * definition = "http://example.org/StructureDefinition/ActiveTherapyFeature#Observation"
  * text = "ActiveTherapyFeature"
  * item
    * linkId = "1.1"
    * definition = "http://example.org/StructureDefinition/ActiveTherapyFeature#Observation.value[x]"
    * text = "Observation.value[x]"
    * answer.valueCoding = therapy-cs#on-methotrexate // Coding type causes error with extract
  * item[+]
    * linkId = "1.2"
    * definition = "http://example.org/StructureDefinition/ActiveTherapyFeature#Observation.code"
    * text = "Type of observation (code / type)"
    * answer[+].valueCoding = CaseFeatureCodes#on-medication-therapy
  * item[+]
    * linkId = "1.3"
    * definition = "http://example.org/StructureDefinition/ActiveTherapyFeature#Observation.status"
    * text = "The status of the result value."
    * answer[+].valueCoding = $codesystem-observation-status#final
* item[+]
  * linkId = "2"
  * definition = "http://example.org/StructureDefinition/LastCbcPanelReportDateFeature#Observation"
  * text = "LastCbcPanelReportDateFeature"
  * item
    * linkId = "2.1"
    * definition = "http://example.org/StructureDefinition/LastCbcPanelReportDateFeature#Observation.value[x]"
    * text = "Observation.value[x]"
    * answer.valueDateTime = "2024-01-22T11:45:33+11:00"
  * item[+]
    * linkId = "2.2"
    * definition = "http://example.org/StructureDefinition/ActiveTherapyFeature#Observation.code"
    * text = "Type of observation (code / type)"
    * answer[+].valueCoding = CaseFeatureCodes#last-cbc-panel-report-date
  * item[+]
    * linkId = "2.3"
    * definition = "http://example.org/StructureDefinition/ActiveTherapyFeature#Observation.status"
    * text = "The status of the result value."
    * answer[+].valueCoding = $codesystem-observation-status#final