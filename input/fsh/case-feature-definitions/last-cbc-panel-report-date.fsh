Profile: LastCbcPanelReportDateFeature
Parent: Observation
Description: "Case feature definition: patient's last CBC report date"
* insert ConformanceMetadata
* insert CaseFeatureExpressions(LastCbcPanelReportDateFeatureLogic, Last CBC Panel Report Date)
* status = #final
* code = CaseFeatureCodes#last-cbc-panel-report-date
* value[x] only dateTime