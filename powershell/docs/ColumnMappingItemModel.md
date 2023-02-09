# ColumnMappingItemModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ColumnMappingItems** | [**ColumnMappingValueItemModel[]**](ColumnMappingValueItemModel.md) |  | [optional] 
**ColumnType** | [**ColumnTypeCondition**](ColumnTypeCondition.md) |  | [optional] 
**IsSeparateSourceValue** | **Boolean** |  | [optional] 
**SourceValueSeparator** | **String** |  | [optional] 
**SourceValue** | **String** |  | [optional] 
**DestinationValue** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ColumnMappingItemModel = Initialize-FLY.ClientColumnMappingItemModel  -ColumnMappingItems null `
 -ColumnType null `
 -IsSeparateSourceValue null `
 -SourceValueSeparator null `
 -SourceValue null `
 -DestinationValue null
```

- Convert the resource to JSON
```powershell
$ColumnMappingItemModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

