# LabelMappingItemModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SourceValue** | **String** |  | [optional] 
**DestinationValue** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$LabelMappingItemModel = Initialize-FLY.ClientLabelMappingItemModel  -SourceValue null `
 -DestinationValue null
```

- Convert the resource to JSON
```powershell
$LabelMappingItemModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

