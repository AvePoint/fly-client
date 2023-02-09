# ErrorItemDetailSummaryModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Path** | **String** |  | [optional] 
**Platform** | [**PlatformType**](PlatformType.md) |  | [optional] 
**ItemType** | **Int32** |  | [optional] 
**ItemTypeName** | **String** |  | [optional] 
**StartTime** | **Int64** |  | [optional] 
**ErrorCode** | **String** |  | [optional] 
**Comment** | **String** |  | [optional] 
**Status** | **Int32** |  | [optional] 
**Name** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ErrorItemDetailSummaryModel = Initialize-FLY.ClientErrorItemDetailSummaryModel  -Path null `
 -Platform null `
 -ItemType null `
 -ItemTypeName null `
 -StartTime null `
 -ErrorCode null `
 -Comment null `
 -Status null `
 -Name null
```

- Convert the resource to JSON
```powershell
$ErrorItemDetailSummaryModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

