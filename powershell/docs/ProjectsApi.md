# FLY.Client.FLY.Client\Api.ProjectsApi

All URIs are relative to *{Fly_API_Endpoint}*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-CheckProjectExist**](ProjectsApi.md#Invoke-CheckProjectExist) | **POST** /projects/validate | check if the project name already exists
[**New-Project**](ProjectsApi.md#New-Project) | **POST** /projects | create a new project
[**Start-ErrorReportJob**](ProjectsApi.md#start-errorreportjob) | **POST** /projects/reports/mergeerrors | generate error report per project
[**Get-ProjectMappings**](ProjectsApi.md#Get-ProjectMappings) | **GET** /projects/{projectId}/mappings/summaries | get project mapping summaries
[**Get-Projects**](ProjectsApi.md#Get-Projects) | **GET** /projects/summaries | get project summaries


<a name="Invoke-CheckProjectExist"></a>
# **Invoke-CheckProjectExist**
> Boolean Invoke-CheckProjectExist<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>

check if the project name already exists

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure Bearer token for authorization: Bearer
$Configuration.AccessToken = "YOUR_BEARER_TOKEN"

# You can find the Fly API Endpoint in Fly user guide for your environment.
$Configuration["BaseUrl"] = "{Fly_API_Endpoint}"


$Id = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String |  (optional)
$Name = "MyName" # String |  (optional)

# check if the project name already exists
try {
    $Result = Invoke-CheckProjectExist -Id $Id -Name $Name
} catch {
    Write-Host ("Exception occurred when calling Invoke-CheckProjectExist: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**|  | [optional] 
 **Name** | **String**|  | [optional] 

### Return type

**Boolean**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/*+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-Project"></a>
# **New-Project**
> void New-Project<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectCreationModel] <PSCustomObject><br>

create a new project

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure Bearer token for authorization: Bearer
$Configuration.AccessToken = "YOUR_BEARER_TOKEN"

# You can find the Fly API Endpoint in Fly user guide for your environment.
$Configuration["BaseUrl"] = "{Fly_API_Endpoint}"


$ProjectCreationModel = New-ProjectCreationModel -Name "MyName" -Description "MyDescription" -SourcePlatform "0" -SourceConnectionId "MySourceConnectionId" -DestinationPlatform "0" -DestinationConnectionId "MyDestinationConnectionId" -PolicyId "MyPolicyId" -TagIds "MyTagIds" # ProjectCreationModel |  (optional)

# create a new project
try {
    $Result = New-Project -ProjectCreationModel $ProjectCreationModel
} catch {
    Write-Host ("Exception occurred when calling New-Project: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProjectCreationModel** | [**ProjectCreationModel**](ProjectCreationModel.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json, text/json, application/*+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="start-errorreportjob"></a>
# **Start-ErrorReportJob**
> String Start-ErrorReportJob<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GenerateProjectErrorReportSettingsModel] <PSCustomObject><br>

generate error report per project

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure Bearer token for authorization: Bearer
$Configuration.AccessToken = "YOUR_BEARER_TOKEN"

# You can find the Fly API Endpoint in Fly user guide for your environment.
$Configuration["BaseUrl"] = "{Fly_API_Endpoint}"


$GenerateProjectErrorReportSettingsModel = New-GenerateProjectErrorReportSettingsModel -TimeZone 0 -ReportFileType "0" -ProjectIds "MyProjectIds" # GenerateProjectErrorReportSettingsModel |  (optional)

# generate error report per project
try {
    $Result = Start-ErrorReportJob -GenerateProjectErrorReportSettingsModel $GenerateProjectErrorReportSettingsModel
} catch {
    Write-Host ("Exception occurred when calling Start-ErrorReportJob: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GenerateProjectErrorReportSettingsModel** | [**GenerateProjectErrorReportSettingsModel**](GenerateProjectErrorReportSettingsModel.md)|  | [optional] 

### Return type

**String**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json, application/*+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-ProjectMappings"></a>
# **Get-ProjectMappings**
> ProjectMappingSummaryModelApiQueryResult Get-ProjectMappings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Stages] <PSCustomObject[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StageStatuses] <PSCustomObject[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Statuses] <PSCustomObject[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IsScheduled] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Search] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SortBy] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SortOrder] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Top] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Skip] <System.Nullable[Int32]><br>

get project mapping summaries

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure Bearer token for authorization: Bearer
$Configuration.AccessToken = "YOUR_BEARER_TOKEN"

# You can find the Fly API Endpoint in Fly user guide for your environment.
$Configuration["BaseUrl"] = "{Fly_API_Endpoint}"


$ProjectId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | 
$Stages = "0" # ProjectMappingItemStage[] |  (optional)
$StageStatuses = "0" # ProjectMappingItemStageStatus[] |  (optional)
$Statuses = "0" # ProjectMappingItemStatus[] |  (optional)
$IsScheduled = $true # Boolean |  (optional)
$Search = "MySearch" # String |  (optional)
$SortBy = "MySortBy" # String |  (optional)
$SortOrder = "0" # SortOrder |  (optional)
$Top = 56 # Int32 |  (optional)
$Skip = 56 # Int32 |  (optional)

# get project mapping summaries
try {
    $Result = Get-ProjectMappings -ProjectId $ProjectId -Stages $Stages -StageStatuses $StageStatuses -Statuses $Statuses -IsScheduled $IsScheduled -Search $Search -SortBy $SortBy -SortOrder $SortOrder -Top $Top -Skip $Skip
} catch {
    Write-Host ("Exception occurred when calling Get-ProjectMappings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProjectId** | **String**|  | 
 **Stages** | [**ProjectMappingItemStage[]**](ProjectMappingItemStage.md)|  | [optional] 
 **StageStatuses** | [**ProjectMappingItemStageStatus[]**](ProjectMappingItemStageStatus.md)|  | [optional] 
 **Statuses** | [**ProjectMappingItemStatus[]**](ProjectMappingItemStatus.md)|  | [optional] 
 **IsScheduled** | **Boolean**|  | [optional] 
 **Search** | **String**|  | [optional] 
 **SortBy** | **String**|  | [optional] 
 **SortOrder** | [**SortOrder**](SortOrder.md)|  | [optional] 
 **Top** | **Int32**|  | [optional] 
 **Skip** | **Int32**|  | [optional] 

### Return type

[**ProjectMappingSummaryModelApiQueryResult**](ProjectMappingSummaryModelApiQueryResult.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/*+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-Projects"></a>
# **Get-Projects**
> ProjectSummaryModelApiQueryResult Get-Projects<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TagIds] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Statuses] <PSCustomObject[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Types] <PSCustomObject[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Search] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SortBy] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SortOrder] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Top] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Skip] <System.Nullable[Int32]><br>

get project summaries

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure Bearer token for authorization: Bearer
$Configuration.AccessToken = "YOUR_BEARER_TOKEN"

# You can find the Fly API Endpoint in Fly user guide for your environment.
$Configuration["BaseUrl"] = "{Fly_API_Endpoint}"


$TagIds = "MyTagIds" # String[] |  (optional)
$Statuses = "0" # ProjectMappingItemStatus[] |  (optional)
$Types = "0" # PlatformType[] |  (optional)
$Search = "MySearch" # String |  (optional)
$SortBy = "MySortBy" # String |  (optional)
$SortOrder = "0" # SortOrder |  (optional)
$Top = 56 # Int32 |  (optional)
$Skip = 56 # Int32 |  (optional)

# get project summaries
try {
    $Result = Get-Projects -TagIds $TagIds -Statuses $Statuses -Types $Types -Search $Search -SortBy $SortBy -SortOrder $SortOrder -Top $Top -Skip $Skip
} catch {
    Write-Host ("Exception occurred when calling Get-Projects: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TagIds** | [**String[]**](String.md)|  | [optional] 
 **Statuses** | [**ProjectMappingItemStatus[]**](ProjectMappingItemStatus.md)|  | [optional] 
 **Types** | [**PlatformType[]**](PlatformType.md)|  | [optional] 
 **Search** | **String**|  | [optional] 
 **SortBy** | **String**|  | [optional] 
 **SortOrder** | [**SortOrder**](SortOrder.md)|  | [optional] 
 **Top** | **Int32**|  | [optional] 
 **Skip** | **Int32**|  | [optional] 

### Return type

[**ProjectSummaryModelApiQueryResult**](ProjectSummaryModelApiQueryResult.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/*+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

