# ExchangeDiscoveryDetailModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EmailAddress** | **String** |  | [optional] 
**Type** | [**ExchangeDiscoveryMailboxType**](ExchangeDiscoveryMailboxType.md) |  | [optional] 
**ItemCount** | **Int64** |  | [optional] 
**StorageUsed** | **Int64** |  | [optional] 
**DeletedItemCount** | **Int64** |  | [optional] 
**DeletedItemSize** | **Int64** |  | [optional] 
**LastActivityDate** | **Int64** |  | [optional] 
**ArchiveStatus** | [**ArchiveMailboxStatus**](ArchiveMailboxStatus.md) |  | [optional] 
**ArchiveItemCount** | **Int64** |  | [optional] 
**ArchiveStorageUsed** | **Int64** |  | [optional] 
**ArchiveDeletedItemCount** | **Int64** |  | [optional] 
**ArchiveDeletedItemSize** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ExchangeDiscoveryDetailModel = Initialize-FLY.ClientExchangeDiscoveryDetailModel  -EmailAddress null `
 -Type null `
 -ItemCount null `
 -StorageUsed null `
 -DeletedItemCount null `
 -DeletedItemSize null `
 -LastActivityDate null `
 -ArchiveStatus null `
 -ArchiveItemCount null `
 -ArchiveStorageUsed null `
 -ArchiveDeletedItemCount null `
 -ArchiveDeletedItemSize null
```

- Convert the resource to JSON
```powershell
$ExchangeDiscoveryDetailModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

