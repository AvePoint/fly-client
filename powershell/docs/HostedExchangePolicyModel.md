# HostedExchangePolicyModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IsBackupContacts** | **Boolean** |  | [optional] 
**IsBackupMails** | **Boolean** |  | [optional] 
**IsBackupNotes** | **Boolean** |  | [optional] 
**IsBackupRules** | **Boolean** |  | [optional] 
**IsBackupCalendars** | **Boolean** |  | [optional] 
**IsBackupJournals** | **Boolean** |  | [optional] 
**IsBackupTasks** | **Boolean** |  | [optional] 
**IsBackupAutoCompleteLists** | **Boolean** |  | [optional] 
**IsBackupRecoverableItemFolders** | **Boolean** |  | [optional] 
**IsBackupPermissions** | **Boolean** |  | [optional] 
**IsBackupArchiveMailbox** | **Boolean** |  | [optional] 
**FolderCondition** | [**ExchangeFolderCondition**](ExchangeFolderCondition.md) |  | [optional] 
**FolderConditionValue** | **String** |  | [optional] 
**LaterThan** | **Int64** |  | [optional] 
**EarlierThan** | **Int64** |  | [optional] 
**ItemConflictResolution** | [**ConflictResolution**](ConflictResolution.md) |  | [optional] 
**EnableSyncDeletion** | **Boolean** |  | [optional] 
**EnableReplaceEmailAddress** | **Boolean** |  | [optional] 
**EnableArchiveDateFilter** | **Boolean** |  | [optional] 
**ArchiveDateFilter** | **Int64** |  | [optional] 
**SourceLanguage** | **String** |  | [optional] 
**UserMappingProfileId** | **String** |  | [optional] 
**Platform** | [**PlatformType**](PlatformType.md) |  | [optional] 
**IsDefault** | **Boolean** |  | [optional] 
**Notification** | [**NotificationModel**](NotificationModel.md) |  | [optional] 
**CustomizeFeatures** | **String[]** |  | [optional] 
**Name** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**CreateTime** | **Int64** |  | [optional] 
**CreateBy** | **String** |  | [optional] 
**LastModifyTime** | **Int64** |  | [optional] 
**LastModifyBy** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$HostedExchangePolicyModel = Initialize-FLY.ClientHostedExchangePolicyModel  -IsBackupContacts null `
 -IsBackupMails null `
 -IsBackupNotes null `
 -IsBackupRules null `
 -IsBackupCalendars null `
 -IsBackupJournals null `
 -IsBackupTasks null `
 -IsBackupAutoCompleteLists null `
 -IsBackupRecoverableItemFolders null `
 -IsBackupPermissions null `
 -IsBackupArchiveMailbox null `
 -FolderCondition null `
 -FolderConditionValue null `
 -LaterThan null `
 -EarlierThan null `
 -ItemConflictResolution null `
 -EnableSyncDeletion null `
 -EnableReplaceEmailAddress null `
 -EnableArchiveDateFilter null `
 -ArchiveDateFilter null `
 -SourceLanguage null `
 -UserMappingProfileId null `
 -Platform null `
 -IsDefault null `
 -Notification null `
 -CustomizeFeatures null `
 -Name null `
 -Description null `
 -CreateTime null `
 -CreateBy null `
 -LastModifyTime null `
 -LastModifyBy null `
 -Id null
```

- Convert the resource to JSON
```powershell
$HostedExchangePolicyModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

