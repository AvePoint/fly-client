# ErrorModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**StatusCode** | [**HttpStatusCode**](HttpStatusCode.md) |  | [optional] 
**ErrorCode** | **String** |  | [optional] 
**ErrorMessage** | **String** |  | [optional] 
**RequestId** | **String** |  | [optional] 
**Timestamp** | **System.DateTime** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ErrorModel = Initialize-FLY.ClientErrorModel  -StatusCode null `
 -ErrorCode null `
 -ErrorMessage null `
 -RequestId null `
 -Timestamp null
```

- Convert the resource to JSON
```powershell
$ErrorModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

