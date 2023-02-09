# ErrorItemDetailSummaryModelApiQueryResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NextLink** | **String** |  | [optional] 
**VarData** | [**ErrorItemDetailSummaryModel[]**](ErrorItemDetailSummaryModel.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ErrorItemDetailSummaryModelApiQueryResult = Initialize-FLY.ClientErrorItemDetailSummaryModelApiQueryResult  -NextLink null `
 -VarData null
```

- Convert the resource to JSON
```powershell
$ErrorItemDetailSummaryModelApiQueryResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

