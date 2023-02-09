# ExchangeMailboxTypeDistributionModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MailboxType** | [**ExchangeDiscoveryMailboxType**](ExchangeDiscoveryMailboxType.md) |  | [optional] 
**Count** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ExchangeMailboxTypeDistributionModel = Initialize-FLY.ClientExchangeMailboxTypeDistributionModel  -MailboxType null `
 -Count null
```

- Convert the resource to JSON
```powershell
$ExchangeMailboxTypeDistributionModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

