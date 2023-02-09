# LicenseModuleModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **Int32** |  | [optional] 
**Used** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$LicenseModuleModel = Initialize-FLY.ClientLicenseModuleModel  -Type null `
 -Used null
```

- Convert the resource to JSON
```powershell
$LicenseModuleModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

