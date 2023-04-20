# FLY.Client - the PowerShell module for the Fly SDK API

- SDK version: 1.1.3

<a name="frameworks-supported"></a>
## Frameworks supported
- PowerShell 5.1 or later

<a name="module-supported"></a>
## Module supported
- SharePoint Online

Currently we only support SharePoint Online module for PowerShell client, other modules are on the way.

<a name="installation"></a>
## Installation

To install from PowerShell Gallery (https://www.powershellgallery.com/packages/Fly.Client)
```powershell
Import-Module -Name Fly.Client -Verbose
```

To uninstall the module, simply run:
```powershell
Remove-Module -FullyQualifiedName @{ModuleName = "Fly.Client"; ModuleVersion = "1.1.3"}
```

<a name="how-to-use"></a>
## How to Use
### 1. [**Connect-Fly**](docs/FlyConnectApi.md#connect-fly)
To use Fly PowerShell Client, one need to connect to Fly public API with PowerShell:
```powershell
Connect-Fly `
    -Url "fly public api url" `
    -ClientId "application client id from AOS" `
    -Cert $certificate
```
You can construct the $certificate parameter by the following two ways:
```powershell
# get from .pfx file with the password
$certificate = New-Object System.Security.Cryptography.X509Certificates.X509Certificate2 "path_to_pfx_file", "password"

# get from certificate store of local machine by certificate thumbprint, you need install the certificate to local machine in advance and replace the certificate thumbprint to yours
$certificate = (Get-ChildItem -Path 'Cert:\LocalMachine\My\304CAFB0719971D7F180DE983F649DFAC85D47D3' -Recurse)[0]
```
After you connect to Fly public API, then you can perform various operations like creating projects, adding mappings to projects, running jobs and monitoring mapping migration status, etc.

**Note**: this command is valid for one hour, run the command again in case of timeout or 401(Unauthorized) error code.

### 2. [**New-FlyMigrationProject**](docs/FlyProjectApi.md#new-flymigrationproject)
Following PowerShell command will create a SharePoint project:
```powershell
New-FlyMigrationProject `
    -Name "project name"`
    -SourceConnection "source connection name" `
    -DestinationConnection "destination connection name" `
    -Policy "policy name" `
    -Tags @("tag1", "tag2")
```
The ```-Tags``` parameter is optional, although it’s recommended that you organize and manage your projects with tags when you have quite many projects.

### 3. [**Import-FlySharePointMappings**](docs/FlySharePointApi.md#import-flysharepointmappings)
You can add mappings to a specified project with following PowerShell command:
```powershell
Import-FlySharePointMappings `
    -Project "project name" `
    -Path "csv file path contains mapping information to be added to the project"
```
You can check the csv template of the mappings file from [**here**](templates/Fly_SharePoint_Online_Import_Mapping_Template.csv).

Although there’s no hard limit for the number of mappings in a single project, we don’t recommend more than 10000 mappings as it will make it difficult to manage and organize these mappings.
Usually for easier management work, we recommend less than 2000 mappings in a single project. Another recommended way to organize your mappings and projects is based on your organization structure or business units.

### 4. [**Start-FlySharePointMigration**](docs/FlySharePointApi.md#start-flysharepointmigration)
Following PowerShell command will start migration jobs for mappings in the specified project:
```powershell
Start-FlySharePointMigration `
    -Project "project name" `
    -Mode "FullMigration" `
    -Mappings "csv file contains all mappings to run job" `
    -ScheduleTime (Get-Date -Date "2023-10-14 22:00:00").ToUniversalTime()
```
Both ```-Mappings``` and ```-ScheduleTime``` are optional. If you omit the ```-Mappings``` parameter, this command will try to start jobs for all the mappings in the specified project. If you omit the ```-ScheduleTime``` parameter, this command will try to schedule the mappings as soon as possible.

### 5. [**Export-FlySharePointMappingStatus**](docs/FlySharePointApi.md#export-flysharepointmappingstatus)
After you start the migration job with the previous PowerShell command, you can monitor the mapping’s migration status with following command:
```powershell
Export-FlySharePointMappingStatus `
    -Project "project name" `
    -OutFile "csv file path to store the exported result" `
    -Mappings "csv file contains all mappings you want to export status"
```
The ```-Mappings``` parameter is optional. If you omit it, this command will try to export status of all mappings in the specified project.  After this command completes you can check the result csv file in ```-OutFile``` with your own logic. 
For example, you can summarize the data in the csv file and check whether all the mappings specified are in final status:
```powershell
$data = Import-Csv "csv file path to store the exported result"
$summary = $data | `
    Where-Object {$_.Stage -eq 'RunDataMigration'} | `
    Where-Object {@('Waiting','InQueue','InProgress').Contains($_.StageStatus)} | `
    Group-Object -Property StageStatus | `
    Select-Object Count,Name

If($summary -eq $null -or $summary.Count -eq 0) {
    #this means all mappings are finished and no mapping is in waiting or running status
}
```

### 6. [**Export-FlySharePointMigrationReport**](docs/FlySharePointApi.md#export-flysharepointmigrationreport)
After all the mappings are finished, you can use the following command to generate and download the mapping migration reports:
```powershell
Export-FlySharePointMigrationReport `
    -Project "project name" `
    -OutFile "file path to store the generated migration report" `
    -Mappings "csv file contains all mappings you want to export report of" `
    -FileType "Excel or CSV" `
    -TimeZoneOffset "your timezone offset, this value will be used to adjust time values in the report" `
    -Include "Object status to be included in the generated report"
```
Only ```-Project``` and ```-OutFile``` are required for this command.
If you omit the ```-Mappings``` parameter, this command will generate report for all mappings with proper status in this project.
```-FileType``` will be defaulted to CSV if you omit it.
If you omit ```-TimeZoneOffset```, this command assume you want to use UTC time.
If you omit ```-Include``` parameter, only summary information will be included in the generated report and no item details will be included.

## Documentation for Cmdlets

We also provided some other powershell commands with which you can automate your migration process. You can refer to the [**documentation**](docs/FlyApi.md) for more details.

## About Fly 

[AvePoint Fly](https://www.avepointonlineservices.com) provides an all-in-one migration solution for Exchange Online, Exchange On-Premises, Microsoft Teams, SharePoint Online, OneDrive for Business, Microsoft 365 Groups, Power Platform, and Microsoft Teams Chat. The solution allows organizations to simply and quickly migrate objects between sources and destinations without the need for any installation or complex configuration. 
