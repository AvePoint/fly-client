# ColumnMappingModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Platform** | [**PlatformType**](PlatformType.md) |  | [optional] 
**Type** | [**MappingProfileType**](MappingProfileType.md) |  | [optional] 
**Items** | [**ColumnMappingItemModel[]**](ColumnMappingItemModel.md) |  | [optional] 
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
$ColumnMappingModel = Initialize-FLY.ClientColumnMappingModel  -Platform null `
 -Type null `
 -Items null `
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
$ColumnMappingModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

