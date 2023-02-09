# ProjectCreationModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**SourcePlatform** | [**PlatformType**](PlatformType.md) |  | [optional] 
**SourceConnectionId** | **String** |  | [optional] 
**DestinationPlatform** | [**PlatformType**](PlatformType.md) |  | [optional] 
**DestinationConnectionId** | **String** |  | [optional] 
**PolicyId** | **String** |  | [optional] 
**TagIds** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProjectCreationModel = Initialize-FLY.ClientProjectCreationModel  -Name null `
 -Description null `
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

