# SasUriModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Uri** | **String** |  | [optional] 
**FileName** | **String** |  | [optional] 
**ExpiredTime** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SasUriModel = Initialize-FLY.ClientSasUriModel  -Uri null `
 -FileName null `
 -ExpiredTime null
```

- Convert the resource to JSON
```powershell
$SasUriModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

