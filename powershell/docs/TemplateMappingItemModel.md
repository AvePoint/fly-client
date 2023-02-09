# TemplateMappingItemModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | [**TemplateMappingItemType**](TemplateMappingItemType.md) |  | [optional] 
**SourceValue** | **String** |  | [optional] 
**DestinationValue** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TemplateMappingItemModel = Initialize-FLY.ClientTemplateMappingItemModel  -Type null `
 -SourceValue null `
 -DestinationValue null
```

- Convert the resource to JSON
```powershell
$TemplateMappingItemModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

