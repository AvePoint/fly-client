# ExchangeDiscoverySummaryModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MailboxCount** | **Int64** |  | [optional] 
**ItemCount** | **Int64** |  | [optional] 
**StorageUsed** | **Int64** |  | [optional] 
**DeletedItemCount** | **Int64** |  | [optional] 
**DeletedItemSize** | **Int64** |  | [optional] 
**InactiveMailboxCount** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ExchangeDiscoverySummaryModel = Initialize-FLY.ClientExchangeDiscoverySummaryModel  -MailboxCount null `
 -ItemCount null `
 -StorageUsed null `
 -DeletedItemCount null `
 -DeletedItemSize null `
 -InactiveMailboxCount null
```

- Convert the resource to JSON
```powershell
$ExchangeDiscoverySummaryModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

