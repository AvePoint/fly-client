# LicenseModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LicenseId** | **String** |  | [optional] 
**IsEnableTenantDiscovery** | **Boolean** |  | [optional] 
**LicenseType** | [**LicenseType**](LicenseType.md) |  | [optional] 
**Platform** | [**PlatformType**](PlatformType.md) |  | [optional] 
**PaymentType** | [**PaymentType**](PaymentType.md) |  | [optional] 
**Total** | **Int64** |  | [optional] 
**Used** | **Int64** |  | [optional] 
**ConsumedObjectNumber** | **Int64** |  | [optional] 
**SubModules** | [**LicenseModuleModel[]**](LicenseModuleModel.md) |  | [optional] 
**ExpireTime** | **Int64** |  | [optional] 
**IsExpired** | **Boolean** |  | [optional] 
**RemainingDays** | **Double** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$LicenseModel = Initialize-FLY.ClientLicenseModel  -LicenseId null `
 -IsEnableTenantDiscovery null `
 -LicenseType null `
 -Platform null `
 -PaymentType null `
 -Total null `
 -Used null `
 -ConsumedObjectNumber null `
 -SubModules null `
 -ExpireTime null `
 -IsExpired null `
 -RemainingDays null
```

- Convert the resource to JSON
```powershell
$LicenseModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

