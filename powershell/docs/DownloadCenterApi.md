# FLY.Client.FLY.Client\Api.DownloadCenterApi

All URIs are relative to *{Fly_API_Endpoint}*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-ReportJobs**](DownloadCenterApi.md#Get-ReportJobs) | **POST** /downloadcenter/refresh | get information of report jobs
[**Get-ReportUrl**](DownloadCenterApi.md#Get-ReportUrl) | **GET** /downloadcenter/reporturl | get report url by job id


<a name="Get-ReportJobs"></a>
# **Get-ReportJobs**
> GenerateReportJobModelApiQueryResult Get-ReportJobs<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

get information of report jobs

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure Bearer token for authorization: Bearer
$Configuration.AccessToken = "YOUR_BEARER_TOKEN"

# You can find the Fly API Endpoint in Fly user guide for your environment.
$Configuration["BaseUrl"] = "{Fly_API_Endpoint}"


$RequestBody = "MyRequestBody" # String[] |  (optional)

# get information of report jobs
try {
    $Result = Get-ReportJobs -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Get-ReportJobs: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RequestBody** | [**String[]**](String.md)|  | [optional] 

### Return type

[**GenerateReportJobModelApiQueryResult**](GenerateReportJobModelApiQueryResult.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json, application/*+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-ReportUrl"></a>
# **Get-ReportUrl**
> UrlResultModel Get-ReportUrl<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JobId] <String><br>

get report url by job id

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure Bearer token for authorization: Bearer
$Configuration.AccessToken = "YOUR_BEARER_TOKEN"

# You can find the Fly API Endpoint in Fly user guide for your environment.
$Configuration["BaseUrl"] = "{Fly_API_Endpoint}"


$JobId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String |  (optional)

# get report url by job id
try {
    $Result = Get-ReportUrl -JobId $JobId
} catch {
    Write-Host ("Exception occurred when calling Get-ReportUrl: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **JobId** | **String**|  | [optional] 

### Return type

[**UrlResultModel**](UrlResultModel.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/*+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

