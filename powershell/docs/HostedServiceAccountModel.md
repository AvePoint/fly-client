# HostedServiceAccountModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**ServerHost** | **String** |  | [optional] 
**ServiceProvider** | [**ExchangeServiceProvider**](ExchangeServiceProvider.md) |  | [optional] 
**Version** | [**ExchangeVersion**](ExchangeVersion.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$HostedServiceAccountModel = Initialize-FLY.ClientHostedServiceAccountModel  -Id null `
 -Name null `
 -ServerHost null `
 -ServiceProvider null `
 -Version null
```

- Convert the resource to JSON
```powershell
$HostedServiceAccountModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

