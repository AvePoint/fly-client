# ProjectMappingOperationModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IsSelectAll** | **Boolean** | A boolean value indicates whether the Select All option is checked.  Default to False which means only mappings with ids in MappingIds properties are selected. | [optional] 
**Search** | **String** | A search criteria. If specified it will be used to filter the mappings in the current project. Default empty. | [optional] 
**MappingIds** | **String[]** | Specify a list of mapping ids against which the operation or job will be run.  If IsSelectAll is set to True, these mappings will be filtered out instead. | [optional] 
**Stages** | **Int32[]** | A list of Stages which will be used together with other serach conditions to filter mappings. | [optional] 
**StageStatuses** | **Int32[]** | A list of Stage Status which will be used together with other serach conditions to filter mappings. | [optional] 
**Statuses** | [**ProjectMappingItemStatus[]**](ProjectMappingItemStatus.md) | A list of Mapping Status which will be used together with other serach conditions to filter mappings. | [optional] 

## Examples

- Prepare the resource
```powershell
$ProjectMappingOperationModel = Initialize-FLY.ClientProjectMappingOperationModel  -IsSelectAll null `
 -Search null `
 -MappingIds null `
 -Stages null `
 -StageStatuses null `
 -Statuses null
```

- Convert the resource to JSON
```powershell
$ProjectMappingOperationModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
