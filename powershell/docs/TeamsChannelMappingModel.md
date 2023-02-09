# TeamsChannelMappingModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SourceType** | [**TeamsChannelType**](TeamsChannelType.md) |  | [optional] 
**SourceName** | **String** |  | [optional] 
**DestinationType** | [**TeamsChannelType**](TeamsChannelType.md) |  | [optional] 
**DestinationName** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TeamsChannelMappingModel = Initialize-FLY.ClientTeamsChannelMappingModel  -SourceType null `
 -SourceName null `
 -DestinationType null `
 -DestinationName null
```

- Convert the resource to JSON
```powershell
$TeamsChannelMappingModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

