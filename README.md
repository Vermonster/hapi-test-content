# CPG Example

## Setup content development environment

```
./bin/setup
```

Then install the following plugins in VS Code:

* FHIR Shorthand by MITRE-Health
* Clinical Quality Language (CQL) by Clinical Quality Framework

## Development

There are several build and test tasks available (`jake -T` show the full list):

### Default task
Runs `build:publish` and `simplifier`, see below for more information
```
jake
```


### Build sushi
The sushi command converts FHIR Shorthand to FHIR JSON, putting the resulting files in `./fsh-generated/resources`.

```
jake build:sushi
```

### Build IG
This command runs the IG Publisher, which wraps the sushi command. Also converts the CQL to ELM and creates the corresponding FHIR library resources. It also runs validation and generates a static website. Lastly, it creates a FHIR package. The output of the publisher is in `./output`.
```
jake build:publish
```

### Test prepare
This command calles sushi, then makes copies of use case fixtures and vocabulary in the directory structure that the VS Code CQL plugin expects.
```
jake test:prepare
```

### Simplifier
Uploads the generated FHIR package (from the IG Publisher) and syncs it to your Simplifier project. Note: the following environment variables need to be set:
* `SIMPLIFIER_PROJECT` This is the urlkey for your Simplifier project.
* `SIMPLIFIER_EMAIL` This is the email address of your Simplifier account.
* `SIMPLIFIER_PASSWORD` This is password of your Simplifier account.

Note: It is convenient to export these variables using `export VAR='value'`.

Visit https://simplifier.net to create your account and a free project.

```
jake simplifier
```

## Verify your data in Simplifier

Once the content data is synchronized to Simplifier, you can view all the resources there.

To apply the dependencies for your project, go to the Dependencies tab on the project and from the dropdown next to `Manage`, select `Restore (advanced)`. 

From your Simplifier project page, find the `API` dropdown and copy the `Project FHIR API` endpoint url.

On synchronization, Simplifier will overwrite existing filenames. If you want to delete one or more files from your project, use the `File manager` from the `Files` dropdown.

## Running the CPG Engine

The CPG engine is available at https://github.com/reason-healthcare/reason-framework. Follow the readme there if you want to run it locally from source.

Additionally, a prebuilt Docker image is available at https://hub.docker.com/r/bkaney/reason-framework.

To run use a command like this:
```
docker run --rm \
    -p 9001:9001 \
    -e "ENDPOINT_ADDRESS=https://fhir.simplifier.net/CPG-workshop" \
    -e "CANONICAL_SEARCH_ROOT=true" \
    bkaney/reason-framework
```

## Run the CPG with Postman

In Postman, import the Postman collection from the postman folder in the  [reason-framework](https://github.com/reason-healthcare/reason-framework) project.

On the imported Reasoning Framework collection, find the variables tab and change the 'current' value of all three `EndpointAddress` variables to the `Project FHIR API` endpoint url of your Simplifier project.

Now run the two `$apply` operations to test if our recommendations work! In the Body of the calls you can change the test data that is being used, like switching out `Patient1` for `Patient2` and corresponding references.