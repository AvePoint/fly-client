# ProjectSummaryModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SourcePlatform** | [**PlatformType**](PlatformType.md) |  | [optional] 
**DestinationPlatform** | [**PlatformType**](PlatformType.md) |  | [optional] 
**PolicyName** | **String** |  | [optional] 
**TagNames** | **String** |  | [optional] 
**MappingTotalCount** | **Int32** |  | [optional] 
**MappingNotMigratedCount** | **Int32** |  | [optional] 
**MappingWaitingCredentialCount** | **Int32** |  | [optional] 
**MappingInProgressCount** | **Int32** |  | [optional] 
**MappingStoppedCount** | **Int32** |  | [optional] 
**MappingCompletedCount** | **Int32** |  | [optional] 
**MappingCompletedWithExceptionCount** | **Int32** |  | [optional] 
**MappingFailedCount** | **Int32** |  | [optional] 
**Name** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**CreateTime** | **Int64** |  | [optional] 
**CreateBy** | **String** |  | [optional] 
**LastModifyTime** | **Int64** |  | [optional] 
**LastModifyBy** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProjectSummaryModel = Initialize-FLY.ClientProjectSummaryModel  -SourcePlatform null `
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

