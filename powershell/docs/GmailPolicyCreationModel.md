# GmailPolicyCreationModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IsBackupContacts** | **Boolean** |  | [optional] 
**IsBackupCalendars** | **Boolean** |  | [optional] 
**IsBackupMails** | **Boolean** |  | [optional] 
**IsBackupTasks** | **Boolean** |  | [optional] 
**IsBackupRules** | **Boolean** |  | [optional] 
**MigrateLabel** | [**GmailMigrateLabel**](GmailMigrateLabel.md) |  | [optional] 
**FolderCondition** | [**ExchangeFolderCondition**](ExchangeFolderCondition.md) |  | [optional] 
**FolderConditionValue** | **String** |  | [optional] 
**LaterThan** | **Int64** |  | [optional] 
**EarlierThan** | **Int64** |  | [optional] 
**ItemConflictResolution** | [**ConflictResolution**](ConflictResolution.md) |  | [optional] 
**EnableSyncDeletion** | **Boolean** |  | [optional] 
**EnableReplaceEmailAddress** | **Boolean** |  | [optional] 
**EnableArchiveDateFilter** | **Boolean** |  | [optional] 
**ArchiveDateFilter** | **Int64** |  | [optional] 
**UserMappingProfileId** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**Platform** | [**PlatformType**](PlatformType.md) |  | [optional] 
**Notification** | [**NotificationModel**](NotificationModel.md) |  | [optional] 
**IsDefault** | **Boolean** |  | [optional] 
**CustomizeFeatures** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GmailPolicyCreationModel = Initialize-FLY.ClientGmailPolicyCreationModel  -IsBackupContacts null `
 -IsBackupCalendars null `
 -IsBackupMails null `
 -IsBackupTasks null `
 -IsBackupRules null `
 -MigrateLabel null `
 -FolderCondition null `
 -FolderConditionValue null `
 -LaterThan null `
 -EarlierThan null `
 -ItemConflictResolution null `
 -EnableSyncDeletion null `
 -EnableReplaceEmailAddress null `
 -EnableArchiveDateFilter null `
 -ArchiveDateFilter null `
 -UserMappingProfileId null `
 -Name null `
 -Description null `
 -Platform null `
 -Notification null `
 -IsDefault null `
 -CustomizeFeatures null
```

- Convert the resource to JSON
```powershell
$GmailPolicyCreationModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

