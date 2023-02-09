# ProductCardModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProductType** | [**AosProductType**](AosProductType.md) |  | [optional] 
**DisplayName** | **String** |  | [optional] 
**ProductIconBase64** | **String** |  | [optional] 
**Url** | **String** |  | [optional] 
**IsExpired** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProductCardModel = Initialize-FLY.ClientProductCardModel  -ProductType null `
 -DisplayName null `
 -ProductIconBase64 null `
 -Url null `
 -IsExpired null
```

- Convert the resource to JSON
```powershell
$ProductCardModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

