# OneDrivePolicyCreationModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IsMigrateMeetingRecords** | **Boolean** |  | [optional] 
**IsDirectPermission** | **Boolean** |  | [optional] 
**IsSharedLink** | **Boolean** |  | [optional] 
**IsConfigureFilterPolicy** | **Boolean** |  | [optional] 
**FilterPolicyId** | **String** |  | [optional] 
**ScopeCondition** | [**OneDriveScopeCondition**](OneDriveScopeCondition.md) |  | [optional] 
**ContainerConflictResolution** | [**ConflictResolution**](ConflictResolution.md) |  | [optional] 
**ContentConflictResolution** | [**ConflictResolution**](ConflictResolution.md) |  | [optional] 
**ManageLabelCondition** | [**ManageLabelOptionTypes**](ManageLabelOptionTypes.md) |  | [optional] 
**IsRemoveSourceIRM** | **Boolean** |  | [optional] 
**IsDefineDefaultUser** | **Boolean** |  | [optional] 
**DefaultUserValue** | **String** |  | [optional] 
**LabelMappingProfileId** | **String** |  | [optional] 
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
$OneDrivePolicyCreationModel = Initialize-FLY.ClientOneDrivePolicyCreationModel  -IsMigrateMeetingRecords null `
 -IsDirectPermission null `
 -IsSharedLink null `
 -IsConfigureFilterPolicy null `
 -FilterPolicyId null `
 -ScopeCondition null `
 -ContainerConflictResolution null `
 -ContentConflictResolution null `
 -ManageLabelCondition null `
 -IsRemoveSourceIRM null `
 -IsDefineDefaultUser null `
 -DefaultUserValue null `
 -LabelMappingProfileId null `
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
$OneDrivePolicyCreationModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

