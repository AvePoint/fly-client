# PowerPlatformPolicyCreationModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ConflictResolution** | [**ConflictResolution**](ConflictResolution.md) |  | [optional] 
**ConnectionMappingProfileId** | **String** |  | [optional] 
**SiteMappingProfileId** | **String** |  | [optional] 
**TeamMappingProfileId** | **String** |  | [optional] 
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
$PowerPlatformPolicyCreationModel = Initialize-FLY.ClientPowerPlatformPolicyCreationModel  -ConflictResolution null `
 -ConnectionMappingProfileId null `
 -SiteMappingProfileId null `
 -TeamMappingProfileId null `
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
$PowerPlatformPolicyCreationModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

