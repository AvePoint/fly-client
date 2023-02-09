# M365GroupPolicyModel
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
$M365GroupPolicyModel = Initialize-FLY.ClientM365GroupPolicyModel  -IsBackupPlanner null `
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
$M365GroupPolicyModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

