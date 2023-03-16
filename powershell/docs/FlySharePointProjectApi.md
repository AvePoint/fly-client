# Fly.Client.Fly.Client\Api.FlySharePointProjectApi

All URIs are relative to *{Fly_API_Endpoint}*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Add-FlySharePointMappings**](FlySharePointProjectApi.md#add-flysharepointmappings) | **POST** /projects/sharepoint/{projectId}/mappings | Add SharePoint project mappings into target project
[**Start-FlySharePointReportJob**](FlySharePointProjectApi.md#start-flysharepointreportjob) | **POST** /projects/sharepoint/{projectId}/reports/generate | Start a report collection job against the selected project mappings.
[**Start-FlySharePointPreScanJob**](FlySharePointProjectApi.md#start-flysharepointprescanjob) | **POST** /projects/sharepoint/{projectId}/assessments | Start a pre-scan job against the selected project mappings.
[**Start-FlySharePointMigrationJob**](FlySharePointProjectApi.md#start-flysharepointmigrationjob) | **POST** /projects/sharepoint/{projectId}/migrations | Start a migration job against the selected project mappings.
[**Start-FlySharePointVerificationJob**](FlySharePointProjectApi.md#start-flysharepointverificationjob) | **POST** /projects/sharepoint/{projectId}/verifications | Start a verification operation against the selected project mappings.


<a name="add-flysharepointmappings"></a>
# **Add-FlySharePointMappings**
> Boolean Add-FlySharePointMappings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SharePointMappingCreationModel] <PSCustomObject[]><br>

Add SharePoint project mappings into target project

### Example
```powershell
# General setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-FlyConfiguration
# Configure Bearer token for authorization: Bearer
$Configuration.AccessToken = "YOUR_BEARER_TOKEN"

# You can find the Fly API Endpoint in Fly user guide for your environment.
$Configuration["BaseUrl"] = "{Fly_API_Endpoint}"


$ProjectId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | The GUID of the project to add into
$SharePointMethodTypes = New-SharePointMethodTypes 
$SharePointMappingCreationModel = New-SharePointMappingCreationModel -Method $SharePointMethodTypes -ProjectId "MyProjectId" -SourceName "MySourceName" -SourceIdentity "MySourceIdentity" -SourceType 0 -DestinationName "MyDestinationName" -DestinationIdentity "MyDestinationIdentity" -DestinationType 0 # SharePointMappingCreationModel[] | A list of project mappings to add

# Add SharePoint project mappings into target project
try {
    $Result = Add-FlySharePointMappings -ProjectId $ProjectId -SharePointMappingCreationModel $SharePointMappingCreationModel
} catch {
    Write-Host ("Exception occurred when calling Add-FlySharePointMappings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProjectId** | **String**| The GUID of the project to add into | 
 **SharePointMappingCreationModel** | [**SharePointMappingCreationModel[]**](SharePointMappingCreationModel.md)| A list of project mappings to add | 

### Return type

**Boolean**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json, application/*+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="start-flysharepointreportjob"></a>
# **Start-FlySharePointReportJob**
> String Start-FlySharePointReportJob<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GenerateReportSettingsModel] <PSCustomObject><br>

Start a report collection job against the selected project mappings.

### Example
```powershell
# General setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-FlyConfiguration
# Configure Bearer token for authorization: Bearer
$Configuration.AccessToken = "YOUR_BEARER_TOKEN"

# You can find the Fly API Endpoint in Fly user guide for your environment.
$Configuration["BaseUrl"] = "{Fly_API_Endpoint}"


$ProjectId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Identifier of the project containing the selected mappings
$ReportFileType = New-ReportFileType 
$GenerateReportSettingsModel = New-GenerateReportSettingsModel -IncludeMappingSummary $false -IncludeDetails $false -ReportItemStatus "0" -ReportFileType $ReportFileType -TimeZone 0 -IsSelectAll $false -Search "MySearch" -MappingIds "MyMappingIds" -Stages "0" -StageStatuses "0" -Statuses "0" # GenerateReportSettingsModel | Job configuration information.

# Start a report collection job against the selected project mappings.
try {
    $Result = Start-FlySharePointReportJob -ProjectId $ProjectId -GenerateReportSettingsModel $GenerateReportSettingsModel
} catch {
    Write-Host ("Exception occurred when calling Start-FlySharePointReportJob: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProjectId** | **String**| Identifier of the project containing the selected mappings | 
 **GenerateReportSettingsModel** | [**GenerateReportSettingsModel**](GenerateReportSettingsModel.md)| Job configuration information. | 

### Return type

**String**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json, application/*+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="start-flysharepointprescanjob"></a>
# **Start-FlySharePointPreScanJob**
> Boolean Start-FlySharePointPreScanJob<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectMappingOperationModel] <PSCustomObject><br>

Start a pre-scan job against the selected project mappings.

### Example
```powershell
# General setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-FlyConfiguration
# Configure Bearer token for authorization: Bearer
$Configuration.AccessToken = "YOUR_BEARER_TOKEN"

# You can find the Fly API Endpoint in Fly user guide for your environment.
$Configuration["BaseUrl"] = "{Fly_API_Endpoint}"


$ProjectId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Identifier of the project containing the selected mappings
$ProjectMappingOperationModel = New-ProjectMappingOperationModel -IsSelectAll $false -Search "MySearch" -MappingIds "MyMappingIds" -Stages "0" -StageStatuses "0" -Statuses "0" # ProjectMappingOperationModel | Job configuration information.

# Start a pre-scan job against the selected project mappings.
try {
    $Result = Start-FlySharePointPreScanJob -ProjectId $ProjectId -ProjectMappingOperationModel $ProjectMappingOperationModel
} catch {
    Write-Host ("Exception occurred when calling Start-FlySharePointPreScanJob: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProjectId** | **String**| Identifier of the project containing the selected mappings | 
 **ProjectMappingOperationModel** | [**ProjectMappingOperationModel**](ProjectMappingOperationModel.md)| Job configuration information. | 

### Return type

**Boolean**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json, application/*+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="start-flysharepointmigrationjob"></a>
# **Start-FlySharePointMigrationJob**
> Boolean Start-FlySharePointMigrationJob<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MigrationJobSettingsModel] <PSCustomObject><br>

Start a migration job against the selected project mappings.

### Example
```powershell
# General setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-FlyConfiguration
# Configure Bearer token for authorization: Bearer
$Configuration.AccessToken = "YOUR_BEARER_TOKEN"

# You can find the Fly API Endpoint in Fly user guide for your environment.
$Configuration["BaseUrl"] = "{Fly_API_Endpoint}"


$ProjectId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Identifier of the project containing the selected mappings
$MappingJobType = New-MappingJobType 
$MigrationJobSettingsModel = New-MigrationJobSettingsModel -Type $MappingJobType -IsDeleteSource $false -ScheduledTime 0 -IsSelectAll $false -Search "MySearch" -MappingIds "MyMappingIds" -Stages "0" -StageStatuses "0" -Statuses "0" # MigrationJobSettingsModel | Job configuration information.

# Start a migration job against the selected project mappings.
try {
    $Result = Start-FlySharePointMigrationJob -ProjectId $ProjectId -MigrationJobSettingsModel $MigrationJobSettingsModel
} catch {
    Write-Host ("Exception occurred when calling Start-FlySharePointMigrationJob: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProjectId** | **String**| Identifier of the project containing the selected mappings | 
 **MigrationJobSettingsModel** | [**MigrationJobSettingsModel**](MigrationJobSettingsModel.md)| Job configuration information. | 

### Return type

**Boolean**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json, application/*+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="start-flysharepointverificationjob"></a>
# **Start-FlySharePointVerificationJob**
> Boolean Start-FlySharePointVerificationJob<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectMappingOperationModel] <PSCustomObject><br>

Start a verification operation against the selected project mappings.

### Example
```powershell
# General setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-FlyConfiguration
# Configure Bearer token for authorization: Bearer
$Configuration.AccessToken = "YOUR_BEARER_TOKEN"

# You can find the Fly API Endpoint in Fly user guide for your environment.
$Configuration["BaseUrl"] = "{Fly_API_Endpoint}"


$ProjectId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Identifier of the project containing the selected mappings
$ProjectMappingOperationModel = New-ProjectMappingOperationModel -IsSelectAll $false -Search "MySearch" -MappingIds "MyMappingIds" -Stages "0" -StageStatuses "0" -Statuses "0" # ProjectMappingOperationModel | Job configuration information.

# Start a verification operation against the selected project mappings.
try {
    $Result = Start-FlySharePointVerificationJob -ProjectId $ProjectId -ProjectMappingOperationModel $ProjectMappingOperationModel
} catch {
    Write-Host ("Exception occurred when calling Start-FlySharePointVerificationJob: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProjectId** | **String**| Identifier of the project containing the selected mappings | 
 **ProjectMappingOperationModel** | [**ProjectMappingOperationModel**](ProjectMappingOperationModel.md)| Job configuration information. | 

### Return type

**Boolean**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json, application/*+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

