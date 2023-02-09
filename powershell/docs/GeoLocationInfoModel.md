# GeoLocationInfoModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Code** | **String** |  | [optional] 
**IsDefault** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GeoLocationInfoModel = Initialize-FLY.ClientGeoLocationInfoModel  -Code null `
 -IsDefault null
```

- Convert the resource to JSON
```powershell
$GeoLocationInfoModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

