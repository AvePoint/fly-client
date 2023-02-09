# JobModuleModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Platform** | [**PlatformType**](PlatformType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$JobModuleModel = Initialize-FLY.ClientJobModuleModel  -Platform null
```

- Convert the resource to JSON
```powershell
$JobModuleModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

