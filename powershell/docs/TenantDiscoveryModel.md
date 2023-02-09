# TenantDiscoveryModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Platform** | [**PlatformType**](PlatformType.md) |  | [optional] 
**LastUpdateTime** | **Int64** |  | [optional] 
**Status** | [**DiscoveryStatus**](DiscoveryStatus.md) |  | [optional] 
**JobStatus** | [**DiscoveryJobStatus**](DiscoveryJobStatus.md) |  | [optional] 
**Errors** | [**DiscoveryJobErrorModel[]**](DiscoveryJobErrorModel.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TenantDiscoveryModel = Initialize-FLY.ClientTenantDiscoveryModel  -Platform null `
 -LastUpdateTime null `
 -Status null `
 -JobStatus null `
 -Errors null
```

- Convert the resource to JSON
```powershell
$TenantDiscoveryModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

