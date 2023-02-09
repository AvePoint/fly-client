# TeamsPolicyCreationModel
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
**Name** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**Platform** | [**PlatformType**](PlatformType.md) |  | [optional] 
**Notification** | [**NotificationModel**](NotificationModel.md) |  | [optional] 
**IsDefault** | **Boolean** |  | [optional] 
**CustomizeFeatures** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TeamsPolicyCreationModel = Initialize-FLY.ClientTeamsPolicyCreationModel  -BackupObjects null `
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
 -Name null `
 -Description null `
 -Platform null `
 -Notification null `
 -IsDefault null `
 -CustomizeFeatures null
```

- Convert the resource to JSON
```powershell
$TeamsPolicyCreationModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

