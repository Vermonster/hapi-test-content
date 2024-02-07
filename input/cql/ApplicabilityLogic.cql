library ApplicabilityLogic version '0.1.0'

using FHIR version '4.0.1'

include FHIRHelpers version '0.1.0'
include ActiveTherapyFeatureLogic version '0.1.0' called ActiveTherapyFeature
include LastCbcPanelReportDateFeatureLogic version '0.1.0' called LastCbcPanelReportDateFeatureLogic

codesystem "Medication Codes": 'http://example.org/CodeSystem/therapy-cs'
code "On Methotrexate": 'on-methotrexate' from "Medication Codes"
code "On Sulfasalazine": 'on-sulfasalazine' from "Medication Codes"

context Patient

define "On active therapy":
  if (exists(ActiveTherapyFeature."On Therapy")) then
    ActiveTherapyFeature."On Therapy".value as CodeableConcept = "On Methotrexate" or ActiveTherapyFeature."On Therapy".value as CodeableConcept = "On Sulfasalazine"
  else
    false

define "Condition":
  First([Condition] M
    sort by recordedDate
  )

define "Timing of Service":
  "Condition".recordedDate.value

/**
 * @description
 * This is true if: there are no results, or the results are older than 6 months
 */
define "Missing last CBC result":
  if exists((LastCbcPanelReportDateFeatureLogic."Last CBC Panel Report Date".value as dateTime).value) then
    LastCbcPanelReportDateFeatureLogic."Last CBC Panel Report Date".value as dateTime before (Today() - 6 months)
  else
    true

define "DEBUG 1 (value)":
  (LastCbcPanelReportDateFeatureLogic."Last CBC Panel Report Date".value)

define "DEBUG 2 (value.value)":
  (LastCbcPanelReportDateFeatureLogic."Last CBC Panel Report Date".value).value

define "DEBUG 3 (exists)":
  exists(LastCbcPanelReportDateFeatureLogic."Last CBC Panel Report Date")

define "DEBUG 4 (exists value as dateTime)":
  exists(LastCbcPanelReportDateFeatureLogic."Last CBC Panel Report Date".value as dateTime)

define "DEBUG 5 (exists value as dateTime).value":
  exists((LastCbcPanelReportDateFeatureLogic."Last CBC Panel Report Date".value as dateTime).value)

/**
 * @description
 * Use case feature expressions to build out applicability
 */
define "Should order CBC if on Sulfasalazine or Methotrexate and missing test":
  if ("Missing last CBC result" and "On active therapy") then
    true
  else
    false
