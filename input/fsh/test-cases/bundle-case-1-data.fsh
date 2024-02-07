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

Instance: DiagnosticReport1
InstanceOf: DiagnosticReport
Usage: #example
* meta.tag = http://example.org/fhir/CodeSystem/workflow-codes#01 "Needs Review"
* identifier.system = "http://acme.com/lab/reports"
* identifier.value = "5234342"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/v2-0074#HM
* code.coding[+] = http://loinc.org#58410-2 "Complete blood count (hemogram) panel - Blood by Automated count"
* code.coding[+] = $LOINC#58410-2 "CBC panel - Blood by Automated count"
* code.text = "Complete Blood Count"
* subject = Reference(Patient1)
* encounter = Reference(Encounter8)
* effectiveDateTime = "2023-01-22T11:45:33+11:00"
* issued = "2023-01-22T11:45:33+11:00"
* performer = Reference(OrganizationShared)
* result[+] = Reference(r8-1)
* result[+] = Reference(r8-2)

Instance: r1-1
InstanceOf: Observation
Usage: #example
* status = #final
* code = http://loinc.org#718-7 "Hemoglobin [Mass/volume] in Blood"
* code.text = "Haemoglobin"
* subject = Reference(Patient1)
* performer = Reference(OrganizationShared)
* valueQuantity = 176 'g/L' "g/L"
* referenceRange.low = 135 'g/L' "g/L"
* referenceRange.high = 180 'g/L' "g/L"

Instance: r1-2
InstanceOf: Observation
Usage: #example
* status = #final
* code = http://loinc.org#789-8 "Erythrocytes [#/volume] in Blood by Automated count"
* code.text = "Red Cell Count"
* subject = Reference(Patient1)
* performer = Reference(OrganizationShared)
* valueQuantity = 5.9 '10*12/L' "x10*12/L"
* referenceRange.low = 4.2 '10*12/L' "x10*12/L"
* referenceRange.high = 6 '10*12/L' "x10*12/L"

Instance: BundleCase1
InstanceOf: Bundle
Usage: #example
* type = #collection
* meta.tag = #test
* insert BundleEntry(Patient, Patient1)
* insert BundleEntry(Practitioner, PractitionerShared)
* insert BundleEntry(Organization, OrganizationShared)
* insert BundleEntry(Encounter, Encounter1)
* insert BundleEntry(Observation, ActiveTherapyFeature1)
// * insert BundleEntry(Observation, DiagnosticReport8)
// * insert BundleEntry(Observation, r1-1)
// * insert BundleEntry(Observation, r1-2)