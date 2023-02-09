# M365GroupPolicyCreationModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IsBackupPlanner** | **Boolean** |  | [optional] 
**IsBackupMembership** | **Boolean** |  | [optional] 
**IsBackupMailbox** | **Boolean** |  | [optional] 
**SiteCondition** | [**TeamSiteContentLevel**](TeamSiteContentLevel.md) |  | [optional] 
**ContainerConflictResolution** | [**ConflictResolution**](ConflictResolution.md) |  | [optional] 
**TeamConflictResolution** | [**ConflictResolution**](ConflictResolution.md) |  | [optional] 
**MailboxConflictResolution** | [**ConflictResolution**](ConflictResolution.md) |  | [optional] 
**ManageFileLabelCondition** | [**ManageLabelOptionTypes**](ManageLabelOptionTypes.md) |  | [optional] 
**ManageGroupLabelCondition** | [**ManageLabelOptionTypes**](ManageLabelOptionTypes.md) |  | [optional] 
**IsReplaceEmail** | **Boolean** |  | [optional] 
**IsReplaceMeetingLink** | **Boolean** |  | [optional] 
**FileLabelMappingProfileId** | **String** |  | [optional] 
**GroupLabelMappingProfileId** | **String** |  | [optional] 
**UserMappingProfileId** | **String** |  | [optional] 
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
$M365GroupPolicyCreationModel = Initialize-FLY.ClientM365GroupPolicyCreationModel  -IsBackupPlanner null `
 -IsBackupMembership null `
 -IsBackupMailbox null `
 -SiteCondition null `
 -ContainerConflictResolution null `
 -TeamConflictResolution null `
 -MailboxConflictResolution null `
 -ManageFileLabelCondition null `
 -ManageGroupLabelCondition null `
 -IsReplaceEmail null `
 -IsReplaceMeetingLink null `
 -FileLabelMappingProfileId null `
 -GroupLabelMappingProfileId null `
 -UserMappingProfileId null `
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
$M365GroupPolicyCreationModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

