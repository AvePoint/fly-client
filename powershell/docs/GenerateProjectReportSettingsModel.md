# GenerateProjectReportSettingsModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IncludeMappingSummary** | **Boolean** |  | [optional] 
**TimeZone** | **Int32** |  | [optional] 
**IncludeDetails** | **Boolean** |  | [optional] 
**ReportItemStatus** | [**ReportItemStatus[]**](ReportItemStatus.md) |  | [optional] 
**ReportFileType** | [**ReportFileType**](ReportFileType.md) |  | [optional] 
**ProjectIds** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GenerateProjectReportSettingsModel = Initialize-FLY.ClientGenerateProjectReportSettingsModel  -IncludeMappingSummary null `
 -TimeZone null `
 -IncludeDetails null `
 -ReportItemStatus null `
 -ReportFileType null `
 -ProjectIds null
```

- Convert the resource to JSON
```powershell
$GenerateProjectReportSettingsModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

