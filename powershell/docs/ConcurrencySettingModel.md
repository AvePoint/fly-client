# ConcurrencySettingModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UseDefault** | **Boolean** |  | [optional] 
**CustomizedPodNumber** | **Int32** |  | [optional] 
**DefaultPodNumber** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ConcurrencySettingModel = Initialize-FLY.ClientConcurrencySettingModel  -UseDefault null `
 -CustomizedPodNumber null `
 -DefaultPodNumber null
```

- Convert the resource to JSON
```powershell
$ConcurrencySettingModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

