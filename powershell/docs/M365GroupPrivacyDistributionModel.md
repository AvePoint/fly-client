# M365GroupPrivacyDistributionModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Privacy** | [**M365GroupDiscoveryPrivacy**](M365GroupDiscoveryPrivacy.md) |  | [optional] 
**Count** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$M365GroupPrivacyDistributionModel = Initialize-FLY.ClientM365GroupPrivacyDistributionModel  -Privacy null `
 -Count null
```

- Convert the resource to JSON
```powershell
$M365GroupPrivacyDistributionModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

