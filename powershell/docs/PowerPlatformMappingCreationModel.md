# PowerPlatformMappingCreationModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProjectId** | **String** |  | [optional] 
**SourceName** | **String** |  | [optional] 
**SourceIdentity** | **String** |  | [optional] 
**SourceType** | **Int32** |  | [optional] 
**DestinationName** | **String** |  | [optional] 
**DestinationIdentity** | **String** |  | [optional] 
**DestinationType** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PowerPlatformMappingCreationModel = Initialize-FLY.ClientPowerPlatformMappingCreationModel  -ProjectId null `
 -SourceName null `
 -SourceIdentity null `
 -SourceType null `
 -DestinationName null `
 -DestinationIdentity null `
 -DestinationType null
```

- Convert the resource to JSON
```powershell
$PowerPlatformMappingCreationModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

