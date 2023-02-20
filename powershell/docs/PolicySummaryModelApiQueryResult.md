# PolicySummaryModelApiQueryResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NextLink** | **String** | The link of next page result, null if there is no more data | [optional] 
**VarData** | [**PolicySummaryModel[]**](PolicySummaryModel.md) | The real data set | [optional] 

## Examples

- Prepare the resource
```powershell
$PolicySummaryModelApiQueryResult = Initialize-FLY.ClientPolicySummaryModelApiQueryResult  -NextLink null `
 -VarData null
```

- Convert the resource to JSON
```powershell
$PolicySummaryModelApiQueryResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
