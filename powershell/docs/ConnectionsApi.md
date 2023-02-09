# FLY.Client.FLY.Client\Api.ConnectionsApi

All URIs are relative to *{Fly_API_Endpoint}*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-Connections**](ConnectionsApi.md#Get-Connections) | **GET** /connections/summaries | get connection summaries


<a name="Get-Connections"></a>
# **Get-Connections**
> ConnectionSummaryModelApiQueryResult Get-Connections<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Types] <PSCustomObject[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sides] <PSCustomObject[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Search] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SortBy] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SortOrder] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Top] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Skip] <System.Nullable[Int32]><br>

get connection summaries

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure Bearer token for authorization: Bearer
$Configuration.AccessToken = "YOUR_BEARER_TOKEN"

# You can find the Fly API Endpoint in Fly user guide for your environment.
$Configuration["BaseUrl"] = "{Fly_API_Endpoint}"


$Types = "0" # PlatformType[] |  (optional)
$Sides = "0" # ConnectionSide[] |  (optional)
$Search = "MySearch" # String |  (optional)
$SortBy = "MySortBy" # String |  (optional)
$SortOrder = "0" # SortOrder |  (optional)
$Top = 56 # Int32 |  (optional)
$Skip = 56 # Int32 |  (optional)

# get connection summaries
try {
    $Result = Get-Connections -Types $Types -Sides $Sides -Search $Search -SortBy $SortBy -SortOrder $SortOrder -Top $Top -Skip $Skip
} catch {
    Write-Host ("Exception occurred when calling Get-Connections: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Types** | [**PlatformType[]**](PlatformType.md)|  | [optional] 
 **Sides** | [**ConnectionSide[]**](ConnectionSide.md)|  | [optional] 
 **Search** | **String**|  | [optional] 
 **SortBy** | **String**|  | [optional] 
 **SortOrder** | [**SortOrder**](SortOrder.md)|  | [optional] 
 **Top** | **Int32**|  | [optional] 
 **Skip** | **Int32**|  | [optional] 

### Return type

[**ConnectionSummaryModelApiQueryResult**](ConnectionSummaryModelApiQueryResult.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/*+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

