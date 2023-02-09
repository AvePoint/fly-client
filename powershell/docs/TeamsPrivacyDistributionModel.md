# TeamsPrivacyDistributionModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Privacy** | [**TeamsDiscoveryPrivacy**](TeamsDiscoveryPrivacy.md) |  | [optional] 
**Count** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TeamsPrivacyDistributionModel = Initialize-FLY.ClientTeamsPrivacyDistributionModel  -Privacy null `
 -Count null
```

- Convert the resource to JSON
```powershell
$TeamsPrivacyDistributionModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

