# NotificationModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SendProjectMigration** | **Boolean** |  | [optional] 
**Frequency** | **Int32** |  | [optional] 
**StartTime** | **Int64** |  | [optional] 
**IsEnableEndTime** | **Boolean** |  | [optional] 
**EndTime** | **Int64** |  | [optional] 
**MigrationEmailRecipients** | **String[]** |  | [optional] 
**ProjectMigrationEmailTemplateId** | **String** |  | [optional] 
**SendIndividualMapping** | **Boolean** |  | [optional] 
**MappingCondition** | [**InformMappingCondition**](InformMappingCondition.md) |  | [optional] 
**SendToSourceEmail** | **Boolean** |  | [optional] 
**SendToDestinationEmail** | **Boolean** |  | [optional] 
**SendToMe** | **Boolean** |  | [optional] 
**SendToAdditionalRecipients** | **Boolean** |  | [optional] 
**AdditionalRecipients** | **String[]** |  | [optional] 
**EmailTemplateId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$NotificationModel = Initialize-FLY.ClientNotificationModel  -SendProjectMigration null `
 -Frequency null `
 -StartTime null `
 -IsEnableEndTime null `
 -EndTime null `
 -MigrationEmailRecipients null `
 -ProjectMigrationEmailTemplateId null `
 -SendIndividualMapping null `
 -MappingCondition null `
 -SendToSourceEmail null `
 -SendToDestinationEmail null `
 -SendToMe null `
 -SendToAdditionalRecipients null `
 -AdditionalRecipients null `
 -EmailTemplateId null
```

- Convert the resource to JSON
```powershell
$NotificationModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

