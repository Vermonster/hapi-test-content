// Results after answer.valueCoding is commented out

Instance: extract-TherapyMonitoringRecommendation
InstanceOf: Bundle
Usage: #example
* type = #transaction
* entry[0]
  // * resource = extract-TherapyMonitoringRecommendation-1
  * request
    * method = #PUT
    * url = "Observation/extract-TherapyMonitoringRecommendation-1"
* entry[+]
  // * resource = extract-TherapyMonitoringRecommendation-2
  * request
    * method = #PUT
    * url = "Observation/extract-TherapyMonitoringRecommendation-2"

// Sushi errors because of missing status and code
// Instance: extract-TherapyMonitoringRecommendation-1
// InstanceOf: Observation
// Usage: #inline
// * meta.profile = "http://example.org/StructureDefinition/ActiveTherapyFeature"
// * subject = Reference(Patient/Patient1)
// * effectiveDateTime = "2024-01-22T00:45:33+00:00"
// * issued = "2024-01-22T00:45:33.000+00:00"

// Instance: extract-TherapyMonitoringRecommendation-2
// InstanceOf: Observation
// Usage: #inline
// * meta.profile = "http://example.org/StructureDefinition/LastCbcPanelReportDateFeature"
// * subject = Reference(Patient/Patient1)
// * effectiveDateTime = "2024-01-22T00:45:33+00:00"
// * issued = "2024-01-22T00:45:33.000+00:00"
// * valueDateTime = "2024-01-22T11:45:33+11:00"