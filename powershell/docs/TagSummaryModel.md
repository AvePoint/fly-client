# TagSummaryModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the object | [optional] 
**Description** | **String** | The description of the object | [optional] 
**CreateTime** | **Int64** | The creation time of the object | [optional] 
**CreateBy** | **String** | The user who create this object | [optional] 
**LastModifyTime** | **Int64** | The last modified time of the object | [optional] 
**LastModifyBy** | **String** | The user who last modified the object | [optional] 
**Id** | **String** | The GUID of the object | [optional] 

## Examples

- Prepare the resource
```powershell
$TagSummaryModel = Initialize-FLY.ClientTagSummaryModel  -Name null `
 -Description null `
 -CreateTime null `
 -CreateBy null `
 -LastModifyTime null `
 -LastModifyBy null `
 -Id null
```

- Convert the resource to JSON
```powershell
$TagSummaryModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
