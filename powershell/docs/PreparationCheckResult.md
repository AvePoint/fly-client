# PreparationCheckResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IsAppProfileConfigured** | **Boolean** |  | [optional] 
**IsServiceAccountConfigured** | **Boolean** |  | [optional] 
**IsScanProfileConfigured** | **Boolean** |  | [optional] 
**IsDelegateAppProfileConfigured** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PreparationCheckResult = Initialize-FLY.ClientPreparationCheckResult  -IsAppProfileConfigured null `
 -IsServiceAccountConfigured null `
 -IsScanProfileConfigured null `
 -IsDelegateAppProfileConfigured null
```

- Convert the resource to JSON
```powershell
$PreparationCheckResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

