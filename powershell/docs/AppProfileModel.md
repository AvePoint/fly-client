# AppProfileModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**Type** | [**AppProfileType**](AppProfileType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AppProfileModel = Initialize-FLY.ClientAppProfileModel  -Name null `
 -Id null `
 -Type null
```

- Convert the resource to JSON
```powershell
$AppProfileModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

