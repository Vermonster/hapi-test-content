Instance: TherapyMonitoringRecommendation1
InstanceOf: CarePlan
Usage: #example
* contained[0] = Inline-Instance-for-TherapyMonitoringRecommendation-1
* contained[+] = Inline-Instance-for-TherapyMonitoringRecommendation-2
* instantiatesCanonical = "http://example.org/PlanDefinition/TherapyMonitoringRecommendation|0.1.0"
* status = #draft
* intent = #proposal
* subject = Reference(Patient/Patient1)
* activity.reference = Reference(RequestGroup/TherapyMonitoringRecommendation1)

Instance: Inline-Instance-for-TherapyMonitoringRecommendation-1
InstanceOf: RequestGroup
Usage: #inline
* id = "TherapyMonitoringRecommendation"
* instantiatesCanonical = "http://example.org/PlanDefinition/TherapyMonitoringRecommendation|0.1.0"
* status = #draft
* intent = #proposal
* subject = Reference(Patient/Patient1)

Instance: Inline-Instance-for-TherapyMonitoringRecommendation-2
InstanceOf: Questionnaire
Usage: #example
* id = "TherapyMonitoringRecommendation"
* status = #draft
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
    * answerOption[0].valueCoding = therapy-cs#on-methotrexate "On Methotrexate"
    * answerOption[+].valueCoding = therapy-cs#on-sulfasalazine "On Sulfasalazine"
    * initial.valueCoding = therapy-cs#on-methotrexate
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