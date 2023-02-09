# OneDriveDiscoverySummaryModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**OneDriveCount** | **Int64** |  | [optional] 
**TotalStorageUsed** | **Int64** |  | [optional] 
**TotalFileCount** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$OneDriveDiscoverySummaryModel = Initialize-FLY.ClientOneDriveDiscoverySummaryModel  -OneDriveCount null `
 -TotalStorageUsed null `
 -TotalFileCount null
```

- Convert the resource to JSON
```powershell
$OneDriveDiscoverySummaryModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

