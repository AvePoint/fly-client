# Fly.Client.Fly.Client\Api.FlyProjectsApi

All URIs are relative to *{Fly_API_Endpoint}*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-FlyCheckProjectExist**](FlyProjectsApi.md#Invoke-FlyCheckProjectExist) | **POST** /projects/validate | Check if the project name already exists
[**New-FlyProject**](FlyProjectsApi.md#New-FlyProject) | **POST** /projects | Create a new project
[**Start-FlyErrorReportJob**](FlyProjectsApi.md#start-flyerrorreportjob) | **POST** /projects/reports/mergeerrors | Generate error report per project.
[**Get-FlyProjectMappings**](FlyProjectsApi.md#Get-FlyProjectMappings) | **GET** /projects/{projectId}/mappings/summaries | Get project mapping summaries by paging query
[**Get-FlyProjects**](FlyProjectsApi.md#Get-FlyProjects) | **GET** /projects/summaries | Get project summaries by paging query  supported sort fields: name


<a name="Invoke-FlyCheckProjectExist"></a>
# **Invoke-FlyCheckProjectExist**
> Boolean Invoke-FlyCheckProjectExist<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Check if the project name already exists

### Example
```powershell
# General setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-FlyConfiguration
# Configure Bearer token for authorization: Bearer
$Configuration.AccessToken = "YOUR_BEARER_TOKEN"

# You can find the Fly API Endpoint in Fly user guide for your environment.
$Configuration["BaseUrl"] = "{Fly_API_Endpoint}"


$Name = "MyName" # String | The name of the project which you want to check
$Id = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | The GUID of the project which you want to check, not required (optional)

# Check if the project name already exists
try {
    $Result = Invoke-FlyCheckProjectExist -Name $Name -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-FlyCheckProjectExist: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**| The name of the project which you want to check | 
 **Id** | **String**| The GUID of the project which you want to check, not required | [optional] 

### Return type

**Boolean**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/*+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-FlyProject"></a>
# **New-FlyProject**
> void New-FlyProject<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProjectCreationModel] <PSCustomObject><br>

Create a new project

### Example
```powershell
# General setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-FlyConfiguration
# Configure Bearer token for authorization: Bearer
$Configuration.AccessToken = "YOUR_BEARER_TOKEN"

# You can find the Fly API Endpoint in Fly user guide for your environment.
$Configuration["BaseUrl"] = "{Fly_API_Endpoint}"


$PlatformType = New-PlatformType 
$ProjectCreationModel = New-ProjectCreationModel -Name "MyName" -SourcePlatform $PlatformType -SourceConnectionId "MySourceConnectionId" -DestinationPlatform $PlatformType -DestinationConnectionId "MyDestinationConnectionId" -PolicyId "MyPolicyId" -TagIds "MyTagIds" # ProjectCreationModel | The information for project creation

# Create a new project
try {
    $Result = New-FlyProject -ProjectCreationModel $ProjectCreationModel
} catch {
    Write-Host ("Exception occurred when calling New-FlyProject: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProjectCreationModel** | [**ProjectCreationModel**](ProjectCreationModel.md)| The information for project creation | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, text/json, application/*+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="start-flyerrorreportjob"></a>
# **Start-FlyErrorReportJob**
> String Start-FlyErrorReportJob<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GenerateProjectErrorReportSettingsModel] <PSCustomObject><br>

Generate error report per project.

### Example
```powershell
# General setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-FlyConfiguration
# Configure Bearer token for authorization: Bearer
$Configuration.AccessToken = "YOUR_BEARER_TOKEN"

# You can find the Fly API Endpoint in Fly user guide for your environment.
$Configuration["BaseUrl"] = "{Fly_API_Endpoint}"


$ReportFileType = New-ReportFileType 
$GenerateProjectErrorReportSettingsModel = New-GenerateProjectErrorReportSettingsModel -TimeZone 0 -ReportFileType $ReportFileType -ProjectIds "MyProjectIds" # GenerateProjectErrorReportSettingsModel | Generate error report job configration information.

# Generate error report per project.
try {
    $Result = Start-FlyErrorReportJob -GenerateProjectErrorReportSettingsModel $GenerateProjectErrorReportSettingsModel
} catch {
    Write-Host ("Exception occurred when calling Start-FlyErrorReportJob: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GenerateProjectErrorReportSettingsModel** | [**GenerateProjectErrorReportSettingsModel**](GenerateProjectErrorReportSettingsModel.md)| Generate error report job configration information. | 

### Return type

**String**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json, application/*+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-FlyProjectMappings"></a>
# **Get-FlyProjectMappings**
> ProjectMappingSummaryModelApiQueryResult Get-FlyProjectMappings<br>
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

Get project mapping summaries by paging query

### Example
```powershell
# General setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-FlyConfiguration
# Configure Bearer token for authorization: Bearer
$Configuration.AccessToken = "YOUR_BEARER_TOKEN"

# You can find the Fly API Endpoint in Fly user guide for your environment.
$Configuration["BaseUrl"] = "{Fly_API_Endpoint}"


$ProjectId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | The GUID of the project which the project mapping belongs to, required
$Stages = "0" # ProjectMappingItemStage[] | A list of Stages which will be used together with other serach conditions to filter project mappings. (optional)
$StageStatuses = "0" # ProjectMappingItemStageStatus[] | A list of Stage Statues which will be used together with other serach conditions to filter project mappings. (optional)
$Statuses = "0" # ProjectMappingItemStatus[] | A list of Statuses which will be used together with other serach conditions to filter project mappings. (optional)
$IsScheduled = $true # Boolean | Specify a boolean value to filter the project mappings with Scheduled stage status, need add Waiting into StageStatuses parameter simultaneously if True. (optional)
$Search = "MySearch" # String | Search by name field (optional)
$SortBy = "MySortBy" # String | Order by one field (optional)
$SortOrder = New-SortOrder # SortOrder | Order by type (optional)
$Top = 56 # Int32 | Define the number of records you want to return, default value is 20 (optional)
$Skip = 56 # Int32 | Define the number of records you want to skip, default value is 0 (optional)

# Get project mapping summaries by paging query
try {
    $Result = Get-FlyProjectMappings -ProjectId $ProjectId -Stages $Stages -StageStatuses $StageStatuses -Statuses $Statuses -IsScheduled $IsScheduled -Search $Search -SortBy $SortBy -SortOrder $SortOrder -Top $Top -Skip $Skip
} catch {
    Write-Host ("Exception occurred when calling Get-FlyProjectMappings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ProjectId** | **String**| The GUID of the project which the project mapping belongs to, required | 
 **Stages** | [**ProjectMappingItemStage[]**](ProjectMappingItemStage.md)| A list of Stages which will be used together with other serach conditions to filter project mappings. | [optional] 
 **StageStatuses** | [**ProjectMappingItemStageStatus[]**](ProjectMappingItemStageStatus.md)| A list of Stage Statues which will be used together with other serach conditions to filter project mappings. | [optional] 
 **Statuses** | [**ProjectMappingItemStatus[]**](ProjectMappingItemStatus.md)| A list of Statuses which will be used together with other serach conditions to filter project mappings. | [optional] 
 **IsScheduled** | **Boolean**| Specify a boolean value to filter the project mappings with Scheduled stage status, need add Waiting into StageStatuses parameter simultaneously if True. | [optional] 
 **Search** | **String**| Search by name field | [optional] 
 **SortBy** | **String**| Order by one field | [optional] 
 **SortOrder** | [**SortOrder**](SortOrder.md)| Order by type | [optional] 
 **Top** | **Int32**| Define the number of records you want to return, default value is 20 | [optional] 
 **Skip** | **Int32**| Define the number of records you want to skip, default value is 0 | [optional] 

### Return type

[**ProjectMappingSummaryModelApiQueryResult**](ProjectMappingSummaryModelApiQueryResult.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/*+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-FlyProjects"></a>
# **Get-FlyProjects**
> ProjectSummaryModelApiQueryResult Get-FlyProjects<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TagIds] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Statuses] <PSCustomObject[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Types] <PSCustomObject[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Search] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SortBy] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SortOrder] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Top] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Skip] <System.Nullable[Int32]><br>

Get project summaries by paging query  supported sort fields: name

### Example
```powershell
# General setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-FlyConfiguration
# Configure Bearer token for authorization: Bearer
$Configuration.AccessToken = "YOUR_BEARER_TOKEN"

# You can find the Fly API Endpoint in Fly user guide for your environment.
$Configuration["BaseUrl"] = "{Fly_API_Endpoint}"


$TagIds = "MyTagIds" # String[] | A collection of GUID for tags (optional)
$Statuses = "0" # ProjectMappingItemStatus[] | A collection of Status which will be used together with other serach conditions to filter projects (optional)
$Types = "0" # PlatformType[] | A collection of Platform Types which will be used together with other serach conditions to filter projects (optional)
$Search = "MySearch" # String | Search by name field (optional)
$SortBy = "MySortBy" # String | Order by one field (optional)
$SortOrder = New-SortOrder # SortOrder | Order by type (optional)
$Top = 56 # Int32 | Define the number of records you want to return, default value is 20 (optional)
$Skip = 56 # Int32 | Define the number of records you want to skip, default value is 0 (optional)

# Get project summaries by paging query  supported sort fields: name
try {
    $Result = Get-FlyProjects -TagIds $TagIds -Statuses $Statuses -Types $Types -Search $Search -SortBy $SortBy -SortOrder $SortOrder -Top $Top -Skip $Skip
} catch {
    Write-Host ("Exception occurred when calling Get-FlyProjects: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TagIds** | [**String[]**](String.md)| A collection of GUID for tags | [optional] 
 **Statuses** | [**ProjectMappingItemStatus[]**](ProjectMappingItemStatus.md)| A collection of Status which will be used together with other serach conditions to filter projects | [optional] 
 **Types** | [**PlatformType[]**](PlatformType.md)| A collection of Platform Types which will be used together with other serach conditions to filter projects | [optional] 
 **Search** | **String**| Search by name field | [optional] 
 **SortBy** | **String**| Order by one field | [optional] 
 **SortOrder** | [**SortOrder**](SortOrder.md)| Order by type | [optional] 
 **Top** | **Int32**| Define the number of records you want to return, default value is 20 | [optional] 
 **Skip** | **Int32**| Define the number of records you want to skip, default value is 0 | [optional] 

### Return type

[**ProjectSummaryModelApiQueryResult**](ProjectSummaryModelApiQueryResult.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/*+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

