# TeamsPolicyModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BackupObjects** | [**TeamsObjectType[]**](TeamsObjectType.md) |  | [optional] 
**IsPostMessage** | **Boolean** |  | [optional] 
**IsCovertToHtml** | **Boolean** |  | [optional] 
**ConversationTimeEarlierThan** | **Int64** |  | [optional] 
**ConversationTimeLaterThan** | **Int64** |  | [optional] 
**IsBackupMeetingRecords** | **Boolean** |  | [optional] 
**IsBackupOnlyTeamsAssociatedContent** | **Boolean** |  | [optional] 
**IsBackupFilePermissions** | **Boolean** |  | [optional] 
**IsBackupDirectSitePermissions** | **Boolean** |  | [optional] 
**IsBackupWholeStructureAndData** | **Boolean** |  | [optional] 
**IsBackupMailbox** | **Boolean** |  | [optional] 
**FolderConflictResolution** | [**ConflictResolution**](ConflictResolution.md) |  | [optional] 
**FileConflictResolution** | [**ConflictResolution**](ConflictResolution.md) |  | [optional] 
**ItemConflictResolution** | [**ConflictResolution**](ConflictResolution.md) |  | [optional] 
**IsReplaceEmailAddress** | **Boolean** |  | [optional] 
**IsReplaceMeetingLink** | **Boolean** |  | [optional] 
**EmailSensitivityLabel** | [**ManageLabelOptionTypes**](ManageLabelOptionTypes.md) |  | [optional] 
**TeamsSensitivityLabel** | [**ManageLabelOptionTypes**](ManageLabelOptionTypes.md) |  | [optional] 
**UserMappingProfileId** | **String** |  | [optional] 
**EmailLabelMappingProfileId** | **String** |  | [optional] 
**TeamsLabelMappingProfileId** | **String** |  | [optional] 
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
$TeamsPolicyModel = Initialize-FLY.ClientTeamsPolicyModel  -BackupObjects null `
 -IsPostMessage null `
 -IsCovertToHtml null `
 -ConversationTimeEarlierThan null `
 -ConversationTimeLaterThan null `
 -IsBackupMeetingRecords null `
 -IsBackupOnlyTeamsAssociatedContent null `
 -IsBackupFilePermissions null `
 -IsBackupDirectSitePermissions null `
 -IsBackupWholeStructureAndData null `
 -IsBackupMailbox null `
 -FolderConflictResolution null `
 -FileConflictResolution null `
 -ItemConflictResolution null `
 -IsReplaceEmailAddress null `
 -IsReplaceMeetingLink null `
 -EmailSensitivityLabel null `
 -TeamsSensitivityLabel null `
 -UserMappingProfileId null `
 -EmailLabelMappingProfileId null `
 -TeamsLabelMappingProfileId null `
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
$TeamsPolicyModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

