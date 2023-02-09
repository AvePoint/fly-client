# SharePointDiscoverySummaryModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SiteCollectionCount** | **Int64** |  | [optional] 
**TotalStorageUsed** | **Int64** |  | [optional] 
**TotalFileCount** | **Int64** |  | [optional] 
**TotalItemCount** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SharePointDiscoverySummaryModel = Initialize-FLY.ClientSharePointDiscoverySummaryModel  -SiteCollectionCount null `
 -TotalStorageUsed null `
 -TotalFileCount null `
 -TotalItemCount null
```

- Convert the resource to JSON
```powershell
$SharePointDiscoverySummaryModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

