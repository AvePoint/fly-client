# FilterCriteriaItemModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Sequence** | **Int32** |  | [optional] 
**Operator** | [**LogicalOperator**](LogicalOperator.md) |  | [optional] 
**PropertyType** | [**PropertyType**](PropertyType.md) |  | [optional] 
**PropertyFlag** | [**PropertyFlag**](PropertyFlag.md) |  | [optional] 
**PropertyName** | **String** |  | [optional] 
**Condition** | [**FilterCondition**](FilterCondition.md) |  | [optional] 
**Value** | **String** |  | [optional] 
**ValueUnit** | [**Unit**](Unit.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$FilterCriteriaItemModel = Initialize-FLY.ClientFilterCriteriaItemModel  -Sequence null `
 -Operator null `
 -PropertyType null `
 -PropertyFlag null `
 -PropertyName null `
 -Condition null `
 -Value null `
 -ValueUnit null
```

- Convert the resource to JSON
```powershell
$FilterCriteriaItemModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

