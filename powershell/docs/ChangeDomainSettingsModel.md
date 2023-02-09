# ChangeDomainSettingsModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**OriginalSourceDomain** | **String** |  | [optional] 
**NewSourceDomain** | **String** |  | [optional] 
**OriginalDestinationDomain** | **String** |  | [optional] 
**NewDestinationDomain** | **String** |  | [optional] 
**IsSelectAll** | **Boolean** |  | [optional] 
**Search** | **String** |  | [optional] 
**MappingIds** | **String[]** |  | [optional] 
**Stages** | **Int32[]** |  | [optional] 
**StageStatuses** | **Int32[]** |  | [optional] 
**Statuses** | [**ProjectMappingItemStatus[]**](ProjectMappingItemStatus.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ChangeDomainSettingsModel = Initialize-FLY.ClientChangeDomainSettingsModel  -OriginalSourceDomain null `
 -NewSourceDomain null `
 -OriginalDestinationDomain null `
 -NewDestinationDomain null `
 -IsSelectAll null `
 -Search null `
 -MappingIds null `
 -Stages null `
 -StageStatuses null `
 -Statuses null
```

- Convert the resource to JSON
```powershell
$ChangeDomainSettingsModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

