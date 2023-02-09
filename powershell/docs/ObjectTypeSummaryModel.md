# ObjectTypeSummaryModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ObjectType** | **String** |  | [optional] 
**Tooltip** | **String** |  | [optional] 
**MigratedSize** | **Int64** |  | [optional] 
**TotalItems** | **Int32** |  | [optional] 
**SuccessfulItems** | **Int32** |  | [optional] 
**WarningItems** | **Int32** |  | [optional] 
**ErrorItems** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ObjectTypeSummaryModel = Initialize-FLY.ClientObjectTypeSummaryModel  -ObjectType null `
 -Tooltip null `
 -MigratedSize null `
 -TotalItems null `
 -SuccessfulItems null `
 -WarningItems null `
 -ErrorItems null
```

- Convert the resource to JSON
```powershell
$ObjectTypeSummaryModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

