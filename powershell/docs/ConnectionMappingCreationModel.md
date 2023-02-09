# ConnectionMappingCreationModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**Platform** | [**PlatformType**](PlatformType.md) |  | [optional] 
**Type** | [**MappingProfileType**](MappingProfileType.md) |  | [optional] 
**Items** | [**ConnectionMappingItemModel[]**](ConnectionMappingItemModel.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ConnectionMappingCreationModel = Initialize-FLY.ClientConnectionMappingCreationModel  -Name null `
 -Description null `
 -Platform null `
 -Type null `
 -Items null
```

- Convert the resource to JSON
```powershell
$ConnectionMappingCreationModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

