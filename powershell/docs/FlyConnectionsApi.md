# Fly.Client.Fly.Client\Api.FlyConnectionsApi

All URIs are relative to *{Fly_API_Endpoint}*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-FlyConnections**](FlyConnectionsApi.md#Get-FlyConnections) | **GET** /connections/summaries | Get connections by paging query  supported sort fields: name, type


<a name="Get-FlyConnections"></a>
# **Get-FlyConnections**
> ConnectionSummaryModelApiQueryResult Get-FlyConnections<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Types] <PSCustomObject[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sides] <PSCustomObject[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Search] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SortBy] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SortOrder] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Top] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Skip] <System.Nullable[Int32]><br>

Get connections by paging query  supported sort fields: name, type

### Example
```powershell
# General setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-FlyConfiguration
# Configure Bearer token for authorization: Bearer
$Configuration.AccessToken = "YOUR_BEARER_TOKEN"

# You can find the Fly API Endpoint in Fly user guide for your environment.
$Configuration["BaseUrl"] = "{Fly_API_Endpoint}"


$Types = "0" # PlatformType[] | The filter condition by connection type (optional)
$Sides = "0" # ConnectionSide[] | The filter condition by connection usage (optional)
$Search = "MySearch" # String | Search by name field (optional)
$SortBy = "MySortBy" # String | Order by one field (optional)
$SortOrder = New-SortOrder # SortOrder | Order by type (optional)
$Top = 56 # Int32 | Define the number of records you want to return, default value is 20 (optional)
$Skip = 56 # Int32 | Define the number of records you want to skip, default value is 0 (optional)

# Get connections by paging query  supported sort fields: name, type
try {
    $Result = Get-FlyConnections -Types $Types -Sides $Sides -Search $Search -SortBy $SortBy -SortOrder $SortOrder -Top $Top -Skip $Skip
} catch {
    Write-Host ("Exception occurred when calling Get-FlyConnections: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Types** | [**PlatformType[]**](PlatformType.md)| The filter condition by connection type | [optional] 
 **Sides** | [**ConnectionSide[]**](ConnectionSide.md)| The filter condition by connection usage | [optional] 
 **Search** | **String**| Search by name field | [optional] 
 **SortBy** | **String**| Order by one field | [optional] 
 **SortOrder** | [**SortOrder**](SortOrder.md)| Order by type | [optional] 
 **Top** | **Int32**| Define the number of records you want to return, default value is 20 | [optional] 
 **Skip** | **Int32**| Define the number of records you want to skip, default value is 0 | [optional] 

### Return type

[**ConnectionSummaryModelApiQueryResult**](ConnectionSummaryModelApiQueryResult.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json, application/*+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

