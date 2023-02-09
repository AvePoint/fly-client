# FLY.Client - the PowerShell module for the Fly SDK API

- SDK version: 1.0.5

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
Remove-Module -FullyQualifiedName @{ModuleName = "FLY.Client"; ModuleVersion = "1.0.5"}
```

## Documentation for API Endpoints

All URIs are relative to *{Fly_API_Endpoint}*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ConnectionsApi* | [**Get-Connections**](docs/ConnectionsApi.md#Get-Connections) | **GET** /connections/summaries | get connection summaries
*DownloadCenterApi* | [**Get-ReportJobs**](docs/DownloadCenterApi.md#Get-ReportJobs) | **POST** /downloadcenter/refresh | get information of report jobs
*DownloadCenterApi* | [**Get-ReportUrl**](docs/DownloadCenterApi.md#Get-ReportUrl) | **GET** /downloadcenter/reporturl | get report url by job id
*PoliciesApi* | [**Get-Policies**](docs/PoliciesApi.md#Get-Policies) | **GET** /policies/summaries | get policy summaries
*ProjectsApi* | [**Invoke-CheckProjectExist**](docs/ProjectsApi.md#Invoke-CheckProjectExist) | **POST** /projects/validate | check if the project name already exists
*ProjectsApi* | [**New-Project**](docs/ProjectsApi.md#New-Project) | **POST** /projects | create a new project
*ProjectsApi* | [**Start-ErrorReportJob**](docs/ProjectsApi.md#start-errorreportjob) | **POST** /projects/reports/mergeerrors | generate error report per project
*ProjectsApi* | [**Get-ProjectMappings**](docs/ProjectsApi.md#Get-ProjectMappings) | **GET** /projects/{projectId}/mappings/summaries | get project mapping summaries
*ProjectsApi* | [**Get-Projects**](docs/ProjectsApi.md#Get-Projects) | **GET** /projects/summaries | get project summaries
*SharePointProjectApi* | [**Add-SharePointMappings**](docs/SharePointProjectApi.md#add-sharepointmappings) | **POST** /projects/sharepoint/{projectId}/mappings | add SharePoint project mappings
*SharePointProjectApi* | [**Start-SharePointReportJob**](docs/SharePointProjectApi.md#start-sharepointreportjob) | **POST** /projects/sharepoint/{projectId}/reports/generate | generate SharePoint migration report
*SharePointProjectApi* | [**Start-SharePointPreScanJob**](docs/SharePointProjectApi.md#start-sharepointprescanjob) | **POST** /projects/sharepoint/{projectId}/assessments | start SharePoint pre-scan jobs
*SharePointProjectApi* | [**Start-SharePointMigrationJob**](docs/SharePointProjectApi.md#start-sharepointmigrationjob) | **POST** /projects/sharepoint/{projectId}/migrations | start SharePoint migration jobs
*SharePointProjectApi* | [**Start-SharePointVerificationJob**](docs/SharePointProjectApi.md#start-sharepointverificationjob) | **POST** /projects/sharepoint/{projectId}/verifications | start SharePoint verification jobs
*TagsApi* | [**Get-Tags**](docs/TagsApi.md#Get-Tags) | **GET** /tags/summaries | get tag summaries


## Documentation for Models

 - [FLY.Client\Model.AosGoogleTenantModel](docs/AosGoogleTenantModel.md)
 - [FLY.Client\Model.AosM365TenantModel](docs/AosM365TenantModel.md)
 - [FLY.Client\Model.AosProductType](docs/AosProductType.md)
 - [FLY.Client\Model.AosSwitchBarModel](docs/AosSwitchBarModel.md)
 - [FLY.Client\Model.AppProfileModel](docs/AppProfileModel.md)
 - [FLY.Client\Model.AppProfileType](docs/AppProfileType.md)
 - [FLY.Client\Model.ArchiveMailboxStatus](docs/ArchiveMailboxStatus.md)
 - [FLY.Client\Model.AzureEnvironment](docs/AzureEnvironment.md)
 - [FLY.Client\Model.ChangeDomainSettingsModel](docs/ChangeDomainSettingsModel.md)
 - [FLY.Client\Model.ColumnMappingCreationModel](docs/ColumnMappingCreationModel.md)
 - [FLY.Client\Model.ColumnMappingItemModel](docs/ColumnMappingItemModel.md)
 - [FLY.Client\Model.ColumnMappingModel](docs/ColumnMappingModel.md)
 - [FLY.Client\Model.ColumnMappingValueItemModel](docs/ColumnMappingValueItemModel.md)
 - [FLY.Client\Model.ColumnTypeCondition](docs/ColumnTypeCondition.md)
 - [FLY.Client\Model.ConcurrencySettingModel](docs/ConcurrencySettingModel.md)
 - [FLY.Client\Model.ConflictResolution](docs/ConflictResolution.md)
 - [FLY.Client\Model.ConnectionCheckResultModel](docs/ConnectionCheckResultModel.md)
 - [FLY.Client\Model.ConnectionMappingCreationModel](docs/ConnectionMappingCreationModel.md)
 - [FLY.Client\Model.ConnectionMappingItemModel](docs/ConnectionMappingItemModel.md)
 - [FLY.Client\Model.ConnectionMappingModel](docs/ConnectionMappingModel.md)
 - [FLY.Client\Model.ConnectionSide](docs/ConnectionSide.md)
 - [FLY.Client\Model.ConnectionSummaryModel](docs/ConnectionSummaryModel.md)
 - [FLY.Client\Model.ConnectionSummaryModelApiQueryResult](docs/ConnectionSummaryModelApiQueryResult.md)
 - [FLY.Client\Model.ContainerSummaryModel](docs/ContainerSummaryModel.md)
 - [FLY.Client\Model.ContainerSummaryModelApiQueryResult](docs/ContainerSummaryModelApiQueryResult.md)
 - [FLY.Client\Model.ContentTypeMappingCreationModel](docs/ContentTypeMappingCreationModel.md)
 - [FLY.Client\Model.ContentTypeMappingItemModel](docs/ContentTypeMappingItemModel.md)
 - [FLY.Client\Model.ContentTypeMappingModel](docs/ContentTypeMappingModel.md)
 - [FLY.Client\Model.DataAnalysisDetailModel](docs/DataAnalysisDetailModel.md)
 - [FLY.Client\Model.DataAnalysisSummaryModel](docs/DataAnalysisSummaryModel.md)
 - [FLY.Client\Model.DiscoveryJobErrorModel](docs/DiscoveryJobErrorModel.md)
 - [FLY.Client\Model.DiscoveryJobStatus](docs/DiscoveryJobStatus.md)
 - [FLY.Client\Model.DiscoveryStatus](docs/DiscoveryStatus.md)
 - [FLY.Client\Model.DorContainerModel](docs/DorContainerModel.md)
 - [FLY.Client\Model.DorContainerType](docs/DorContainerType.md)
 - [FLY.Client\Model.DownloadCenterOperationModel](docs/DownloadCenterOperationModel.md)
 - [FLY.Client\Model.EmailForwardingSettingsModel](docs/EmailForwardingSettingsModel.md)
 - [FLY.Client\Model.EmailTemplateSummaryModel](docs/EmailTemplateSummaryModel.md)
 - [FLY.Client\Model.EmailTemplateSummaryModelApiQueryResult](docs/EmailTemplateSummaryModelApiQueryResult.md)
 - [FLY.Client\Model.EmailTemplateType](docs/EmailTemplateType.md)
 - [FLY.Client\Model.ErrorCodeSummaryModel](docs/ErrorCodeSummaryModel.md)
 - [FLY.Client\Model.ErrorItemDetailSummaryModel](docs/ErrorItemDetailSummaryModel.md)
 - [FLY.Client\Model.ErrorItemDetailSummaryModelApiQueryResult](docs/ErrorItemDetailSummaryModelApiQueryResult.md)
 - [FLY.Client\Model.ErrorModel](docs/ErrorModel.md)
 - [FLY.Client\Model.ExchangeConnectionCreationModel](docs/ExchangeConnectionCreationModel.md)
 - [FLY.Client\Model.ExchangeConnectionModel](docs/ExchangeConnectionModel.md)
 - [FLY.Client\Model.ExchangeDiscoveryDetailModel](docs/ExchangeDiscoveryDetailModel.md)
 - [FLY.Client\Model.ExchangeDiscoveryDetailModelApiQueryResult](docs/ExchangeDiscoveryDetailModelApiQueryResult.md)
 - [FLY.Client\Model.ExchangeDiscoveryGroupDetailModel](docs/ExchangeDiscoveryGroupDetailModel.md)
 - [FLY.Client\Model.ExchangeDiscoveryGroupDetailModelApiQueryResult](docs/ExchangeDiscoveryGroupDetailModelApiQueryResult.md)
 - [FLY.Client\Model.ExchangeDiscoveryMailboxType](docs/ExchangeDiscoveryMailboxType.md)
 - [FLY.Client\Model.ExchangeDiscoverySummaryModel](docs/ExchangeDiscoverySummaryModel.md)
 - [FLY.Client\Model.ExchangeFolderCondition](docs/ExchangeFolderCondition.md)
 - [FLY.Client\Model.ExchangeMailboxTypeDistributionModel](docs/ExchangeMailboxTypeDistributionModel.md)
 - [FLY.Client\Model.ExchangeMappingCreationModel](docs/ExchangeMappingCreationModel.md)
 - [FLY.Client\Model.ExchangeObjectType](docs/ExchangeObjectType.md)
 - [FLY.Client\Model.ExchangePolicyCreationModel](docs/ExchangePolicyCreationModel.md)
 - [FLY.Client\Model.ExchangePolicyModel](docs/ExchangePolicyModel.md)
 - [FLY.Client\Model.ExchangeServiceProvider](docs/ExchangeServiceProvider.md)
 - [FLY.Client\Model.ExchangeVersion](docs/ExchangeVersion.md)
 - [FLY.Client\Model.ExportApiSettingModel](docs/ExportApiSettingModel.md)
 - [FLY.Client\Model.FeedbackModel](docs/FeedbackModel.md)
 - [FLY.Client\Model.FeedbackType](docs/FeedbackType.md)
 - [FLY.Client\Model.FilterCondition](docs/FilterCondition.md)
 - [FLY.Client\Model.FilterCreationModel](docs/FilterCreationModel.md)
 - [FLY.Client\Model.FilterCriteriaItemModel](docs/FilterCriteriaItemModel.md)
 - [FLY.Client\Model.FilterItemModel](docs/FilterItemModel.md)
 - [FLY.Client\Model.FilterLevel](docs/FilterLevel.md)
 - [FLY.Client\Model.FilterModel](docs/FilterModel.md)
 - [FLY.Client\Model.FilterSummaryModel](docs/FilterSummaryModel.md)
 - [FLY.Client\Model.FilterSummaryModelApiQueryResult](docs/FilterSummaryModelApiQueryResult.md)
 - [FLY.Client\Model.GenerateProjectErrorReportSettingsModel](docs/GenerateProjectErrorReportSettingsModel.md)
 - [FLY.Client\Model.GenerateProjectReportSettingsModel](docs/GenerateProjectReportSettingsModel.md)
 - [FLY.Client\Model.GenerateReportJobModel](docs/GenerateReportJobModel.md)
 - [FLY.Client\Model.GenerateReportJobModelApiQueryResult](docs/GenerateReportJobModelApiQueryResult.md)
 - [FLY.Client\Model.GenerateReportSettingsModel](docs/GenerateReportSettingsModel.md)
 - [FLY.Client\Model.GeoLocationInfoModel](docs/GeoLocationInfoModel.md)
 - [FLY.Client\Model.GmailConnectionCreationModel](docs/GmailConnectionCreationModel.md)
 - [FLY.Client\Model.GmailConnectionModel](docs/GmailConnectionModel.md)
 - [FLY.Client\Model.GmailMappingCreationModel](docs/GmailMappingCreationModel.md)
 - [FLY.Client\Model.GmailMigrateLabel](docs/GmailMigrateLabel.md)
 - [FLY.Client\Model.GmailPolicyCreationModel](docs/GmailPolicyCreationModel.md)
 - [FLY.Client\Model.GmailPolicyModel](docs/GmailPolicyModel.md)
 - [FLY.Client\Model.HostedExchangeConnectionCreationModel](docs/HostedExchangeConnectionCreationModel.md)
 - [FLY.Client\Model.HostedExchangeConnectionModel](docs/HostedExchangeConnectionModel.md)
 - [FLY.Client\Model.HostedExchangeMappingCreationModel](docs/HostedExchangeMappingCreationModel.md)
 - [FLY.Client\Model.HostedExchangePolicyCreationModel](docs/HostedExchangePolicyCreationModel.md)
 - [FLY.Client\Model.HostedExchangePolicyModel](docs/HostedExchangePolicyModel.md)
 - [FLY.Client\Model.HostedServiceAccountModel](docs/HostedServiceAccountModel.md)
 - [FLY.Client\Model.HttpStatusCode](docs/HttpStatusCode.md)
 - [FLY.Client\Model.InformMappingCondition](docs/InformMappingCondition.md)
 - [FLY.Client\Model.JobModuleModel](docs/JobModuleModel.md)
 - [FLY.Client\Model.LabelMappingCreationModel](docs/LabelMappingCreationModel.md)
 - [FLY.Client\Model.LabelMappingItemModel](docs/LabelMappingItemModel.md)
 - [FLY.Client\Model.LabelMappingModel](docs/LabelMappingModel.md)
 - [FLY.Client\Model.LicenseModel](docs/LicenseModel.md)
 - [FLY.Client\Model.LicenseModuleModel](docs/LicenseModuleModel.md)
 - [FLY.Client\Model.LicenseStatusModel](docs/LicenseStatusModel.md)
 - [FLY.Client\Model.LicenseType](docs/LicenseType.md)
 - [FLY.Client\Model.LogicalOperator](docs/LogicalOperator.md)
 - [FLY.Client\Model.M365GroupConnectionCreationModel](docs/M365GroupConnectionCreationModel.md)
 - [FLY.Client\Model.M365GroupConnectionModel](docs/M365GroupConnectionModel.md)
 - [FLY.Client\Model.M365GroupDiscoveryDetailModel](docs/M365GroupDiscoveryDetailModel.md)
 - [FLY.Client\Model.M365GroupDiscoveryDetailModelApiQueryResult](docs/M365GroupDiscoveryDetailModelApiQueryResult.md)
 - [FLY.Client\Model.M365GroupDiscoveryPrivacy](docs/M365GroupDiscoveryPrivacy.md)
 - [FLY.Client\Model.M365GroupDiscoverySummaryModel](docs/M365GroupDiscoverySummaryModel.md)
 - [FLY.Client\Model.M365GroupDiscoveryTeamsStatus](docs/M365GroupDiscoveryTeamsStatus.md)
 - [FLY.Client\Model.M365GroupDiscoveryType](docs/M365GroupDiscoveryType.md)
 - [FLY.Client\Model.M365GroupMappingCreationModel](docs/M365GroupMappingCreationModel.md)
 - [FLY.Client\Model.M365GroupPolicyCreationModel](docs/M365GroupPolicyCreationModel.md)
 - [FLY.Client\Model.M365GroupPolicyModel](docs/M365GroupPolicyModel.md)
 - [FLY.Client\Model.M365GroupPrivacyDistributionModel](docs/M365GroupPrivacyDistributionModel.md)
 - [FLY.Client\Model.ManageLabelOptionTypes](docs/ManageLabelOptionTypes.md)
 - [FLY.Client\Model.MappingEmailTemplateCreationModel](docs/MappingEmailTemplateCreationModel.md)
 - [FLY.Client\Model.MappingEmailTemplateModel](docs/MappingEmailTemplateModel.md)
 - [FLY.Client\Model.MappingJobCommentModel](docs/MappingJobCommentModel.md)
 - [FLY.Client\Model.MappingJobProgressDetailModel](docs/MappingJobProgressDetailModel.md)
 - [FLY.Client\Model.MappingJobStatus](docs/MappingJobStatus.md)
 - [FLY.Client\Model.MappingJobSummaryModel](docs/MappingJobSummaryModel.md)
 - [FLY.Client\Model.MappingJobType](docs/MappingJobType.md)
 - [FLY.Client\Model.MappingProfileType](docs/MappingProfileType.md)
 - [FLY.Client\Model.MappingReportDetailModel](docs/MappingReportDetailModel.md)
 - [FLY.Client\Model.MappingStateModel](docs/MappingStateModel.md)
 - [FLY.Client\Model.MappingSummaryModel](docs/MappingSummaryModel.md)
 - [FLY.Client\Model.MappingSummaryModelApiQueryResult](docs/MappingSummaryModelApiQueryResult.md)
 - [FLY.Client\Model.MigrationJobSettingsModel](docs/MigrationJobSettingsModel.md)
 - [FLY.Client\Model.MoveMappingSettingsModel](docs/MoveMappingSettingsModel.md)
 - [FLY.Client\Model.NameIdResult](docs/NameIdResult.md)
 - [FLY.Client\Model.NotificationModel](docs/NotificationModel.md)
 - [FLY.Client\Model.ObjectTypeSummaryModel](docs/ObjectTypeSummaryModel.md)
 - [FLY.Client\Model.ObjectTypeSummaryModelApiQueryResult](docs/ObjectTypeSummaryModelApiQueryResult.md)
 - [FLY.Client\Model.OneDriveConnectionCreationModel](docs/OneDriveConnectionCreationModel.md)
 - [FLY.Client\Model.OneDriveConnectionModel](docs/OneDriveConnectionModel.md)
 - [FLY.Client\Model.OneDriveDiscoveryDetailModel](docs/OneDriveDiscoveryDetailModel.md)
 - [FLY.Client\Model.OneDriveDiscoveryDetailModelApiQueryResult](docs/OneDriveDiscoveryDetailModelApiQueryResult.md)
 - [FLY.Client\Model.OneDriveDiscoverySummaryModel](docs/OneDriveDiscoverySummaryModel.md)
 - [FLY.Client\Model.OneDriveMappingCreationModel](docs/OneDriveMappingCreationModel.md)
 - [FLY.Client\Model.OneDrivePolicyCreationModel](docs/OneDrivePolicyCreationModel.md)
 - [FLY.Client\Model.OneDrivePolicyModel](docs/OneDrivePolicyModel.md)
 - [FLY.Client\Model.OneDriveScopeCondition](docs/OneDriveScopeCondition.md)
 - [FLY.Client\Model.PaymentType](docs/PaymentType.md)
 - [FLY.Client\Model.PlatformType](docs/PlatformType.md)
 - [FLY.Client\Model.PolicySummaryModel](docs/PolicySummaryModel.md)
 - [FLY.Client\Model.PolicySummaryModelApiQueryResult](docs/PolicySummaryModelApiQueryResult.md)
 - [FLY.Client\Model.PowerPlatformConnectionCreationModel](docs/PowerPlatformConnectionCreationModel.md)
 - [FLY.Client\Model.PowerPlatformConnectionModel](docs/PowerPlatformConnectionModel.md)
 - [FLY.Client\Model.PowerPlatformMappingCreationModel](docs/PowerPlatformMappingCreationModel.md)
 - [FLY.Client\Model.PowerPlatformPolicyCreationModel](docs/PowerPlatformPolicyCreationModel.md)
 - [FLY.Client\Model.PowerPlatformPolicyModel](docs/PowerPlatformPolicyModel.md)
 - [FLY.Client\Model.PreparationCheckResult](docs/PreparationCheckResult.md)
 - [FLY.Client\Model.ProductCardModel](docs/ProductCardModel.md)
 - [FLY.Client\Model.ProjectCreationModel](docs/ProjectCreationModel.md)
 - [FLY.Client\Model.ProjectEmailTemplateCreationModel](docs/ProjectEmailTemplateCreationModel.md)
 - [FLY.Client\Model.ProjectEmailTemplateModel](docs/ProjectEmailTemplateModel.md)
 - [FLY.Client\Model.ProjectMappingItemStage](docs/ProjectMappingItemStage.md)
 - [FLY.Client\Model.ProjectMappingItemStageStatus](docs/ProjectMappingItemStageStatus.md)
 - [FLY.Client\Model.ProjectMappingItemStatus](docs/ProjectMappingItemStatus.md)
 - [FLY.Client\Model.ProjectMappingJobModel](docs/ProjectMappingJobModel.md)
 - [FLY.Client\Model.ProjectMappingJobModelApiQueryResult](docs/ProjectMappingJobModelApiQueryResult.md)
 - [FLY.Client\Model.ProjectMappingOperationModel](docs/ProjectMappingOperationModel.md)
 - [FLY.Client\Model.ProjectMappingSummaryModel](docs/ProjectMappingSummaryModel.md)
 - [FLY.Client\Model.ProjectMappingSummaryModelApiQueryResult](docs/ProjectMappingSummaryModelApiQueryResult.md)
 - [FLY.Client\Model.ProjectModel](docs/ProjectModel.md)
 - [FLY.Client\Model.ProjectSummaryModel](docs/ProjectSummaryModel.md)
 - [FLY.Client\Model.ProjectSummaryModelApiQueryResult](docs/ProjectSummaryModelApiQueryResult.md)
 - [FLY.Client\Model.PropertyFlag](docs/PropertyFlag.md)
 - [FLY.Client\Model.PropertyType](docs/PropertyType.md)
 - [FLY.Client\Model.RecentMigrationModel](docs/RecentMigrationModel.md)
 - [FLY.Client\Model.ReportFileType](docs/ReportFileType.md)
 - [FLY.Client\Model.ReportItemStatus](docs/ReportItemStatus.md)
 - [FLY.Client\Model.SasUriModel](docs/SasUriModel.md)
 - [FLY.Client\Model.SharePointConnectionCreationModel](docs/SharePointConnectionCreationModel.md)
 - [FLY.Client\Model.SharePointConnectionModel](docs/SharePointConnectionModel.md)
 - [FLY.Client\Model.SharePointDiscoveryDetailModel](docs/SharePointDiscoveryDetailModel.md)
 - [FLY.Client\Model.SharePointDiscoveryDetailModelApiQueryResult](docs/SharePointDiscoveryDetailModelApiQueryResult.md)
 - [FLY.Client\Model.SharePointDiscoverySummaryModel](docs/SharePointDiscoverySummaryModel.md)
 - [FLY.Client\Model.SharePointMappingCreationModel](docs/SharePointMappingCreationModel.md)
 - [FLY.Client\Model.SharePointMethodTypes](docs/SharePointMethodTypes.md)
 - [FLY.Client\Model.SharePointPolicyCreationModel](docs/SharePointPolicyCreationModel.md)
 - [FLY.Client\Model.SharePointPolicyModel](docs/SharePointPolicyModel.md)
 - [FLY.Client\Model.SharePointSiteTemplateDistributionModel](docs/SharePointSiteTemplateDistributionModel.md)
 - [FLY.Client\Model.SiteMappingCreationModel](docs/SiteMappingCreationModel.md)
 - [FLY.Client\Model.SiteMappingItemModel](docs/SiteMappingItemModel.md)
 - [FLY.Client\Model.SiteMappingModel](docs/SiteMappingModel.md)
 - [FLY.Client\Model.SortOrder](docs/SortOrder.md)
 - [FLY.Client\Model.StatisticsQueryModel](docs/StatisticsQueryModel.md)
 - [FLY.Client\Model.StatisticsResultModel](docs/StatisticsResultModel.md)
 - [FLY.Client\Model.TagCreationModel](docs/TagCreationModel.md)
 - [FLY.Client\Model.TagModel](docs/TagModel.md)
 - [FLY.Client\Model.TagSummaryModel](docs/TagSummaryModel.md)
 - [FLY.Client\Model.TagSummaryModelApiQueryResult](docs/TagSummaryModelApiQueryResult.md)
 - [FLY.Client\Model.TeamChatConnectionCreationModel](docs/TeamChatConnectionCreationModel.md)
 - [FLY.Client\Model.TeamChatConnectionModel](docs/TeamChatConnectionModel.md)
 - [FLY.Client\Model.TeamChatMappingCreationModel](docs/TeamChatMappingCreationModel.md)
 - [FLY.Client\Model.TeamChatMigrationMode](docs/TeamChatMigrationMode.md)
 - [FLY.Client\Model.TeamChatPolicyCreationModel](docs/TeamChatPolicyCreationModel.md)
 - [FLY.Client\Model.TeamChatPolicyModel](docs/TeamChatPolicyModel.md)
 - [FLY.Client\Model.TeamChatProjectCreationModel](docs/TeamChatProjectCreationModel.md)
 - [FLY.Client\Model.TeamMappingCreationModel](docs/TeamMappingCreationModel.md)
 - [FLY.Client\Model.TeamMappingItemModel](docs/TeamMappingItemModel.md)
 - [FLY.Client\Model.TeamMappingModel](docs/TeamMappingModel.md)
 - [FLY.Client\Model.TeamSiteContentLevel](docs/TeamSiteContentLevel.md)
 - [FLY.Client\Model.TeamsChannelDiscoveryType](docs/TeamsChannelDiscoveryType.md)
 - [FLY.Client\Model.TeamsChannelMappingModel](docs/TeamsChannelMappingModel.md)
 - [FLY.Client\Model.TeamsChannelType](docs/TeamsChannelType.md)
 - [FLY.Client\Model.TeamsChannelTypeDistributionModel](docs/TeamsChannelTypeDistributionModel.md)
 - [FLY.Client\Model.TeamsConnectionCreationModel](docs/TeamsConnectionCreationModel.md)
 - [FLY.Client\Model.TeamsConnectionModel](docs/TeamsConnectionModel.md)
 - [FLY.Client\Model.TeamsDiscoveryDetailModel](docs/TeamsDiscoveryDetailModel.md)
 - [FLY.Client\Model.TeamsDiscoveryDetailModelApiQueryResult](docs/TeamsDiscoveryDetailModelApiQueryResult.md)
 - [FLY.Client\Model.TeamsDiscoveryPrivacy](docs/TeamsDiscoveryPrivacy.md)
 - [FLY.Client\Model.TeamsDiscoveryStatus](docs/TeamsDiscoveryStatus.md)
 - [FLY.Client\Model.TeamsDiscoverySummaryModel](docs/TeamsDiscoverySummaryModel.md)
 - [FLY.Client\Model.TeamsMappingCreationModel](docs/TeamsMappingCreationModel.md)
 - [FLY.Client\Model.TeamsObjectType](docs/TeamsObjectType.md)
 - [FLY.Client\Model.TeamsPolicyCreationModel](docs/TeamsPolicyCreationModel.md)
 - [FLY.Client\Model.TeamsPolicyModel](docs/TeamsPolicyModel.md)
 - [FLY.Client\Model.TeamsPrivacyDistributionModel](docs/TeamsPrivacyDistributionModel.md)
 - [FLY.Client\Model.TemplateMappingCreationModel](docs/TemplateMappingCreationModel.md)
 - [FLY.Client\Model.TemplateMappingItemModel](docs/TemplateMappingItemModel.md)
 - [FLY.Client\Model.TemplateMappingItemType](docs/TemplateMappingItemType.md)
 - [FLY.Client\Model.TemplateMappingModel](docs/TemplateMappingModel.md)
 - [FLY.Client\Model.TenantDiscoveryJobSettingsModel](docs/TenantDiscoveryJobSettingsModel.md)
 - [FLY.Client\Model.TenantDiscoveryModel](docs/TenantDiscoveryModel.md)
 - [FLY.Client\Model.Unit](docs/Unit.md)
 - [FLY.Client\Model.UploadModuleType](docs/UploadModuleType.md)
 - [FLY.Client\Model.UrlMappingCreationModel](docs/UrlMappingCreationModel.md)
 - [FLY.Client\Model.UrlMappingItemModel](docs/UrlMappingItemModel.md)
 - [FLY.Client\Model.UrlMappingModel](docs/UrlMappingModel.md)
 - [FLY.Client\Model.UrlResultModel](docs/UrlResultModel.md)
 - [FLY.Client\Model.UserMappingCreationModel](docs/UserMappingCreationModel.md)
 - [FLY.Client\Model.UserMappingItemModel](docs/UserMappingItemModel.md)
 - [FLY.Client\Model.UserMappingItemType](docs/UserMappingItemType.md)
 - [FLY.Client\Model.UserMappingModel](docs/UserMappingModel.md)
 - [FLY.Client\Model.UserMappingRuleModel](docs/UserMappingRuleModel.md)
 - [FLY.Client\Model.UserMappingRuleProperty](docs/UserMappingRuleProperty.md)


## Documentation for Authorization


### Bearer


- **Type**: HTTP basic authentication

