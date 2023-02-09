# ContainerSummaryModelApiQueryResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NextLink** | **String** |  | [optional] 
**VarData** | [**ContainerSummaryModel[]**](ContainerSummaryModel.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ContainerSummaryModelApiQueryResult = Initialize-FLY.ClientContainerSummaryModelApiQueryResult  -NextLink null `
 -VarData null
```

- Convert the resource to JSON
```powershell
$ContainerSummaryModelApiQueryResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

