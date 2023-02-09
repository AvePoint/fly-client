# DorContainerModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Type** | [**DorContainerType**](DorContainerType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DorContainerModel = Initialize-FLY.ClientDorContainerModel  -Id null `
 -Name null `
 -Type null
```

- Convert the resource to JSON
```powershell
$DorContainerModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

