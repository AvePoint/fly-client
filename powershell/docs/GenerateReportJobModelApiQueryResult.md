# GenerateReportJobModelApiQueryResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NextLink** | **String** | The link of next page result, null if there is no more data | [optional] 
**VarData** | [**GenerateReportJobModel[]**](GenerateReportJobModel.md) | The real data set | [optional] 

## Examples

- Prepare the resource
```powershell
$GenerateReportJobModelApiQueryResult = Initialize-Fly.ClientGenerateReportJobModelApiQueryResult  -NextLink null `
 -VarData null
```

- Convert the resource to JSON
```powershell
$GenerateReportJobModelApiQueryResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
