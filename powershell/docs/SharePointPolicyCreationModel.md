# SharePointPolicyCreationModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IsBackupSubsites** | **Boolean** |  | [optional] 
**IsBackupSiteCollectionAndSiteFeatures** | **Boolean** |  | [optional] 
**IsBackupSiteAndListContentTypes** | **Boolean** |  | [optional] 
**IsBackupSiteCollectionAndSiteSettings** | **Boolean** |  | [optional] 
**IsBackupNavigation** | **Boolean** |  | [optional] 
**IsBackupSiteAndListColumns** | **Boolean** |  | [optional] 
**IsBackupManagedMetadataService** | **Boolean** |  | [optional] 
**IsBackupApp** | **Boolean** |  | [optional] 
**IsBackupListsAndLibraries** | **Boolean** |  | [optional] 
**IsBackupSettings** | **Boolean** |  | [optional] 
**IsBackupPublicViews** | **Boolean** |  | [optional] 
**IsBackupFoldersFilesItemsAndListAttachments** | **Boolean** |  | [optional] 
**IsBackupWebPartsAndPages** | **Boolean** |  | [optional] 
**IsBackupClassicWebPartsAndPages** | **Boolean** |  | [optional] 
**IsBackupSite** | **Boolean** |  | [optional] 
**IsBackupList** | **Boolean** |  | [optional] 
**IsBackupContent** | **Boolean** |  | [optional] 
**IsBackupSharedLinks** | **Boolean** |  | [optional] 
**IsMapSPGroupToADGroup** | **Boolean** |  | [optional] 
**IsBackupWorkflowDefinition** | **Boolean** |  | [optional] 
**IsBackupUserAlerts** | **Boolean** |  | [optional] 
**IsEnableFilterPolicy** | **Boolean** |  | [optional] 
**FilterPolicyId** | **String** |  | [optional] 
**ContainerConflictResolution** | [**ConflictResolution**](ConflictResolution.md) |  | [optional] 
**ContentConflictResolution** | [**ConflictResolution**](ConflictResolution.md) |  | [optional] 
**ManageLabelsOfFiles** | [**ManageLabelOptionTypes**](ManageLabelOptionTypes.md) |  | [optional] 
**LabelMappingIdOfFile** | **String** |  | [optional] 
**ManageLabelsOfSites** | [**ManageLabelOptionTypes**](ManageLabelOptionTypes.md) |  | [optional] 
**LabelMappingIdOfSite** | **String** |  | [optional] 
**IsRemoveSourceFromFiles** | **Boolean** |  | [optional] 
**UserMappingProfileId** | **String** |  | [optional] 
**UserMappingRules** | [**UserMappingRuleModel[]**](UserMappingRuleModel.md) |  | [optional] 
**UserMappingDefaultUser** | **String** |  | [optional] 
**ColumnMappingId** | **String** |  | [optional] 
**ContentTypeMappingId** | **String** |  | [optional] 
**TemplateMappingId** | **String** |  | [optional] 
**UrlMappingId** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**Platform** | [**PlatformType**](PlatformType.md) |  | [optional] 
**Notification** | [**NotificationModel**](NotificationModel.md) |  | [optional] 
**IsDefault** | **Boolean** |  | [optional] 
**CustomizeFeatures** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SharePointPolicyCreationModel = Initialize-FLY.ClientSharePointPolicyCreationModel  -IsBackupSubsites null `
 -IsBackupSiteCollectionAndSiteFeatures null `
 -IsBackupSiteAndListContentTypes null `
 -IsBackupSiteCollectionAndSiteSettings null `
 -IsBackupNavigation null `
 -IsBackupSiteAndListColumns null `
 -IsBackupManagedMetadataService null `
 -IsBackupApp null `
 -IsBackupListsAndLibraries null `
 -IsBackupSettings null `
 -IsBackupPublicViews null `
 -IsBackupFoldersFilesItemsAndListAttachments null `
 -IsBackupWebPartsAndPages null `
 -IsBackupClassicWebPartsAndPages null `
 -IsBackupSite null `
 -IsBackupList null `
 -IsBackupContent null `
 -IsBackupSharedLinks null `
 -IsMapSPGroupToADGroup null `
 -IsBackupWorkflowDefinition null `
 -IsBackupUserAlerts null `
 -IsEnableFilterPolicy null `
 -FilterPolicyId null `
 -ContainerConflictResolution null `
 -ContentConflictResolution null `
 -ManageLabelsOfFiles null `
 -LabelMappingIdOfFile null `
 -ManageLabelsOfSites null `
 -LabelMappingIdOfSite null `
 -IsRemoveSourceFromFiles null `
 -UserMappingProfileId null `
 -UserMappingRules null `
 -UserMappingDefaultUser null `
 -ColumnMappingId null `
 -ContentTypeMappingId null `
 -TemplateMappingId null `
 -UrlMappingId null `
 -Name null `
 -Description null `
 -Platform null `
 -Notification null `
 -IsDefault null `
 -CustomizeFeatures null
```

- Convert the resource to JSON
```powershell
$SharePointPolicyCreationModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

