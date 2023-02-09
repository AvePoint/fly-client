# ProjectMappingSummaryModelApiQueryResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NextLink** | **String** |  | [optional] 
**VarData** | [**ProjectMappingSummaryModel[]**](ProjectMappingSummaryModel.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProjectMappingSummaryModelApiQueryResult = Initialize-FLY.ClientProjectMappingSummaryModelApiQueryResult  -NextLink null `
 -VarData null
```

- Convert the resource to JSON
```powershell
$ProjectMappingSummaryModelApiQueryResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

