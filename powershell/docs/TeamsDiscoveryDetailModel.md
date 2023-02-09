# TeamsDiscoveryDetailModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EmailAddress** | **String** |  | [optional] 
**DisplayName** | **String** |  | [optional] 
**Privacy** | [**TeamsDiscoveryPrivacy**](TeamsDiscoveryPrivacy.md) |  | [optional] 
**Status** | [**TeamsDiscoveryStatus**](TeamsDiscoveryStatus.md) |  | [optional] 
**Owners** | **Int32** |  | [optional] 
**Members** | **Int32** |  | [optional] 
**Guests** | **Int32** |  | [optional] 
**TotalChannelCount** | **Int32** |  | [optional] 
**PrivateChannels** | **Int32** |  | [optional] 
**StandardChannels** | **Int32** |  | [optional] 
**SharedChannels** | **Int32** |  | [optional] 
**LastActivityDate** | **Int64** |  | [optional] 
**TeamSiteUrl** | **String** |  | [optional] 
**TeamSiteTitle** | **String** |  | [optional] 
**TeamSiteSize** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TeamsDiscoveryDetailModel = Initialize-FLY.ClientTeamsDiscoveryDetailModel  -EmailAddress null `
 -DisplayName null `
 -Privacy null `
 -Status null `
 -Owners null `
 -Members null `
 -Guests null `
 -TotalChannelCount null `
 -PrivateChannels null `
 -StandardChannels null `
 -SharedChannels null `
 -LastActivityDate null `
 -TeamSiteUrl null `
 -TeamSiteTitle null `
 -TeamSiteSize null
```

- Convert the resource to JSON
```powershell
$TeamsDiscoveryDetailModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

