# ProjectSummaryModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SourcePlatform** | [**PlatformType**](PlatformType.md) | The platform type of source connection of the project | [optional] 
**DestinationPlatform** | [**PlatformType**](PlatformType.md) | The platform type of destination connection of the project | [optional] 
**PolicyName** | **String** | The display name of policy which applied to the project | [optional] 
**TagNames** | **String** | The tag names of the project, concatenate multiple values using semicolons | [optional] 
**MappingTotalCount** | **Int32** | The total count of all mappings in the project | [optional] 
**MappingNotMigratedCount** | **Int32** | The count of new mappings in the project | [optional] 
**MappingWaitingCredentialCount** | **Int32** | The count of mappings which migration job is waiting in the project | [optional] 
**MappingInProgressCount** | **Int32** | The count of mappings which migration job is inprogress in the project | [optional] 
**MappingStoppedCount** | **Int32** | The count of mappings which migration job is stopped in the project | [optional] 
**MappingCompletedCount** | **Int32** | The count of mappings which migration job is finished in the project | [optional] 
**MappingCompletedWithExceptionCount** | **Int32** | The count of mappings which migration job is exception in the project | [optional] 
**MappingFailedCount** | **Int32** | The count of mappings which migration job is failed in the project | [optional] 
**Name** | **String** | The name of the object | [optional] 
**Description** | **String** | The description of the object | [optional] 
**CreateTime** | **Int64** | The creation time of the object | [optional] 
**CreateBy** | **String** | The user who create this object | [optional] 
**LastModifyTime** | **Int64** | The last modified time of the object | [optional] 
**LastModifyBy** | **String** | The user who last modified the object | [optional] 
**Id** | **String** | The GUID of the object | [optional] 

## Examples

- Prepare the resource
```powershell
$ProjectSummaryModel = Initialize-Fly.ClientProjectSummaryModel  -SourcePlatform null `
 -DestinationPlatform null `
 -PolicyName null `
 -TagNames null `
 -MappingTotalCount null `
 -MappingNotMigratedCount null `
 -MappingWaitingCredentialCount null `
 -MappingInProgressCount null `
 -MappingStoppedCount null `
 -MappingCompletedCount null `
 -MappingCompletedWithExceptionCount null `
 -MappingFailedCount null `
 -Name null `
 -Description null `
 -CreateTime null `
 -CreateBy null `
 -LastModifyTime null `
 -LastModifyBy null `
 -Id null
```

- Convert the resource to JSON
```powershell
$ProjectSummaryModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
