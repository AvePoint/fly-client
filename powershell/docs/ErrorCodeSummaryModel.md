# ErrorCodeSummaryModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ItemCount** | **Int32** |  | [optional] 
**ErrorCode** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ErrorCodeSummaryModel = Initialize-FLY.ClientErrorCodeSummaryModel  -ItemCount null `
 -ErrorCode null
```

- Convert the resource to JSON
```powershell
$ErrorCodeSummaryModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

