Instance: HAPIBundle
InstanceOf: Bundle
* type = #transaction
* insert BundleEntryPut(PlanDefinition, TherapyMonitoringRecommendation)
* insert BundleEntryPut(ActivityDefinition, OrderCBCActivity)
* insert BundleEntryPut(Library, ActiveTherapyFeatureLogic)
* insert BundleEntryPut(Library, LastCbcPanelReportDateFeatureLogic)
* insert BundleEntryPut(Library, FHIRHelpers)
* insert BundleEntryPut(Library, Common)
* insert BundleEntryPut(Library, ApplicabilityLogic)
* insert BundleEntryPut(StructureDefinition, ActiveTherapyFeature)
* insert BundleEntryPut(StructureDefinition, LastCbcPanelReportDateFeature)
* insert BundleEntryPut(CodeSystem, CaseFeatureCodes)
* insert BundleEntryPut(CodeSystem, TherapyCS)
* insert BundleEntryPut(ValueSet, TherapyVS)
* insert BundleEntryPut(Questionnaire, TherapyMonitoringRecommendationQuestionnaire)