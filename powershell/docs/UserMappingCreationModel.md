# UserMappingCreationModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DefaultDestinationUser** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**Platform** | [**PlatformType**](PlatformType.md) |  | [optional] 
**Type** | [**MappingProfileType**](MappingProfileType.md) |  | [optional] 
**Items** | [**UserMappingItemModel[]**](UserMappingItemModel.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UserMappingCreationModel = Initialize-FLY.ClientUserMappingCreationModel  -DefaultDestinationUser null `
 -Name null `
 -Description null `
 -Platform null `
 -Type null `
 -Items null
```

- Convert the resource to JSON
```powershell
$UserMappingCreationModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

