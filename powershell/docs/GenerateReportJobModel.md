# GenerateReportJobModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The GUID of the report job | [optional] 
**JobType** | [**MappingJobType**](MappingJobType.md) | The type of the report job, GenerateReport or GenerateErrorReport | [optional] 
**Status** | [**MappingJobStatus**](MappingJobStatus.md) | The status of the report job | [optional] 
**StartTime** | **Int64** | The start time of the report job in .Net ticks | [optional] 
**FinishTime** | **Int64** | The finish time of the report job in .Net ticks | [optional] 
**ExpiredTime** | **Int64** | The expired time of the report file in .Net ticks | [optional] 
**IsReportFileExpired** | **Boolean** | A boolen value indicates whether the report file expired, if true, the report file can not be downloaded | [optional] 
**UpdateTime** | **Int64** | The update time of the report job in .Net ticks | [optional] 
**JobName** | **String** | The job name of the report job | [optional] 
**ProjectName** | **String** | The project name against the report job | [optional] 
**User** | **String** | The user who triggered the report job | [optional] 
**Platform** | [**PlatformType**](PlatformType.md) | The platform type against the report job | [optional] 
**ErrorMessage** | **String** | The error message of the report job if report job failed. | [optional] 
**ProjectCount** | **Int32** | The project count against the report job | [optional] 

## Examples

- Prepare the resource
```powershell
$GenerateReportJobModel = Initialize-Fly.ClientGenerateReportJobModel  -Id null `
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
