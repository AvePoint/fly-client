# MoveMappingSettingsModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProjectId** | **String** |  | [optional] 
**IsSelectAll** | **Boolean** |  | [optional] 
**Search** | **String** |  | [optional] 
**MappingIds** | **String[]** |  | [optional] 
**Stages** | **Int32[]** |  | [optional] 
**StageStatuses** | **Int32[]** |  | [optional] 
**Statuses** | [**ProjectMappingItemStatus[]**](ProjectMappingItemStatus.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$MoveMappingSettingsModel = Initialize-FLY.ClientMoveMappingSettingsModel  -ProjectId null `
 -IsSelectAll null `
 -Search null `
 -MappingIds null `
 -Stages null `
 -StageStatuses null `
 -Statuses null
```

- Convert the resource to JSON
```powershell
$MoveMappingSettingsModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

