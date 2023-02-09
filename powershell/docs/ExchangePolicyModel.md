# ExchangePolicyModel
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
$ExchangePolicyModel = Initialize-FLY.ClientExchangePolicyModel  -BackupObjects null `
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
$ExchangePolicyModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

