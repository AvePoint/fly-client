# M365GroupConnectionCreationModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**GeoLocation** | [**GeoLocationInfoModel**](GeoLocationInfoModel.md) |  | [optional] 
**IsEnableGeoLocation** | **Boolean** |  | [optional] 
**Name** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**ConnectionType** | [**PlatformType**](PlatformType.md) |  | [optional] 
**ConnectionSide** | [**ConnectionSide**](ConnectionSide.md) |  | [optional] 
**TenantId** | **String** |  | [optional] 
**ContainerId** | **String** |  | [optional] 
**AppProfileId** | **String** |  | [optional] 
**ServiceAccountId** | **String** |  | [optional] 
**ServiceAccountPoolId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$M365GroupConnectionCreationModel = Initialize-FLY.ClientM365GroupConnectionCreationModel  -GeoLocation null `
 -IsEnableGeoLocation null `
 -Name null `
 -Description null `
 -ConnectionType null `
 -ConnectionSide null `
 -TenantId null `
 -ContainerId null `
 -AppProfileId null `
 -ServiceAccountId null `
 -ServiceAccountPoolId null
```

- Convert the resource to JSON
```powershell
$M365GroupConnectionCreationModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

