# OneDriveDiscoveryDetailModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Url** | **String** |  | [optional] 
**UserPrincipalName** | **String** |  | [optional] 
**DisplayName** | **String** |  | [optional] 
**StorageUsed** | **Int64** |  | [optional] 
**FileCount** | **Int64** |  | [optional] 
**LastActivityDate** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$OneDriveDiscoveryDetailModel = Initialize-FLY.ClientOneDriveDiscoveryDetailModel  -Url null `
 -UserPrincipalName null `
 -DisplayName null `
 -StorageUsed null `
 -FileCount null `
 -LastActivityDate null
```

- Convert the resource to JSON
```powershell
$OneDriveDiscoveryDetailModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

