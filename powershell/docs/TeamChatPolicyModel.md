# TeamChatPolicyModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IsMigrateAllChats** | **Boolean** |  | [optional] 
**MigrateChatLaterThan** | **Int64** |  | [optional] 
**IsMigrateChatFiles** | **Boolean** |  | [optional] 
**ChatFileConflictResolution** | [**ConflictResolution**](ConflictResolution.md) |  | [optional] 
**ManageLabelCondition** | [**ManageLabelOptionTypes**](ManageLabelOptionTypes.md) |  | [optional] 
**FileLabelMappingProfileId** | **String** |  | [optional] 
**IsProvideDestinationDomain** | **Boolean** |  | [optional] 
**IsArchiveMessageAsHtml** | **Boolean** |  | [optional] 
**IsConversationHtmlInChat** | **Boolean** |  | [optional] 
**IsMigrateExternalUsers** | **Boolean** |  | [optional] 
**DestinationDomain** | **String** |  | [optional] 
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
$TeamChatPolicyModel = Initialize-FLY.ClientTeamChatPolicyModel  -IsMigrateAllChats null `
 -MigrateChatLaterThan null `
 -IsMigrateChatFiles null `
 -ChatFileConflictResolution null `
 -ManageLabelCondition null `
 -FileLabelMappingProfileId null `
 -IsProvideDestinationDomain null `
 -IsArchiveMessageAsHtml null `
 -IsConversationHtmlInChat null `
 -IsMigrateExternalUsers null `
 -DestinationDomain null `
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
$TeamChatPolicyModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

