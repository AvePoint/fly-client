# MappingStateModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**HasScannedData** | **Boolean** |  | [optional] 
**HasMigratedData** | **Boolean** |  | [optional] 
**HasMigrationJob** | **Boolean** |  | [optional] 
**Details** | **System.Collections.Hashtable** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$MappingStateModel = Initialize-FLY.ClientMappingStateModel  -HasScannedData null `
 -HasMigratedData null `
 -HasMigrationJob null `
 -Details null
```

- Convert the resource to JSON
```powershell
$MappingStateModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

