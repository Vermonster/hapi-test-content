Instance: BundleCase1QR
InstanceOf: Bundle
Usage: #example
* type = #collection
// * meta.tag = #test
* insert BundleEntry(Patient, Patient1)
* insert BundleEntry(Practitioner, PractitionerShared)
* insert BundleEntry(Organization, OrganizationShared)
* insert BundleEntry(Encounter, Encounter1)
* insert BundleEntry(Observation, ActiveTherapyFeature1)
* insert BundleEntry(QuestionnaireResponse, QuestionnaireResponse1)