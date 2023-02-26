# ProjectMappingSummaryModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProjectId** | **String** | The GUID of the project against the project mapping | [optional] 
**SourceType** | **Int32** | The data type of source identity, refer to [**PlatformDataTypes**](PlatformDataTypes.md) for more details | [optional] 
**SourcePlatform** | [**PlatformType**](PlatformType.md) | The platform type of source identity, refer to PlatformType for more details | [optional] 
**SourceName** | **String** | The display name of source identity | [optional] 
**SourceIdentity** | **String** | The source identity of migration | [optional] 
**DestinationType** | **Int32** | The data type of destination identity, refer to [**PlatformDataTypes**](PlatformDataTypes.md) for more details | [optional] 
**DestinationPlatform** | [**PlatformType**](PlatformType.md) | The platform type of source identity, refer to PlatformType for more details | [optional] 
**DestinationName** | **String** | The display name of destination identity | [optional] 
**DestinationIdentity** | **String** | The destination identity of migration | [optional] 
**SourceCredentialSaved** | **Boolean** | Deprecated | [optional] 
**DestinationCredentialSaved** | **Boolean** | Deprecated | [optional] 
**Identity** | **String** | The identity of the mapping calculated based on the information of this mapping | [optional] 
**HasRunningJob** | **Boolean** | A boolean value indicates whether a job is executed against the mapping | [optional] [readonly] 
**HasRunMigration** | **Boolean** | A boolean value indicates whether migration has been performed before against the mapping | [optional] [readonly] 
**IsScheduleExpired** | **Boolean** | A boolean value indicates whether schedule time of migration job has expired against the mapping | [optional] 
**ScheduleTime** | **Int64** | The schedule time of migration job | [optional] 
**CreateTime** | **Int64** | The create time of the project mapping in .NET ticks | [optional] 
**LastUpdateTime** | **Int64** | The last updated time of the project mapping in .NET ticks | [optional] 
**Stage** | [**ProjectMappingItemStage**](ProjectMappingItemStage.md) | Current or previous migration stage of the project mapping | [optional] 
**StageStatus** | [**ProjectMappingItemStageStatus**](ProjectMappingItemStageStatus.md) | The status of current migration stage against the project mapping | [optional] 
**JobProgress** | **Int32** | The migration job progress of the project mapping, only available for the project mapping which is executing migration job | [optional] 
**JobProgressDetail** | [**MappingJobProgressDetailModel**](MappingJobProgressDetailModel.md) |  | [optional] 
**MigratedSize** | **Int64** | The data size already migrated against the project mapping | [optional] 
**ErrorItemCount** | **Int64** | The error account during migration job against the project mapping | [optional] 
**Id** | **String** | The GUID of the object | [optional] 

## Examples

- Prepare the resource
```powershell
$ProjectMappingSummaryModel = Initialize-FLY.ClientProjectMappingSummaryModel  -ProjectId null `
 -SourceType null `
 -SourcePlatform null `
 -SourceName null `
 -SourceIdentity null `
 -DestinationType null `
 -DestinationPlatform null `
 -DestinationName null `
 -DestinationIdentity null `
 -SourceCredentialSaved null `
 -DestinationCredentialSaved null `
 -Identity null `
 -HasRunningJob null `
 -HasRunMigration null `
 -IsScheduleExpired null `
 -ScheduleTime null `
 -CreateTime null `
 -LastUpdateTime null `
 -Stage null `
 -StageStatus null `
 -JobProgress null `
 -JobProgressDetail null `
 -MigratedSize null `
 -ErrorItemCount null `
 -Id null
```

- Convert the resource to JSON
```powershell
$ProjectMappingSummaryModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
