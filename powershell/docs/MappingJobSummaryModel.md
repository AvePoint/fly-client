# MappingJobSummaryModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**JobId** | **String** |  | [optional] 
**RunBy** | **String** |  | [optional] 
**Type** | [**MappingJobType**](MappingJobType.md) |  | [optional] 
**Status** | [**MappingJobStatus**](MappingJobStatus.md) |  | [optional] 
**Details** | **System.Collections.Hashtable** |  | [optional] 
**EndTime** | **Int64** |  | [optional] 
**StartTime** | **Int64** |  | [optional] 
**CreateTime** | **Int64** |  | [optional] 
**Comments** | [**MappingJobCommentModel[]**](MappingJobCommentModel.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$MappingJobSummaryModel = Initialize-FLY.ClientMappingJobSummaryModel  -JobId null `
 -RunBy null `
 -Type null `
 -Status null `
 -Details null `
 -EndTime null `
 -StartTime null `
 -CreateTime null `
 -Comments null
```

- Convert the resource to JSON
```powershell
$MappingJobSummaryModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

