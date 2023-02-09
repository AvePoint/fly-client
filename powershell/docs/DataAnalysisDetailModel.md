# DataAnalysisDetailModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Key** | **String** |  | [optional] 
**Label** | **String** |  | [optional] 
**Count** | **Int32** |  | [optional] 
**Properties** | **System.Collections.Hashtable** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DataAnalysisDetailModel = Initialize-FLY.ClientDataAnalysisDetailModel  -Key null `
 -Label null `
 -Count null `
 -Properties null
```

- Convert the resource to JSON
```powershell
$DataAnalysisDetailModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

