Profile: ActiveTherapyFeature
Parent: Observation
Description: "Case feature definition: patient has active methotrexate treatment"
* insert ConformanceMetadata
* insert CaseFeatureExpressions(ActiveTherapyFeatureLogic, On Therapy)
* status = #final
* code = CaseFeatureCodes#on-medication-therapy
* value[x] only CodeableConcept
* value[x] from TherapyVS