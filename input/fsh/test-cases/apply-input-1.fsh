Instance: ApplyParameters1
InstanceOf: Parameters
Usage: #example
* parameter[0]
  * name = "url"
  * valueString = "http://example.org/PlanDefinition/TherapyMonitoringRecommendation"
* parameter[+]
  * name = "data"
  * resource = BundleCase1
* parameter[+]
  * name = "subject"
  * valueString = "Patient/Patient1"