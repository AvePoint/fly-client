# ProjectMappingJobModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**JobId** | **String** |  | [optional] 
**JobType** | [**MappingJobType**](MappingJobType.md) |  | [optional] 
**Status** | [**MappingJobStatus**](MappingJobStatus.md) |  | [optional] 
**SourceIdentity** | **String** |  | [optional] 
**DestinationIdentity** | **String** |  | [optional] 
**StartTime** | **Int64** |  | [optional] 
**CreateTime** | **Int64** |  | [optional] 
**FinishTime** | **Int64** |  | [optional] 
**Progress** | **Double** |  | [optional] 
**DataSize** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProjectMappingJobModel = Initialize-FLY.ClientProjectMappingJobModel  -Id null `
 -JobId null `
 -JobType null `
 -Status null `
 -SourceIdentity null `
 -DestinationIdentity null `
 -StartTime null `
 -CreateTime null `
 -FinishTime null `
 -Progress null `
 -DataSize null
```

- Convert the resource to JSON
```powershell
$ProjectMappingJobModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

