# LicenseStatusModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Platform** | [**PlatformType**](PlatformType.md) |  | [optional] 
**PaymentType** | [**PaymentType**](PaymentType.md) |  | [optional] 
**LicenseType** | [**LicenseType**](LicenseType.md) |  | [optional] 
**Total** | **Int64** |  | [optional] 
**Used** | **Int64** |  | [optional] 
**UsedObjects** | **Int64** |  | [optional] 
**Needed** | **Int64** |  | [optional] 
**ExpireTime** | **Int64** |  | [optional] 
**IsExpired** | **Boolean** |  | [optional] 
**RemainingDays** | **Double** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$LicenseStatusModel = Initialize-FLY.ClientLicenseStatusModel  -Platform null `
 -PaymentType null `
 -LicenseType null `
 -Total null `
 -Used null `
 -UsedObjects null `
 -Needed null `
 -ExpireTime null `
 -IsExpired null `
 -RemainingDays null
```

- Convert the resource to JSON
```powershell
$LicenseStatusModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

