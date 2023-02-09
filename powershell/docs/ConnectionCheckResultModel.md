# ConnectionCheckResultModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IsAppProfileConfigured** | **Boolean** |  | [optional] 
**IsServiceAccountConfigured** | **Boolean** |  | [optional] 
**IsServiceAccountPoolConfigured** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ConnectionCheckResultModel = Initialize-FLY.ClientConnectionCheckResultModel  -IsAppProfileConfigured null `
 -IsServiceAccountConfigured null `
 -IsServiceAccountPoolConfigured null
```

- Convert the resource to JSON
```powershell
$ConnectionCheckResultModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

