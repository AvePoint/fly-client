# UrlResultModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ReportUrl** | **String** | The temporary url of the report file which can be used to download the report file | [optional] 

## Examples

- Prepare the resource
```powershell
$UrlResultModel = Initialize-Fly.ClientUrlResultModel  -ReportUrl null
```

- Convert the resource to JSON
```powershell
$UrlResultModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
