# M365GroupDiscoveryDetailModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EmailAddress** | **String** |  | [optional] 
**DisplayName** | **String** |  | [optional] 
**Type** | [**M365GroupDiscoveryType**](M365GroupDiscoveryType.md) |  | [optional] 
**Privacy** | [**M365GroupDiscoveryPrivacy**](M365GroupDiscoveryPrivacy.md) |  | [optional] 
**Owners** | **Int32** |  | [optional] 
**Members** | **Int32** |  | [optional] 
**ExternalMembers** | **Int32** |  | [optional] 
**TeamsStatus** | [**M365GroupDiscoveryTeamsStatus**](M365GroupDiscoveryTeamsStatus.md) |  | [optional] 
**LastActivityDate** | **Int64** |  | [optional] 
**SiteTitle** | **String** |  | [optional] 
**SiteUrl** | **String** |  | [optional] 
**SiteSize** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$M365GroupDiscoveryDetailModel = Initialize-FLY.ClientM365GroupDiscoveryDetailModel  -EmailAddress null `
 -DisplayName null `
 -Type null `
 -Privacy null `
 -Owners null `
 -Members null `
 -ExternalMembers null `
 -TeamsStatus null `
 -LastActivityDate null `
 -SiteTitle null `
 -SiteUrl null `
 -SiteSize null
```

- Convert the resource to JSON
```powershell
$M365GroupDiscoveryDetailModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

