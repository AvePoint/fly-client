# ExchangeConnectionModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ConnectionType** | [**PlatformType**](PlatformType.md) |  | [optional] 
**ConnectionSide** | [**ConnectionSide**](ConnectionSide.md) |  | [optional] 
**TenantId** | **String** |  | [optional] 
**ContainerId** | **String** |  | [optional] 
**AppProfileId** | **String** |  | [optional] 
**ServiceAccountId** | **String** |  | [optional] 
**ServiceAccountPoolId** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**CreateTime** | **Int64** |  | [optional] 
**CreateBy** | **String** |  | [optional] 
**LastModifyTime** | **Int64** |  | [optional] 
**LastModifyBy** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ExchangeConnectionModel = Initialize-FLY.ClientExchangeConnectionModel  -ConnectionType null `
 -ConnectionSide null `
 -TenantId null `
 -ContainerId null `
 -AppProfileId null `
 -ServiceAccountId null `
 -ServiceAccountPoolId null `
 -Name null `
 -Description null `
 -CreateTime null `
 -CreateBy null `
 -LastModifyTime null `
 -LastModifyBy null `
 -Id null
```

- Convert the resource to JSON
```powershell
$ExchangeConnectionModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

