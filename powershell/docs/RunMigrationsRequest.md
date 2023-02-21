# RunMigrationsRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | [**MappingJobType**](MappingJobType.md) | Specify the type of the job to run against the selected projects or mappings. | 
**IsDeleteSource** | **Boolean** | Whether the source data will be deleted after migration job completes. This option is currently not supported and will always has the value of False. | [optional] 
**ScheduledTime** | **Int64** | Specify the time when you want the job to be scheduled. By default the job will be scheduled as soon as possible. | [optional] 
**IsSelectAll** | **Boolean** | A boolean value indicates whether the Select All option is checked.  Default to False which means only mappings with ids in MappingIds properties are selected. | 
**Search** | **String** | A search criteria. If specified it will be used to filter the mappings in the current project. Default empty. | [optional] 
**MappingIds** | **String[]** | Specify a list of mapping ids against which the operation or job will be run.  If IsSelectAll is set to True, these mappings will be filtered out instead. | [optional] 
**Stages** | [**ProjectMappingItemStage[]**](ProjectMappingItemStage.md) | A list of Stages which will be used together with other serach conditions to filter mappings. | [optional] 
**StageStatuses** | [**ProjectMappingItemStageStatus[]**](ProjectMappingItemStageStatus.md) | A list of Stage Status which will be used together with other serach conditions to filter mappings. | [optional] 
**Statuses** | [**ProjectMappingItemStatus[]**](ProjectMappingItemStatus.md) | A list of Mapping Status which will be used together with other serach conditions to filter mappings. | [optional] 

## Examples

- Prepare the resource
```powershell
$RunMigrationsRequest = Initialize-FLY.ClientRunMigrationsRequest  -Type null `
 -IsDeleteSource null `
 -ScheduledTime null `
 -IsSelectAll null `
 -Search null `
 -MappingIds null `
 -Stages null `
 -StageStatuses null `
 -Statuses null
```

- Convert the resource to JSON
```powershell
$RunMigrationsRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
