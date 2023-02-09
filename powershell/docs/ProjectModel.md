# ProjectModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] 
**Platform** | [**PlatformType**](PlatformType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProjectModel = Initialize-FLY.ClientProjectModel  -Name null `
 -Platform null
```

- Convert the resource to JSON
```powershell
$ProjectModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

