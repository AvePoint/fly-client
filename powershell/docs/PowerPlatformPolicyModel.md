# PowerPlatformPolicyModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ConflictResolution** | [**ConflictResolution**](ConflictResolution.md) |  | [optional] 
**ConnectionMappingProfileId** | **String** |  | [optional] 
**SiteMappingProfileId** | **String** |  | [optional] 
**TeamMappingProfileId** | **String** |  | [optional] 
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
$PowerPlatformPolicyModel = Initialize-FLY.ClientPowerPlatformPolicyModel  -ConflictResolution null `
 -ConnectionMappingProfileId null `
 -SiteMappingProfileId null `
 -TeamMappingProfileId null `
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
$PowerPlatformPolicyModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

