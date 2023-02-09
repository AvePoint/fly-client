# ExchangeDiscoveryDetailModelApiQueryResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NextLink** | **String** |  | [optional] 
**VarData** | [**ExchangeDiscoveryDetailModel[]**](ExchangeDiscoveryDetailModel.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ExchangeDiscoveryDetailModelApiQueryResult = Initialize-FLY.ClientExchangeDiscoveryDetailModelApiQueryResult  -NextLink null `
 -VarData null
```

- Convert the resource to JSON
```powershell
$ExchangeDiscoveryDetailModelApiQueryResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

