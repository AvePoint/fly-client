# TeamsDiscoveryDetailModelApiQueryResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NextLink** | **String** |  | [optional] 
**VarData** | [**TeamsDiscoveryDetailModel[]**](TeamsDiscoveryDetailModel.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TeamsDiscoveryDetailModelApiQueryResult = Initialize-FLY.ClientTeamsDiscoveryDetailModelApiQueryResult  -NextLink null `
 -VarData null
```

- Convert the resource to JSON
```powershell
$TeamsDiscoveryDetailModelApiQueryResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

