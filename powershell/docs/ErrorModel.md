# ErrorModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**StatusCode** | [**HttpStatusCode**](HttpStatusCode.md) |  | [optional] 
**ErrorCode** | **String** | The error code of current exception | [optional] 
**ErrorMessage** | **String** | The error message of current exception | [optional] 
**RequestId** | **String** | the request id of response | [optional] 
**Timestamp** | **System.DateTime** | The timestamp of current response | [optional] 

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
