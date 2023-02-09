# SharePointMappingCreationModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Method** | [**SharePointMethodTypes**](SharePointMethodTypes.md) |  | [optional] 
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
$SharePointMappingCreationModel = Initialize-FLY.ClientSharePointMappingCreationModel  -Method null `
 -ProjectId null `
 -SourceName null `
 -SourceIdentity null `
 -SourceType null `
 -DestinationName null `
 -DestinationIdentity null `
 -DestinationType null
```

- Convert the resource to JSON
```powershell
$SharePointMappingCreationModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

