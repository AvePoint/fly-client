# SharePointDiscoveryDetailModelApiQueryResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NextLink** | **String** |  | [optional] 
**VarData** | [**SharePointDiscoveryDetailModel[]**](SharePointDiscoveryDetailModel.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SharePointDiscoveryDetailModelApiQueryResult = Initialize-FLY.ClientSharePointDiscoveryDetailModelApiQueryResult  -NextLink null `
 -VarData null
```

- Convert the resource to JSON
```powershell
$SharePointDiscoveryDetailModelApiQueryResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

