# DiscoveryJobErrorModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**JobId** | **String** |  | [optional] 
**ErrorCodes** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DiscoveryJobErrorModel = Initialize-FLY.ClientDiscoveryJobErrorModel  -JobId null `
 -ErrorCodes null
```

- Convert the resource to JSON
```powershell
$DiscoveryJobErrorModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

