Instance: QuestionnaireResponse1
InstanceOf: QuestionnaireResponse
Usage: #inline
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
  * linkId = "2"
  * definition = "http://example.org/StructureDefinition/LastCbcPanelReportDateFeature#Observation"
  * text = "LastCbcPanelReportDateFeature"
  * item
    * linkId = "2.1"
    * definition = "http://example.org/StructureDefinition/LastCbcPanelReportDateFeature#Observation.value[x]"
    * text = "Observation.value[x]"
    * answer.valueDateTime = "2024-01-22T11:45:33+11:00"