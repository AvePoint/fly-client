# DataAnalysisSummaryModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ItemCount** | **Int32** |  | [optional] 
**DataSize** | **Int64** |  | [optional] 
**UpdateTime** | **Int64** |  | [optional] 
**ObjectDetails** | [**System.Collections.Hashtable**](DataAnalysisDetailModel.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DataAnalysisSummaryModel = Initialize-FLY.ClientDataAnalysisSummaryModel  -ItemCount null `
 -DataSize null `
 -UpdateTime null `
 -ObjectDetails null
```

- Convert the resource to JSON
```powershell
$DataAnalysisSummaryModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

