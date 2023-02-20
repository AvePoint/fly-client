# GenerateReportSettingsModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IncludeMappingSummary** | **Boolean** | A boolean value indicating whether mapping summary will be included in the generated report. | [optional] 
**IncludeDetails** | **Boolean** | A boolean value indicating whether item details information will be included in the generated report. | [optional] 
**ReportItemStatus** | [**ReportItemStatus[]**](ReportItemStatus.md) | Specify a list of item status to be included in the generated report. | [optional] 
**ReportFileType** | [**ReportFileType**](ReportFileType.md) |  | [optional] 
**TimeZone** | **Int32** | Specify the UTC time offset of current browser. This value will be used to adjust time values when generating the report file. | [optional] 
**IsSelectAll** | **Boolean** | A boolean value indicates whether the Select All option is checked.  Default to False which means only mappings with ids in MappingIds properties are selected. | [optional] 
**Search** | **String** | A search criteria. If specified it will be used to filter the mappings in the current project. Default empty. | [optional] 
**MappingIds** | **String[]** | Specify a list of mapping ids against which the operation or job will be run.  If IsSelectAll is set to True, these mappings will be filtered out instead. | [optional] 
**Stages** | **Int32[]** | A list of Stages which will be used together with other serach conditions to filter mappings. | [optional] 
**StageStatuses** | **Int32[]** | A list of Stage Status which will be used together with other serach conditions to filter mappings. | [optional] 
**Statuses** | [**ProjectMappingItemStatus[]**](ProjectMappingItemStatus.md) | A list of Mapping Status which will be used together with other serach conditions to filter mappings. | [optional] 

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
