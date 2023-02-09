# ExchangePolicyCreationModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BackupObjects** | [**ExchangeObjectType[]**](ExchangeObjectType.md) |  | [optional] 
**IsBackupMailboxPermissions** | **Boolean** |  | [optional] 
**IsBackupArchiveMailbox** | **Boolean** |  | [optional] 
**FolderCondition** | [**ExchangeFolderCondition**](ExchangeFolderCondition.md) |  | [optional] 
**FolderConditionValue** | **String** |  | [optional] 
**EarlierThan** | **Int64** |  | [optional] 
**LaterThan** | **Int64** |  | [optional] 
**ItemConflictResolution** | [**ConflictResolution**](ConflictResolution.md) |  | [optional] 
**EnableSyncDeletion** | **Boolean** |  | [optional] 
**EnableReplaceEmailAddress** | **Boolean** |  | [optional] 
**EnableArchiveDateFilter** | **Boolean** |  | [optional] 
**ArchiveDateFilter** | **Int64** |  | [optional] 
**EnableReplaceMeetingLink** | **Boolean** |  | [optional] 
**EnableDisplayTeamChatHistory** | **Boolean** |  | [optional] 
**EmailSensitivityLabel** | [**ManageLabelOptionTypes**](ManageLabelOptionTypes.md) |  | [optional] 
**UserMappingProfileId** | **String** |  | [optional] 
**EmailLabelMappingProfileId** | **String** |  | [optional] 
**UserMappingRules** | [**UserMappingRuleModel[]**](UserMappingRuleModel.md) |  | [optional] 
**Name** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**Platform** | [**PlatformType**](PlatformType.md) |  | [optional] 
**Notification** | [**NotificationModel**](NotificationModel.md) |  | [optional] 
**IsDefault** | **Boolean** |  | [optional] 
**CustomizeFeatures** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ExchangePolicyCreationModel = Initialize-FLY.ClientExchangePolicyCreationModel  -BackupObjects null `
 -IsBackupMailboxPermissions null `
 -IsBackupArchiveMailbox null `
 -FolderCondition null `
 -FolderConditionValue null `
 -EarlierThan null `
 -LaterThan null `
 -ItemConflictResolution null `
 -EnableSyncDeletion null `
 -EnableReplaceEmailAddress null `
 -EnableArchiveDateFilter null `
 -ArchiveDateFilter null `
 -EnableReplaceMeetingLink null `
 -EnableDisplayTeamChatHistory null `
 -EmailSensitivityLabel null `
 -UserMappingProfileId null `
 -EmailLabelMappingProfileId null `
 -UserMappingRules null `
 -Name null `
 -Description null `
 -Platform null `
 -Notification null `
 -IsDefault null `
 -CustomizeFeatures null
```

- Convert the resource to JSON
```powershell
$ExchangePolicyCreationModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

