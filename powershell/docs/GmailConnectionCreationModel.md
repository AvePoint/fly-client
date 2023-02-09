# GmailConnectionCreationModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
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
$GmailConnectionCreationModel = Initialize-FLY.ClientGmailConnectionCreationModel  -Name null `
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
$GmailConnectionCreationModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

