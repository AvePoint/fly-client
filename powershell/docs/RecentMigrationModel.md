# RecentMigrationModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProjectId** | **String** |  | [optional] 
**ProjectName** | **String** |  | [optional] 
**MappingId** | **String** |  | [optional] 
**SourceName** | **String** |  | [optional] 
**SourceIdentity** | **String** |  | [optional] 
**JobType** | [**MappingJobType**](MappingJobType.md) |  | [optional] 
**Status** | [**MappingJobStatus**](MappingJobStatus.md) |  | [optional] 
**StartTime** | **Int64** |  | [optional] 
**EndTime** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RecentMigrationModel = Initialize-FLY.ClientRecentMigrationModel  -ProjectId null `
 -ProjectName null `
 -MappingId null `
 -SourceName null `
 -SourceIdentity null `
 -JobType null `
 -Status null `
 -StartTime null `
 -EndTime null
```

- Convert the resource to JSON
```powershell
$RecentMigrationModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

