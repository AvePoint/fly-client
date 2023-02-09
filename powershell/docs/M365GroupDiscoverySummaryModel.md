# M365GroupDiscoverySummaryModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TotalGroups** | **Int64** |  | [optional] 
**GroupsWithoutAnOwner** | **Int64** |  | [optional] 
**InactiveGroups** | **Int64** |  | [optional] 
**GroupsWithExternalUsers** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$M365GroupDiscoverySummaryModel = Initialize-FLY.ClientM365GroupDiscoverySummaryModel  -TotalGroups null `
 -GroupsWithoutAnOwner null `
 -InactiveGroups null `
 -GroupsWithExternalUsers null
```

- Convert the resource to JSON
```powershell
$M365GroupDiscoverySummaryModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

