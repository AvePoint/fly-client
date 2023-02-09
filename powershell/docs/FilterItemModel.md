# FilterItemModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Level** | [**FilterLevel**](FilterLevel.md) |  | [optional] 
**CriteriaItems** | [**FilterCriteriaItemModel[]**](FilterCriteriaItemModel.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$FilterItemModel = Initialize-FLY.ClientFilterItemModel  -Level null `
 -CriteriaItems null
```

- Convert the resource to JSON
```powershell
$FilterItemModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

