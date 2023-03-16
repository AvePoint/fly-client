# Fly.Client - the PowerShell module for the Fly SDK API

- SDK version: 1.0.14

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

To uninstall the module, simply run:
```powershell
Remove-Module -FullyQualifiedName @{ModuleName = "Fly.Client"; ModuleVersion = "1.0.14"}
```

## Documentation for API Endpoints

All URIs are relative to *{Fly_API_Endpoint}*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*FlyConnectionsApi* | [**Get-FlyConnections**](docs/FlyConnectionsApi.md#Get-FlyConnections) | **GET** /connections/summaries | Get connections by paging query  supported sort fields: name, type
*FlyDownloadCenterApi* | [**Get-FlyReportJobs**](docs/FlyDownloadCenterApi.md#Get-FlyReportJobs) | **POST** /downloadcenter/refresh | Get information of report jobs
*FlyDownloadCenterApi* | [**Get-FlyReportUrl**](docs/FlyDownloadCenterApi.md#Get-FlyReportUrl) | **GET** /downloadcenter/reporturl | Get report url by job id
*FlyPoliciesApi* | [**Get-FlyPolicies**](docs/FlyPoliciesApi.md#Get-FlyPolicies) | **GET** /policies/summaries | Get policy summaries by paging query  supported sort fields: name, description, lastModifyTime
*FlyProjectsApi* | [**Invoke-FlyCheckProjectExist**](docs/FlyProjectsApi.md#Invoke-FlyCheckProjectExist) | **POST** /projects/validate | Check if the project name already exists
*FlyProjectsApi* | [**New-FlyProject**](docs/FlyProjectsApi.md#New-FlyProject) | **POST** /projects | Create a new project
*FlyProjectsApi* | [**Start-FlyErrorReportJob**](docs/FlyProjectsApi.md#start-flyerrorreportjob) | **POST** /projects/reports/mergeerrors | Generate error report per project.
*FlyProjectsApi* | [**Get-FlyProjectMappings**](docs/FlyProjectsApi.md#Get-FlyProjectMappings) | **GET** /projects/{projectId}/mappings/summaries | Get project mapping summaries by paging query
*FlyProjectsApi* | [**Get-FlyProjects**](docs/FlyProjectsApi.md#Get-FlyProjects) | **GET** /projects/summaries | Get project summaries by paging query  supported sort fields: name
*FlySharePointProjectApi* | [**Add-FlySharePointMappings**](docs/FlySharePointProjectApi.md#add-flysharepointmappings) | **POST** /projects/sharepoint/{projectId}/mappings | Add SharePoint project mappings into target project
*FlySharePointProjectApi* | [**Start-FlySharePointReportJob**](docs/FlySharePointProjectApi.md#start-flysharepointreportjob) | **POST** /projects/sharepoint/{projectId}/reports/generate | Start a report collection job against the selected project mappings.
*FlySharePointProjectApi* | [**Start-FlySharePointPreScanJob**](docs/FlySharePointProjectApi.md#start-flysharepointprescanjob) | **POST** /projects/sharepoint/{projectId}/assessments | Start a pre-scan job against the selected project mappings.
*FlySharePointProjectApi* | [**Start-FlySharePointMigrationJob**](docs/FlySharePointProjectApi.md#start-flysharepointmigrationjob) | **POST** /projects/sharepoint/{projectId}/migrations | Start a migration job against the selected project mappings.
*FlySharePointProjectApi* | [**Start-FlySharePointVerificationJob**](docs/FlySharePointProjectApi.md#start-flysharepointverificationjob) | **POST** /projects/sharepoint/{projectId}/verifications | Start a verification operation against the selected project mappings.
*FlyTagsApi* | [**Get-FlyTags**](docs/FlyTagsApi.md#Get-FlyTags) | **GET** /tags/summaries | Get tags by paging query  supported sort fields: name, description


## Documentation for Models

 - [Fly.Client\Model.ConnectionSide](docs/ConnectionSide.md)
 - [Fly.Client\Model.ConnectionSummaryModel](docs/ConnectionSummaryModel.md)
 - [Fly.Client\Model.ConnectionSummaryModelApiQueryResult](docs/ConnectionSummaryModelApiQueryResult.md)
 - [Fly.Client\Model.ErrorModel](docs/ErrorModel.md)
 - [Fly.Client\Model.GenerateProjectErrorReportSettingsModel](docs/GenerateProjectErrorReportSettingsModel.md)
 - [Fly.Client\Model.GenerateReportJobModel](docs/GenerateReportJobModel.md)
 - [Fly.Client\Model.GenerateReportJobModelApiQueryResult](docs/GenerateReportJobModelApiQueryResult.md)
 - [Fly.Client\Model.GenerateReportSettingsModel](docs/GenerateReportSettingsModel.md)
 - [Fly.Client\Model.HttpStatusCode](docs/HttpStatusCode.md)
 - [Fly.Client\Model.MappingJobProgressDetailModel](docs/MappingJobProgressDetailModel.md)
 - [Fly.Client\Model.MappingJobStatus](docs/MappingJobStatus.md)
 - [Fly.Client\Model.MappingJobType](docs/MappingJobType.md)
 - [Fly.Client\Model.MigrationJobSettingsModel](docs/MigrationJobSettingsModel.md)
 - [Fly.Client\Model.PlatformType](docs/PlatformType.md)
 - [Fly.Client\Model.PolicySummaryModel](docs/PolicySummaryModel.md)
 - [Fly.Client\Model.PolicySummaryModelApiQueryResult](docs/PolicySummaryModelApiQueryResult.md)
 - [Fly.Client\Model.ProjectCreationModel](docs/ProjectCreationModel.md)
 - [Fly.Client\Model.ProjectMappingItemStage](docs/ProjectMappingItemStage.md)
 - [Fly.Client\Model.ProjectMappingItemStageStatus](docs/ProjectMappingItemStageStatus.md)
 - [Fly.Client\Model.ProjectMappingItemStatus](docs/ProjectMappingItemStatus.md)
 - [Fly.Client\Model.ProjectMappingOperationModel](docs/ProjectMappingOperationModel.md)
 - [Fly.Client\Model.ProjectMappingSummaryModel](docs/ProjectMappingSummaryModel.md)
 - [Fly.Client\Model.ProjectMappingSummaryModelApiQueryResult](docs/ProjectMappingSummaryModelApiQueryResult.md)
 - [Fly.Client\Model.ProjectSummaryModel](docs/ProjectSummaryModel.md)
 - [Fly.Client\Model.ProjectSummaryModelApiQueryResult](docs/ProjectSummaryModelApiQueryResult.md)
 - [Fly.Client\Model.ReportFileType](docs/ReportFileType.md)
 - [Fly.Client\Model.ReportItemStatus](docs/ReportItemStatus.md)
 - [Fly.Client\Model.SharePointMappingCreationModel](docs/SharePointMappingCreationModel.md)
 - [Fly.Client\Model.SharePointMethodTypes](docs/SharePointMethodTypes.md)
 - [Fly.Client\Model.SortOrder](docs/SortOrder.md)
 - [Fly.Client\Model.TagSummaryModel](docs/TagSummaryModel.md)
 - [Fly.Client\Model.TagSummaryModelApiQueryResult](docs/TagSummaryModelApiQueryResult.md)
 - [Fly.Client\Model.UrlResultModel](docs/UrlResultModel.md)


## Documentation for Authorization


### Bearer


- **Type**: HTTP basic authentication

