# SharePointDiscoveryDetailModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SiteCollectionURL** | **String** |  | [optional] 
**SiteName** | **String** |  | [optional] 
**SiteTemplate** | **String** |  | [optional] 
**StorageUsed** | **Int64** |  | [optional] 
**FileCount** | **Int64** |  | [optional] 
**LastActivityDate** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SharePointDiscoveryDetailModel = Initialize-FLY.ClientSharePointDiscoveryDetailModel  -SiteCollectionURL null `
 -SiteName null `
 -SiteTemplate null `
 -StorageUsed null `
 -FileCount null `
 -LastActivityDate null
```

- Convert the resource to JSON
```powershell
$SharePointDiscoveryDetailModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

