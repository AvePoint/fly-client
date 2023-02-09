# ExchangeDiscoveryGroupDetailModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DisplayName** | **String** |  | [optional] 
**EmailAddress** | **String** |  | [optional] 
**Type** | [**M365GroupDiscoveryType**](M365GroupDiscoveryType.md) |  | [optional] 
**LastActivityDate** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ExchangeDiscoveryGroupDetailModel = Initialize-FLY.ClientExchangeDiscoveryGroupDetailModel  -DisplayName null `
 -EmailAddress null `
 -Type null `
 -LastActivityDate null
```

- Convert the resource to JSON
```powershell
$ExchangeDiscoveryGroupDetailModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

