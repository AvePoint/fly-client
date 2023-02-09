# GenerateReportSettingsModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IncludeMappingSummary** | **Boolean** |  | [optional] 
**IncludeDetails** | **Boolean** |  | [optional] 
**ReportItemStatus** | [**ReportItemStatus[]**](ReportItemStatus.md) |  | [optional] 
**ReportFileType** | [**ReportFileType**](ReportFileType.md) |  | [optional] 
**TimeZone** | **Int32** |  | [optional] 
**IsSelectAll** | **Boolean** |  | [optional] 
**Search** | **String** |  | [optional] 
**MappingIds** | **String[]** |  | [optional] 
**Stages** | **Int32[]** |  | [optional] 
**StageStatuses** | **Int32[]** |  | [optional] 
**Statuses** | [**ProjectMappingItemStatus[]**](ProjectMappingItemStatus.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GenerateReportSettingsModel = Initialize-FLY.ClientGenerateReportSettingsModel  -IncludeMappingSummary null `
 -IncludeDetails null `
 -ReportItemStatus null `
 -ReportFileType null `
 -TimeZone null `
 -IsSelectAll null `
 -Search null `
 -MappingIds null `
 -Stages null `
 -StageStatuses null `
 -Statuses null
```

- Convert the resource to JSON
```powershell
$GenerateReportSettingsModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

