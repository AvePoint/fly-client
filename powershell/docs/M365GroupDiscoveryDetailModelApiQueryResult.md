# M365GroupDiscoveryDetailModelApiQueryResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NextLink** | **String** |  | [optional] 
**VarData** | [**M365GroupDiscoveryDetailModel[]**](M365GroupDiscoveryDetailModel.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$M365GroupDiscoveryDetailModelApiQueryResult = Initialize-FLY.ClientM365GroupDiscoveryDetailModelApiQueryResult  -NextLink null `
 -VarData null
```

- Convert the resource to JSON
```powershell
$M365GroupDiscoveryDetailModelApiQueryResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

