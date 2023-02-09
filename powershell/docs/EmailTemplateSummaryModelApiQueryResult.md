# EmailTemplateSummaryModelApiQueryResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NextLink** | **String** |  | [optional] 
**VarData** | [**EmailTemplateSummaryModel[]**](EmailTemplateSummaryModel.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EmailTemplateSummaryModelApiQueryResult = Initialize-FLY.ClientEmailTemplateSummaryModelApiQueryResult  -NextLink null `
 -VarData null
```

- Convert the resource to JSON
```powershell
$EmailTemplateSummaryModelApiQueryResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

