# DownloadCenterOperationModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IsSelectAll** | **Boolean** |  | [optional] 
**Search** | **String** |  | [optional] 
**JobIds** | **String[]** |  | [optional] 
**Statuses** | [**MappingJobStatus[]**](MappingJobStatus.md) |  | [optional] 
**ProjectTypes** | **Int32[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DownloadCenterOperationModel = Initialize-FLY.ClientDownloadCenterOperationModel  -IsSelectAll null `
 -Search null `
 -JobIds null `
 -Statuses null `
 -ProjectTypes null
```

- Convert the resource to JSON
```powershell
$DownloadCenterOperationModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

