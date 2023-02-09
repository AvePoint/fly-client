# TeamChatPolicyCreationModel
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
**Name** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**Platform** | [**PlatformType**](PlatformType.md) |  | [optional] 
**Notification** | [**NotificationModel**](NotificationModel.md) |  | [optional] 
**IsDefault** | **Boolean** |  | [optional] 
**CustomizeFeatures** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TeamChatPolicyCreationModel = Initialize-FLY.ClientTeamChatPolicyCreationModel  -IsMigrateAllChats null `
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
 -Name null `
 -Description null `
 -Platform null `
 -Notification null `
 -IsDefault null `
 -CustomizeFeatures null
```

- Convert the resource to JSON
```powershell
$TeamChatPolicyCreationModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

