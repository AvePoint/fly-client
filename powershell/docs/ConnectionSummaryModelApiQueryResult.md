# ConnectionSummaryModelApiQueryResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NextLink** | **String** |  | [optional] 
**VarData** | [**ConnectionSummaryModel[]**](ConnectionSummaryModel.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ConnectionSummaryModelApiQueryResult = Initialize-FLY.ClientConnectionSummaryModelApiQueryResult  -NextLink null `
 -VarData null
```

- Convert the resource to JSON
```powershell
$ConnectionSummaryModelApiQueryResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

