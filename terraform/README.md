# README.md

## Pre-requisites

#### Terraform Provider Dynatrace:

-  Terraform Dynatrace Provider is a cross-platform pre-compiled binary (Windows/Mac/Linux)
-  Download the Dynatrace Terraform Provider CLI for your platform from (here|https://github.com/dynatrace-oss/terraform-provider-dynatrace/releases)

#### Git

-  To obtain this repository (git clone)

#### Tokens

You need token with:
- **API token to write configuration** (API_TOKEN, TOKEN_ENV), with these permissions:
  - Read settings 	`settings.read` (future)
  - Write settings 	`settings.write` (future)
  - Access problems and event feed, metrics, and topology 	`DataExport`
  - Read configuration 	`ReadConfig`
  - Write configuration 	`WriteConfig`
  - Capture request data    `CaptureRequestData`
  
NB: this project is an export/download

## Quick steps

To use this project requires Terraform Provider Dynatrace binary. In these examples, this has been downloaded and renamed as simply 'terraform-provider-dynatrace'.
Path = `/opt/terraform-provider-dynatrace`

On Linux, be sure to add execute permission, such as `chmod u+x /opt/terraform-provider-dynatrace`, so that it will execute the program.

### Environments

Replace {ENV-ID} with the matching Dynatrace environment/tenant URL
Replace dt0c01.ABC.123 with your actual API token value.

NB: A space at beginning of command line is common way for hiding the command from bash_history, but this is not considered a 100% secure approach. 

### Terraform
#### Download of configuration
```
cd <path>/<to>/<repo>/terraform/
 DYNATRACE_ENV_URL=https://{ENV-ID}.live.dynatrace.com DYNATRACE_API_TOKEN=dt0c01.ABC.123 /opt/terraform-provider-dynatrace export
```
The existing configuration will be downloaded into folder named `configuration`.


#### Apply the terraform project to Dynatrace environment
```
cd <path>/<to>/<repo>/terraform/
```

### Example




