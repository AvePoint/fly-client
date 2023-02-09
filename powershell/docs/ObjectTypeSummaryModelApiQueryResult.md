# ObjectTypeSummaryModelApiQueryResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NextLink** | **String** |  | [optional] 
**VarData** | [**ObjectTypeSummaryModel[]**](ObjectTypeSummaryModel.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ObjectTypeSummaryModelApiQueryResult = Initialize-FLY.ClientObjectTypeSummaryModelApiQueryResult  -NextLink null `
 -VarData null
```

- Convert the resource to JSON
```powershell
$ObjectTypeSummaryModelApiQueryResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

