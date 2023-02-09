# FeedbackModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Rate** | **Int32** |  | [optional] 
**Type** | [**FeedbackType**](FeedbackType.md) |  | [optional] 
**FeedbackMessage** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$FeedbackModel = Initialize-FLY.ClientFeedbackModel  -Rate null `
 -Type null `
 -FeedbackMessage null
```

- Convert the resource to JSON
```powershell
$FeedbackModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

