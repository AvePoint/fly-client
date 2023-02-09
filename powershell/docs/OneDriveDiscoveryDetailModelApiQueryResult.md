# OneDriveDiscoveryDetailModelApiQueryResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NextLink** | **String** |  | [optional] 
**VarData** | [**OneDriveDiscoveryDetailModel[]**](OneDriveDiscoveryDetailModel.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$OneDriveDiscoveryDetailModelApiQueryResult = Initialize-FLY.ClientOneDriveDiscoveryDetailModelApiQueryResult  -NextLink null `
 -VarData null
```

- Convert the resource to JSON
```powershell
$OneDriveDiscoveryDetailModelApiQueryResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

