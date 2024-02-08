Instance: FHIRHelpers
InstanceOf: CRMIComputableLibrary
Usage: #definition
* insert DefinitionMetadata(FHIRHelpers, Library)
* description = "FHIR Helpers Library"
* type = $library-type#logic-library
* content.id = "ig-loader-FHIRHelpers.cql"

Instance: Common
InstanceOf: CRMIComputableLibrary
Usage: #definition
* insert DefinitionMetadata(Common, Library)
* description = "Common Library"
* type = $library-type#logic-library
* content.id = "ig-loader-Common.cql"

Instance: ActiveTherapyFeatureLogic
InstanceOf: CRMIComputableLibrary
Usage: #definition
* insert DefinitionMetadata(ActiveTherapyFeatureLogic, Library)
* description = "Case Feature Definition Logic for Active Therapy"
* type = $library-type#logic-library
* content.id = "ig-loader-ActiveTherapyFeatureLogic.cql"

Instance: LastCbcPanelReportDateFeatureLogic
InstanceOf: CRMIComputableLibrary
Usage: #definition
* insert DefinitionMetadata(LastCbcPanelReportDateFeatureLogic, Library)
* description = "Case Feature Definition Logic for CBC Panel Report Date"
* type = $library-type#logic-library
* content.id = "ig-loader-LastCbcPanelReportDateFeatureLogic.cql"

Instance: ApplicabilityLogic
InstanceOf: CRMIComputableLibrary
Usage: #definition
* insert DefinitionMetadata(ApplicabilityLogic, Library)
* description = "Applicability Logic Library"
* type = $library-type#logic-library
* content.id = "ig-loader-ApplicabilityLogic.cql"
