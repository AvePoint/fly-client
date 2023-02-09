# FilterCreationModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**Platform** | [**PlatformType**](PlatformType.md) |  | [optional] 
**Items** | [**FilterItemModel[]**](FilterItemModel.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$FilterCreationModel = Initialize-FLY.ClientFilterCreationModel  -Name null `
 -Description null `
 -Platform null `
 -Items null
```

- Convert the resource to JSON
```powershell
$FilterCreationModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

