# GenerateReportJobModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**JobType** | [**MappingJobType**](MappingJobType.md) |  | [optional] 
**Status** | [**MappingJobStatus**](MappingJobStatus.md) |  | [optional] 
**StartTime** | **Int64** |  | [optional] 
**FinishTime** | **Int64** |  | [optional] 
**ExpiredTime** | **Int64** |  | [optional] 
**IsReportFileExpired** | **Boolean** |  | [optional] 
**UpdateTime** | **Int64** |  | [optional] 
**JobName** | **String** |  | [optional] 
**ProjectName** | **String** |  | [optional] 
**User** | **String** |  | [optional] 
**Platform** | [**PlatformType**](PlatformType.md) |  | [optional] 
**ErrorMessage** | **String** |  | [optional] 
**ProjectCount** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GenerateReportJobModel = Initialize-FLY.ClientGenerateReportJobModel  -Id null `
 -JobType null `
 -Status null `
 -StartTime null `
 -FinishTime null `
 -ExpiredTime null `
 -IsReportFileExpired null `
 -UpdateTime null `
 -JobName null `
 -ProjectName null `
 -User null `
 -Platform null `
 -ErrorMessage null `
 -ProjectCount null
```

- Convert the resource to JSON
```powershell
$GenerateReportJobModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

