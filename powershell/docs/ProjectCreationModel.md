# ProjectCreationModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Specify the name of project | [optional] 
**SourcePlatform** | [**PlatformType**](PlatformType.md) |  | [optional] 
**SourceConnectionId** | **String** | Specify the GUID of source connection | [optional] 
**DestinationPlatform** | [**PlatformType**](PlatformType.md) |  | [optional] 
**DestinationConnectionId** | **String** | Specify the GUID of destination connection | [optional] 
**PolicyId** | **String** | Specify the GUID of policy which applied to the project | [optional] 
**TagIds** | **String[]** | Specify a list of tag ids to the project | [optional] 

## Examples

- Prepare the resource
```powershell
$ProjectCreationModel = Initialize-FLY.ClientProjectCreationModel  -Name null `
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
