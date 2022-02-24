# README.md

## Pre-requisites

#### Monaco:

-  Monaco is a cross-platform pre-compiled binary (Windows/Mac/Linux)
-  Download the Monaco CLI for your platform from (here|https://github.com/dynatrace-oss/dynatrace-monitoring-as-code/releases)

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
  
NB: this project has been designed to run on Monaco v1.x and has NOT been tested with NEW_CLI v2

## Quick steps

To use this project requires Monaco binary. In these examples, this has been downloaded and renamed as simply 'monaco'.
Path = `/opt/monaco`

On Linux, be sure to add execute permission, such as `chmod u+x /opt/monaco`, so that it will execute the program.

### Environments file

Replace {ENV} with the matching token name from your environments.yaml file
Replace {environment-id} with name of entry from your environments.yaml file
In your environments yaml file, you can simply replace `{{ .Env.URL_SANDBOX_ENVIRONMENT }}` with the URL to your Dynatrace API.

NB: A space at beginning of command line is common way for hiding the command from bash_history, but this is not considered a 100% secure approach. 

### Monaco
#### Dry-run of Monaco to see what will be applied, and in which order
```
cd <path>/<to>/<repo>/monaco/
 TOKEN_{ENV}=dt0c01.ABC.XYZ123 /opt/monaco -e='environments.yaml' -se {environment-id} -d -v
```
(Where `-d` stands for --dry-run and `-v` stands for --verbose output.)

#### Apply the monaco project to Dynatrace environment
```
cd <path>/<to>/<repo>/monaco/
 TOKEN_{ENV}=dt0c01.ABC.XYZ123 /opt/monaco -e='environments.yaml' -se {environment-id}
```

#### Optional projects path
Specifying the -p option on Monaco command you can select a specific sub-project folder. See Monaco documentation for more information.

### Example

```
cd <path>/<to>/<repo>/monaco/
 TOKEN_PREPROD=dt0c01.ABC.XYZ123 /opt/monaco -e='environments.yaml' -se pre-prod -d
```


