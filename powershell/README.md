# FLY.Client - the PowerShell module for the Fly SDK API

- SDK version: 1.0.11

<a name="frameworks-supported"></a>
## Frameworks supported
- PowerShell 5.1 or later

<a name="dependencies"></a>
## Dependencies

<a name="installation"></a>
## Installation

To install from PowerShell Gallery (https://www.powershellgallery.com/packages/Fly.Client)
```powershell
Import-Module -Name Fly.Client -Verbose
```

To install from the source, run the following command to build and install the PowerShell module locally:
```powershell
Build.ps1
Import-Module -Name '.\src\FLY.Client' -Verbose
```

To avoid function name collision, one can use `-Prefix`, e.g. `Import-Module -Name '.\src\FLY.Client' -Prefix prefix`

To uninstall the module, simply run:
```powershell
Remove-Module -FullyQualifiedName @{ModuleName = "FLY.Client"; ModuleVersion = "1.0.11"}
```

## Documentation for API Endpoints

All URIs are relative to *{Fly_API_Endpoint}*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ConnectionsApi* | [**Get-Connections**](docs/ConnectionsApi.md#Get-Connections) | **GET** /connections/summaries | Get connections by paging query  supported sort fields: name, type
*DownloadCenterApi* | [**Get-ReportJobs**](docs/DownloadCenterApi.md#Get-ReportJobs) | **POST** /downloadcenter/refresh | Get information of report jobs
*DownloadCenterApi* | [**Get-ReportUrl**](docs/DownloadCenterApi.md#Get-ReportUrl) | **GET** /downloadcenter/reporturl | Get report url by job id
*PoliciesApi* | [**Get-Policies**](docs/PoliciesApi.md#Get-Policies) | **GET** /policies/summaries | Get policy summaries by paging query  supported sort fields: name, description, lastModifyTime
*ProjectsApi* | [**Invoke-CheckProjectExist**](docs/ProjectsApi.md#Invoke-CheckProjectExist) | **POST** /projects/validate | Check if the project name already exists
*ProjectsApi* | [**New-Project**](docs/ProjectsApi.md#New-Project) | **POST** /projects | Create a new project
*ProjectsApi* | [**Start-ErrorReportJob**](docs/ProjectsApi.md#start-errorreportjob) | **POST** /projects/reports/mergeerrors | Generate error report per project.
*ProjectsApi* | [**Get-ProjectMappings**](docs/ProjectsApi.md#Get-ProjectMappings) | **GET** /projects/{projectId}/mappings/summaries | Get project mapping summaries by paging query
*ProjectsApi* | [**Get-Projects**](docs/ProjectsApi.md#Get-Projects) | **GET** /projects/summaries | Get project summaries by paging query  supported sort fields: name
*SharePointProjectApi* | [**Add-SharePointMappings**](docs/SharePointProjectApi.md#add-sharepointmappings) | **POST** /projects/sharepoint/{projectId}/mappings | Add SharePoint project mappings into target project
*SharePointProjectApi* | [**Start-SharePointReportJob**](docs/SharePointProjectApi.md#start-sharepointreportjob) | **POST** /projects/sharepoint/{projectId}/reports/generate | Start a report collection job against the selected project mappings.
*SharePointProjectApi* | [**Start-SharePointPreScanJob**](docs/SharePointProjectApi.md#start-sharepointprescanjob) | **POST** /projects/sharepoint/{projectId}/assessments | Start a pre-scan job against the selected project mappings.
*SharePointProjectApi* | [**Start-SharePointMigrationJob**](docs/SharePointProjectApi.md#start-sharepointmigrationjob) | **POST** /projects/sharepoint/{projectId}/migrations | Start a migration job against the selected project mappings.
*SharePointProjectApi* | [**Start-SharePointVerificationJob**](docs/SharePointProjectApi.md#start-sharepointverificationjob) | **POST** /projects/sharepoint/{projectId}/verifications | Start a verification operation against the selected project mappings.
*TagsApi* | [**Get-Tags**](docs/TagsApi.md#Get-Tags) | **GET** /tags/summaries | Get tags by paging query  supported sort fields: name, description


## Documentation for Models

 - [FLY.Client\Model.ConnectionSide](docs/ConnectionSide.md)
 - [FLY.Client\Model.ConnectionSummaryModel](docs/ConnectionSummaryModel.md)
 - [FLY.Client\Model.ConnectionSummaryModelApiQueryResult](docs/ConnectionSummaryModelApiQueryResult.md)
 - [FLY.Client\Model.ErrorModel](docs/ErrorModel.md)
 - [FLY.Client\Model.GenerateProjectErrorReportSettingsModel](docs/GenerateProjectErrorReportSettingsModel.md)
 - [FLY.Client\Model.GenerateReportJobModel](docs/GenerateReportJobModel.md)
 - [FLY.Client\Model.GenerateReportJobModelApiQueryResult](docs/GenerateReportJobModelApiQueryResult.md)
 - [FLY.Client\Model.GenerateReportSettingsModel](docs/GenerateReportSettingsModel.md)
 - [FLY.Client\Model.HttpStatusCode](docs/HttpStatusCode.md)
 - [FLY.Client\Model.MappingJobProgressDetailModel](docs/MappingJobProgressDetailModel.md)
 - [FLY.Client\Model.MappingJobStatus](docs/MappingJobStatus.md)
 - [FLY.Client\Model.MappingJobType](docs/MappingJobType.md)
 - [FLY.Client\Model.MigrationJobSettingsModel](docs/MigrationJobSettingsModel.md)
 - [FLY.Client\Model.PlatformType](docs/PlatformType.md)
 - [FLY.Client\Model.PolicySummaryModel](docs/PolicySummaryModel.md)
 - [FLY.Client\Model.PolicySummaryModelApiQueryResult](docs/PolicySummaryModelApiQueryResult.md)
 - [FLY.Client\Model.ProjectCreationModel](docs/ProjectCreationModel.md)
 - [FLY.Client\Model.ProjectMappingItemStage](docs/ProjectMappingItemStage.md)
 - [FLY.Client\Model.ProjectMappingItemStageStatus](docs/ProjectMappingItemStageStatus.md)
 - [FLY.Client\Model.ProjectMappingItemStatus](docs/ProjectMappingItemStatus.md)
 - [FLY.Client\Model.ProjectMappingOperationModel](docs/ProjectMappingOperationModel.md)
 - [FLY.Client\Model.ProjectMappingSummaryModel](docs/ProjectMappingSummaryModel.md)
 - [FLY.Client\Model.ProjectMappingSummaryModelApiQueryResult](docs/ProjectMappingSummaryModelApiQueryResult.md)
 - [FLY.Client\Model.ProjectSummaryModel](docs/ProjectSummaryModel.md)
 - [FLY.Client\Model.ProjectSummaryModelApiQueryResult](docs/ProjectSummaryModelApiQueryResult.md)
 - [FLY.Client\Model.ReportFileType](docs/ReportFileType.md)
 - [FLY.Client\Model.ReportItemStatus](docs/ReportItemStatus.md)
 - [FLY.Client\Model.SharePointMappingCreationModel](docs/SharePointMappingCreationModel.md)
 - [FLY.Client\Model.SharePointMethodTypes](docs/SharePointMethodTypes.md)
 - [FLY.Client\Model.SortOrder](docs/SortOrder.md)
 - [FLY.Client\Model.TagSummaryModel](docs/TagSummaryModel.md)
 - [FLY.Client\Model.TagSummaryModelApiQueryResult](docs/TagSummaryModelApiQueryResult.md)
 - [FLY.Client\Model.UrlResultModel](docs/UrlResultModel.md)


## Documentation for Authorization


### Bearer


- **Type**: HTTP basic authentication

