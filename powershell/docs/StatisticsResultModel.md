# StatisticsResultModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Start** | **Int64** |  | [optional] 
**VarEnd** | **Int64** |  | [optional] 
**Count** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$StatisticsResultModel = Initialize-FLY.ClientStatisticsResultModel  -Start null `
 -VarEnd null `
 -Count null
```

- Convert the resource to JSON
```powershell
$StatisticsResultModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

