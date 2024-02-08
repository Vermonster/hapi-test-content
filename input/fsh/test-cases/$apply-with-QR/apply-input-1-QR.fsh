Instance: ApplyParameters1QR
InstanceOf: Parameters
Usage: #example
* parameter[0]
  * name = "url"
  * valueString = "http://example.org/PlanDefinition/TherapyMonitoringRecommendation"
* parameter[+]
  * name = "data"
  * resource = BundleCase1QR
* parameter[+]
  * name = "subject"
  * valueString = "Patient/Patient1"