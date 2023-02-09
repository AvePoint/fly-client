# ExchangeDiscoveryGroupDetailModelApiQueryResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NextLink** | **String** |  | [optional] 
**VarData** | [**ExchangeDiscoveryGroupDetailModel[]**](ExchangeDiscoveryGroupDetailModel.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ExchangeDiscoveryGroupDetailModelApiQueryResult = Initialize-FLY.ClientExchangeDiscoveryGroupDetailModelApiQueryResult  -NextLink null `
 -VarData null
```

- Convert the resource to JSON
```powershell
$ExchangeDiscoveryGroupDetailModelApiQueryResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

