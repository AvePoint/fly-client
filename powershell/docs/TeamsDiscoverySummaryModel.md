# TeamsDiscoverySummaryModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TotalTeams** | **Int64** |  | [optional] 
**TeamsWithoutAnOwner** | **Int64** |  | [optional] 
**InactiveTeams** | **Int64** |  | [optional] 
**TeamsWithExternalUsers** | **Int64** |  | [optional] 
**TotalChannelCount** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TeamsDiscoverySummaryModel = Initialize-FLY.ClientTeamsDiscoverySummaryModel  -TotalTeams null `
 -TeamsWithoutAnOwner null `
 -InactiveTeams null `
 -TeamsWithExternalUsers null `
 -TotalChannelCount null
```

- Convert the resource to JSON
```powershell
$TeamsDiscoverySummaryModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

