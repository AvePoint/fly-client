# StatisticsQueryModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Start** | **Int64** |  | [optional] 
**VarEnd** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$StatisticsQueryModel = Initialize-FLY.ClientStatisticsQueryModel  -Start null `
 -VarEnd null
```

- Convert the resource to JSON
```powershell
$StatisticsQueryModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

