# FLY.Client.FLY.Client\Api.PoliciesApi

All URIs are relative to *{Fly_API_Endpoint}*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-Policies**](PoliciesApi.md#Get-Policies) | **GET** /policies/summaries | get policy summaries


<a name="Get-Policies"></a>
# **Get-Policies**
> PolicySummaryModelApiQueryResult Get-Policies<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PlatformType] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Search] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SortBy] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SortOrder] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Top] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Skip] <System.Nullable[Int32]><br>

get policy summaries

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure Bearer token for authorization: Bearer
$Configuration.AccessToken = "YOUR_BEARER_TOKEN"

# You can find the Fly API Endpoint in Fly user guide for your environment.
$Configuration["BaseUrl"] = "{Fly_API_Endpoint}"


$PlatformType = "0" # PlatformType |  (optional)
$Search = "MySearch" # String |  (optional)
$SortBy = "MySortBy" # String |  (optional)
$SortOrder = "0" # SortOrder |  (optional)
$Top = 56 # Int32 |  (optional)
$Skip = 56 # Int32 |  (optional)

# get policy summaries
try {
    $Result = Get-Policies -PlatformType $PlatformType -Search $Search -SortBy $SortBy -SortOrder $SortOrder -Top $Top -Skip $Skip
} catch {
    Write-Host ("Exception occurred when calling Get-Policies: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PlatformType** | [**PlatformType**](PlatformType.md)|  | [optional] 
 **Search** | **String**|  | [optional] 
 **SortBy** | **String**|  | [optional] 
 **SortOrder** | [**SortOrder**](SortOrder.md)|  | [optional] 
 **Top** | **Int32**|  | [optional] 
 **Skip** | **Int32**|  | [optional] 

### Return type

[**PolicySummaryModelApiQueryResult**](PolicySummaryModelApiQueryResult.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/*+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

