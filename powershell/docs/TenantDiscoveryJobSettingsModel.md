# TenantDiscoveryJobSettingsModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AppProfile** | [**AppProfileModel**](AppProfileModel.md) |  | [optional] 
**PlatformList** | [**PlatformType[]**](PlatformType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TenantDiscoveryJobSettingsModel = Initialize-FLY.ClientTenantDiscoveryJobSettingsModel  -AppProfile null `
 -PlatformList null
```

- Convert the resource to JSON
```powershell
$TenantDiscoveryJobSettingsModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

