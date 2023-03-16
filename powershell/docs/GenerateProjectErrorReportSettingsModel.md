# GenerateProjectErrorReportSettingsModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TimeZone** | **Int32** | Specify the UTC time offset of current browser. This value will be used to adjust time values when generating the report file. | [optional] 
**ReportFileType** | [**ReportFileType**](ReportFileType.md) | Specify the format of the generated report file. | [optional] 
**ProjectIds** | **String[]** | Specify a list of project GUID to generate their error report. | 

## Examples

- Prepare the resource
```powershell
$GenerateProjectErrorReportSettingsModel = Initialize-Fly.ClientGenerateProjectErrorReportSettingsModel  -TimeZone null `
 -ReportFileType null `
 -ProjectIds null
```

- Convert the resource to JSON
```powershell
$GenerateProjectErrorReportSettingsModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
