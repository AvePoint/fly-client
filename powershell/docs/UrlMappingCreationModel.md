# UrlMappingCreationModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**Platform** | [**PlatformType**](PlatformType.md) |  | [optional] 
**Type** | [**MappingProfileType**](MappingProfileType.md) |  | [optional] 
**Items** | [**UrlMappingItemModel[]**](UrlMappingItemModel.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UrlMappingCreationModel = Initialize-FLY.ClientUrlMappingCreationModel  -Name null `
 -Description null `
 -Platform null `
 -Type null `
 -Items null
```

- Convert the resource to JSON
```powershell
$UrlMappingCreationModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

