# MappingSummaryModelApiQueryResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NextLink** | **String** |  | [optional] 
**VarData** | [**MappingSummaryModel[]**](MappingSummaryModel.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$MappingSummaryModelApiQueryResult = Initialize-FLY.ClientMappingSummaryModelApiQueryResult  -NextLink null `
 -VarData null
```

- Convert the resource to JSON
```powershell
$MappingSummaryModelApiQueryResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

