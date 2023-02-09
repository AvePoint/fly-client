# FilterSummaryModelApiQueryResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NextLink** | **String** |  | [optional] 
**VarData** | [**FilterSummaryModel[]**](FilterSummaryModel.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$FilterSummaryModelApiQueryResult = Initialize-FLY.ClientFilterSummaryModelApiQueryResult  -NextLink null `
 -VarData null
```

- Convert the resource to JSON
```powershell
$FilterSummaryModelApiQueryResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

