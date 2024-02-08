Instance: Patient1
InstanceOf: Patient
Usage: #example
* name.family = "Patient1"

Instance: Encounter1
InstanceOf: Encounter
Usage: #example
* status = #in-progress
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* subject = Reference(Patient1)
* participant
  * type = $ParticipationType#PPRF "primary performer"
  * individual = Reference(PractitionerShared)
* serviceProvider = Reference(OrganizationShared)

Instance: ActiveTherapyFeature1
InstanceOf: ActiveTherapyFeature
Usage: #example
* status = #final
* code = CaseFeatureCodes#on-medication-therapy
* subject = Reference(Patient1)
* effectiveDateTime = "2023-01-09T08:05:00+11:00"
* valueCodeableConcept = TherapyCS#on-methotrexate

Instance: BundleCase1
InstanceOf: Bundle
Usage: #example
* type = #collection
// * meta.tag = #test
* insert BundleEntry(Patient, Patient1)
* insert BundleEntry(Practitioner, PractitionerShared)
* insert BundleEntry(Organization, OrganizationShared)
* insert BundleEntry(Encounter, Encounter1)
* insert BundleEntry(Observation, ActiveTherapyFeature1)