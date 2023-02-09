# MappingJobCommentModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CommentKey** | **String** |  | [optional] 
**CommentArgs** | **String[]** |  | [optional] 
**Comment** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$MappingJobCommentModel = Initialize-FLY.ClientMappingJobCommentModel  -CommentKey null `
 -CommentArgs null `
 -Comment null
```

- Convert the resource to JSON
```powershell
$MappingJobCommentModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

