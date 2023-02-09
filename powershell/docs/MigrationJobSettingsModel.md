# MigrationJobSettingsModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | [**MappingJobType**](MappingJobType.md) |  | [optional] 
**IsDeleteSource** | **Boolean** |  | [optional] 
**ScheduledTime** | **Int64** |  | [optional] 
**IsSelectAll** | **Boolean** |  | [optional] 
**Search** | **String** |  | [optional] 
**MappingIds** | **String[]** |  | [optional] 
**Stages** | **Int32[]** |  | [optional] 
**StageStatuses** | **Int32[]** |  | [optional] 
**Statuses** | [**ProjectMappingItemStatus[]**](ProjectMappingItemStatus.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$MigrationJobSettingsModel = Initialize-FLY.ClientMigrationJobSettingsModel  -Type null `
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
$MigrationJobSettingsModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

