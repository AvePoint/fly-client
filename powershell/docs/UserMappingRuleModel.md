# UserMappingRuleModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enabled** | **Boolean** |  | [optional] 
**Sequence** | **Int32** |  | [optional] 
**Property** | [**UserMappingRuleProperty**](UserMappingRuleProperty.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UserMappingRuleModel = Initialize-FLY.ClientUserMappingRuleModel  -Enabled null `
 -Sequence null `
 -Property null
```

- Convert the resource to JSON
```powershell
$UserMappingRuleModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

