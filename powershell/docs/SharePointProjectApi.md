# FLY.Client.FLY.Client\Api.SharePointProjectApi

All URIs are relative to *{Fly_API_Endpoint}*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Add-SharePointMappings**](SharePointProjectApi.md#add-sharepointmappings) | **POST** /projects/sharepoint/{projectId}/mappings | Add SharePoint project mappings into target project
[**Start-SharePointReportJob**](SharePointProjectApi.md#start-sharepointreportjob) | **POST** /projects/sharepoint/{projectId}/reports/generate | Start a report collection job against the selected project mappings.
[**Start-SharePointPreScanJob**](SharePointProjectApi.md#start-sharepointprescanjob) | **POST** /projects/sharepoint/{projectId}/assessments | Start a pre-scan job against the selected project mappings.
[**Start-SharePointMigrationJob**](SharePointProjectApi.md#start-sharepointmigrationjob) | **POST** /projects/sharepoint/{projectId}/migrations | Start a migration job against the selected project mappings.
[**Start-SharePointVerificationJob**](SharePointProjectApi.md#start-sharepointverificationjob) | **POST** /projects/sharepoint/{projectId}/verifications | Start a verification operation against the selected project mappings.


<a name="add-sharepointmappings"></a>
# **Add-SharePointMappings**
> Boolean Add-SharePointMappings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SharePointMappingCreationModel] <PSCustomObject[]><br>

Add SharePoint project mappings into target project

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure Bearer token for authorization: Bearer
$Configuration.AccessToken = "YOUR_BEARER_TOKEN"

# You can find the Fly API Endpoint in Fly user guide for your environment.
$Configuration["BaseUrl"] = "{Fly_API_Endpoint}"


$ProjectId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | The GUID of the project to add into
$SharePointMappingCreationModel = New-SharePointMappingCreationModel -Method "0" -ProjectId "MyProjectId" -SourceName "MySourceName" -SourceIdentity "MySourceIdentity" -SourceType 0 -DestinationName "MyDestinationName" -DestinationIdentity "MyDestinationIdentity" -DestinationType 0 # SharePointMappingCreationModel[] | A list of project mappings to add (optional)

# Add SharePoint project mappings into target project
try {
    $Result = Add-SharePointMappings -ProjectId $ProjectId -SharePointMappingCreationModel $SharePointMappingCreationModel
} catch {
    Write-Host ("Exception occurred when calling Add-SharePointMappings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProjectId** | **String**| The GUID of the project to add into | 
 **SharePointMappingCreationModel** | [**SharePointMappingCreationModel[]**](SharePointMappingCreationModel.md)| A list of project mappings to add | [optional] 

### Return type

**Boolean**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json, application/*+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="start-sharepointreportjob"></a>
# **Start-SharePointReportJob**
> String Start-SharePointReportJob<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GenerateReportSettingsModel] <PSCustomObject><br>

Start a report collection job against the selected project mappings.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure Bearer token for authorization: Bearer
$Configuration.AccessToken = "YOUR_BEARER_TOKEN"

# You can find the Fly API Endpoint in Fly user guide for your environment.
$Configuration["BaseUrl"] = "{Fly_API_Endpoint}"


$ProjectId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Identifier of the project containing the selected mappings
$GenerateReportSettingsModel = New-GenerateReportSettingsModel -IncludeMappingSummary $false -IncludeDetails $false -ReportItemStatus "0" -ReportFileType "0" -TimeZone 0 -IsSelectAll $false -Search "MySearch" -MappingIds "MyMappingIds" -Stages 0 -StageStatuses 0 -Statuses "0" # GenerateReportSettingsModel | Job configuration information. (optional)

# Start a report collection job against the selected project mappings.
try {
    $Result = Start-SharePointReportJob -ProjectId $ProjectId -GenerateReportSettingsModel $GenerateReportSettingsModel
} catch {
    Write-Host ("Exception occurred when calling Start-SharePointReportJob: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProjectId** | **String**| Identifier of the project containing the selected mappings | 
 **GenerateReportSettingsModel** | [**GenerateReportSettingsModel**](GenerateReportSettingsModel.md)| Job configuration information. | [optional] 

### Return type

**String**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json, application/*+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="start-sharepointprescanjob"></a>
# **Start-SharePointPreScanJob**
> Boolean Start-SharePointPreScanJob<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectMappingOperationModel] <PSCustomObject><br>

Start a pre-scan job against the selected project mappings.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure Bearer token for authorization: Bearer
$Configuration.AccessToken = "YOUR_BEARER_TOKEN"

# You can find the Fly API Endpoint in Fly user guide for your environment.
$Configuration["BaseUrl"] = "{Fly_API_Endpoint}"


$ProjectId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Identifier of the project containing the selected mappings
$ProjectMappingOperationModel = New-ProjectMappingOperationModel -IsSelectAll $false -Search "MySearch" -MappingIds "MyMappingIds" -Stages 0 -StageStatuses 0 -Statuses "0" # ProjectMappingOperationModel | Job configuration information. (optional)

# Start a pre-scan job against the selected project mappings.
try {
    $Result = Start-SharePointPreScanJob -ProjectId $ProjectId -ProjectMappingOperationModel $ProjectMappingOperationModel
} catch {
    Write-Host ("Exception occurred when calling Start-SharePointPreScanJob: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProjectId** | **String**| Identifier of the project containing the selected mappings | 
 **ProjectMappingOperationModel** | [**ProjectMappingOperationModel**](ProjectMappingOperationModel.md)| Job configuration information. | [optional] 

### Return type

**Boolean**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json, application/*+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="start-sharepointmigrationjob"></a>
# **Start-SharePointMigrationJob**
> Boolean Start-SharePointMigrationJob<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MigrationJobSettingsModel] <PSCustomObject><br>

Start a migration job against the selected project mappings.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure Bearer token for authorization: Bearer
$Configuration.AccessToken = "YOUR_BEARER_TOKEN"

# You can find the Fly API Endpoint in Fly user guide for your environment.
$Configuration["BaseUrl"] = "{Fly_API_Endpoint}"


$ProjectId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Identifier of the project containing the selected mappings
$MigrationJobSettingsModel = New-MigrationJobSettingsModel -Type "0" -IsDeleteSource $false -ScheduledTime 0 -IsSelectAll $false -Search "MySearch" -MappingIds "MyMappingIds" -Stages 0 -StageStatuses 0 -Statuses "0" # MigrationJobSettingsModel | Job configuration information. (optional)

# Start a migration job against the selected project mappings.
try {
    $Result = Start-SharePointMigrationJob -ProjectId $ProjectId -MigrationJobSettingsModel $MigrationJobSettingsModel
} catch {
    Write-Host ("Exception occurred when calling Start-SharePointMigrationJob: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProjectId** | **String**| Identifier of the project containing the selected mappings | 
 **MigrationJobSettingsModel** | [**MigrationJobSettingsModel**](MigrationJobSettingsModel.md)| Job configuration information. | [optional] 

### Return type

**Boolean**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json, application/*+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="start-sharepointverificationjob"></a>
# **Start-SharePointVerificationJob**
> Boolean Start-SharePointVerificationJob<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectMappingOperationModel] <PSCustomObject><br>

Start a verification operation against the selected project mappings.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure Bearer token for authorization: Bearer
$Configuration.AccessToken = "YOUR_BEARER_TOKEN"

# You can find the Fly API Endpoint in Fly user guide for your environment.
$Configuration["BaseUrl"] = "{Fly_API_Endpoint}"


$ProjectId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Identifier of the project containing the selected mappings
$ProjectMappingOperationModel = New-ProjectMappingOperationModel -IsSelectAll $false -Search "MySearch" -MappingIds "MyMappingIds" -Stages 0 -StageStatuses 0 -Statuses "0" # ProjectMappingOperationModel | Job configuration information. (optional)

# Start a verification operation against the selected project mappings.
try {
    $Result = Start-SharePointVerificationJob -ProjectId $ProjectId -ProjectMappingOperationModel $ProjectMappingOperationModel
} catch {
    Write-Host ("Exception occurred when calling Start-SharePointVerificationJob: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProjectId** | **String**| Identifier of the project containing the selected mappings | 
 **ProjectMappingOperationModel** | [**ProjectMappingOperationModel**](ProjectMappingOperationModel.md)| Job configuration information. | [optional] 

### Return type

**Boolean**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json, application/*+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

