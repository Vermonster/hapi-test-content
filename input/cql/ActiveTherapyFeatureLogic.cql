library ActiveTherapyFeatureLogic version '0.1.0'

using FHIR version '4.0.1'

include FHIRHelpers version '0.1.0'
include Common version '0.1.0'

codesystem "CaseFeatureCodes": 'http://example.org/CodeSystem/CaseFeatureCodes'
code "On Therapy Feature": 'on-medication-therapy' from "CaseFeatureCodes"

valueset "Therapy Medications": 'http://example.org/ValueSet/therapy-vs'

context Patient

define "Active Therapy Orders":
  [MedicationRequest: "Therapy Medications"] TherapyMedication
    where TherapyMedication.status in { 'active' }

define "On Therapy Asserted":
  Common.MostRecent([Observation: "On Therapy Feature"])

/**
 * @description
 * Feature is asserted followed by inferred
 */
define "On Therapy":
  // Coalesce(
    "On Therapy Asserted"
  //   "On Therapy Inferred"
  // )
