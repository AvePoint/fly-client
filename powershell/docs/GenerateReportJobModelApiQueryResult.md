# GenerateReportJobModelApiQueryResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NextLink** | **String** |  | [optional] 
**VarData** | [**GenerateReportJobModel[]**](GenerateReportJobModel.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GenerateReportJobModelApiQueryResult = Initialize-FLY.ClientGenerateReportJobModelApiQueryResult  -NextLink null `
 -VarData null
```

- Convert the resource to JSON
```powershell
$GenerateReportJobModelApiQueryResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

