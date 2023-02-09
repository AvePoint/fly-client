# ProjectSummaryModelApiQueryResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NextLink** | **String** |  | [optional] 
**VarData** | [**ProjectSummaryModel[]**](ProjectSummaryModel.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProjectSummaryModelApiQueryResult = Initialize-FLY.ClientProjectSummaryModelApiQueryResult  -NextLink null `
 -VarData null
```

- Convert the resource to JSON
```powershell
$ProjectSummaryModelApiQueryResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

