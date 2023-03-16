# SharePointMappingCreationModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Method** | [**SharePointMethodTypes**](SharePointMethodTypes.md) | Specify the method of migration action, Attach or Combine | 
**ProjectId** | **String** | Specify the GUID of project which the project mapping belongs | [optional] 
**SourceName** | **String** | The display name of source identity | [optional] 
**SourceIdentity** | **String** | The source identity of migration | 
**SourceType** | **Int32** | The data type of source identity, refer to [**PlatformDataTypes**](PlatformDataTypes.md) for more details | 
**DestinationName** | **String** | The display name of destination identity | [optional] 
**DestinationIdentity** | **String** | The destination identity of migration | 
**DestinationType** | **Int32** | The data type of destination identity, refer to [**PlatformDataTypes**](PlatformDataTypes.md) for more details | 

## Examples

- Prepare the resource
```powershell
$SharePointMappingCreationModel = Initialize-Fly.ClientSharePointMappingCreationModel  -Method null `
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
