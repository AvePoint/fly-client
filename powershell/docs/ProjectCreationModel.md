# ProjectCreationModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Specify the name of project | 
**SourcePlatform** | [**PlatformType**](PlatformType.md) | Specify the platform type of source connection | 
**SourceConnectionId** | **String** | Specify the GUID of source connection | 
**DestinationPlatform** | [**PlatformType**](PlatformType.md) | Specify the platform type of destination connection | 
**DestinationConnectionId** | **String** | Specify the GUID of destination connection | 
**PolicyId** | **String** | Specify the GUID of policy which applied to the project | 
**TagIds** | **String[]** | Specify a list of tag ids to the project | 

## Examples

- Prepare the resource
```powershell
$ProjectCreationModel = Initialize-Fly.ClientProjectCreationModel  -Name null `
 -SourcePlatform null `
 -SourceConnectionId null `
 -DestinationPlatform null `
 -DestinationConnectionId null `
 -PolicyId null `
 -TagIds null
```

- Convert the resource to JSON
```powershell
$ProjectCreationModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
