# TeamsChannelTypeDistributionModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ChannelType** | [**TeamsChannelDiscoveryType**](TeamsChannelDiscoveryType.md) |  | [optional] 
**Count** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TeamsChannelTypeDistributionModel = Initialize-FLY.ClientTeamsChannelTypeDistributionModel  -ChannelType null `
 -Count null
```

- Convert the resource to JSON
```powershell
$TeamsChannelTypeDistributionModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

