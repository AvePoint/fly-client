# ProjectMappingJobModelApiQueryResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**NextLink** | **String** |  | [optional] 
**VarData** | [**ProjectMappingJobModel[]**](ProjectMappingJobModel.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProjectMappingJobModelApiQueryResult = Initialize-FLY.ClientProjectMappingJobModelApiQueryResult  -NextLink null `
 -VarData null
```

- Convert the resource to JSON
```powershell
$ProjectMappingJobModelApiQueryResult | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

