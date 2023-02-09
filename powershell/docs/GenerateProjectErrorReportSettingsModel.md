# GenerateProjectErrorReportSettingsModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TimeZone** | **Int32** |  | [optional] 
**ReportFileType** | [**ReportFileType**](ReportFileType.md) |  | [optional] 
**ProjectIds** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GenerateProjectErrorReportSettingsModel = Initialize-FLY.ClientGenerateProjectErrorReportSettingsModel  -TimeZone null `
 -ReportFileType null `
 -ProjectIds null
```

- Convert the resource to JSON
```powershell
$GenerateProjectErrorReportSettingsModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

