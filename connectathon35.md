# Connectathon 35 CPG Example

## Setup content development environment and IG build

Follow README instructions for tooling and IG build instructions

## Content for Connectathon 35

Content can be found at input/fsh

## Test Cases

Connecathon test cases are found at input/fsh/test-cases/pd-questionnaire-extract-apply-examples

The postman collection can be imported to run these test cases with $questionnaire, $assemble, and $apply. In order for the requests to work, postman environment variables should be set as follows.

| Variable | Value | Description |
| --- | --- | --- |
| cpgServer | http://localhost:9001 | Reson Framework CPG engine |
| contentEndpointType | hl7-fhir-file | Type of endpoint for content |
| contentEndpointAddress | {your local content path} | Local path to CPG Starter content |
| contentArtifactRoute | http://example.org | CPG Starter resources route pattern |
| baseResourceEndpointType | hl7-fhir-rest | Type of endpoint for FHIR base resources |
| baseResourceEndpointAddress | http://hapi.fhir.org/baseR4 | Address used to resolve base resources |
| baseResourceArtifactRoute | http://hl7.org/fhir | Base resource route pattern |
| terminologyEndpointType | hl7-fhir-file | Type of endpoint for terminology |
| terminologyEndpointAddress | {your local content path} | Local path to CPG Starter content which will also be used for teminology |

The Reason Framework $questionnaire operation uses configurable endpoints. See [CRMI  Artifact Endpoint Configurable](https://build.fhir.org/ig/HL7/crmi-ig/StructureDefinition-crmi-artifact-endpoint-configurable-operation.html) for more information.

## Running the CPG Engine

The CPG engine is available at https://github.com/reason-healthcare/reason-framework. Follow the readme there to run locally.
