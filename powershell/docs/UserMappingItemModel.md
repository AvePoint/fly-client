# UserMappingItemModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | [**UserMappingItemType**](UserMappingItemType.md) |  | [optional] 
**SourceValue** | **String** |  | [optional] 
**DestinationValue** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UserMappingItemModel = Initialize-FLY.ClientUserMappingItemModel  -Type null `
 -SourceValue null `
 -DestinationValue null
```

- Convert the resource to JSON
```powershell
$UserMappingItemModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

