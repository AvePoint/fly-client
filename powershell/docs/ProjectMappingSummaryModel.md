# ProjectMappingSummaryModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProjectId** | **String** |  | [optional] 
**SourceType** | **Int32** |  | [optional] 
**SourcePlatform** | [**PlatformType**](PlatformType.md) |  | [optional] 
**SourceName** | **String** |  | [optional] 
**SourceIdentity** | **String** |  | [optional] 
**DestinationType** | **Int32** |  | [optional] 
**DestinationPlatform** | [**PlatformType**](PlatformType.md) |  | [optional] 
**DestinationName** | **String** |  | [optional] 
**DestinationIdentity** | **String** |  | [optional] 
**SourceCredentialSaved** | **Boolean** |  | [optional] 
**DestinationCredentialSaved** | **Boolean** |  | [optional] 
**Identity** | **String** |  | [optional] 
**HasRunningJob** | **Boolean** |  | [optional] [readonly] 
**HasRunMigration** | **Boolean** |  | [optional] [readonly] 
**IsScheduleExpired** | **Boolean** |  | [optional] 
**ScheduleTime** | **Int64** |  | [optional] 
**CreateTime** | **Int64** |  | [optional] 
**LastUpdateTime** | **Int64** |  | [optional] 
**Stage** | [**ProjectMappingItemStage**](ProjectMappingItemStage.md) |  | [optional] 
**StageStatus** | [**ProjectMappingItemStageStatus**](ProjectMappingItemStageStatus.md) |  | [optional] 
**JobProgress** | **Int32** |  | [optional] 
**JobProgressDetail** | [**MappingJobProgressDetailModel**](MappingJobProgressDetailModel.md) |  | [optional] 
**MigratedSize** | **Int64** |  | [optional] 
**ErrorItemCount** | **Int64** |  | [optional] 
**Id** | **String** |  | [optional] 

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

