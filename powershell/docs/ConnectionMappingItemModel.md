# ConnectionMappingItemModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SourceValue** | **String** |  | [optional] 
**DestinationValue** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ConnectionMappingItemModel = Initialize-FLY.ClientConnectionMappingItemModel  -SourceValue null `
 -DestinationValue null
```

- Convert the resource to JSON
```powershell
$ConnectionMappingItemModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

