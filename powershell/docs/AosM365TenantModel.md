# AosM365TenantModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**AzureEnvironment** | [**AzureEnvironment**](AzureEnvironment.md) |  | [optional] 
**AppProfiles** | [**AppProfileModel[]**](AppProfileModel.md) |  | [optional] 
**TenantDiscoveries** | [**TenantDiscoveryModel[]**](TenantDiscoveryModel.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AosM365TenantModel = Initialize-FLY.ClientAosM365TenantModel  -Id null `
 -Name null `
 -AzureEnvironment null `
 -AppProfiles null `
 -TenantDiscoveries null
```

- Convert the resource to JSON
```powershell
$AosM365TenantModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

