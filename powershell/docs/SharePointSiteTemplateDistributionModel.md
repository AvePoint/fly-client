# SharePointSiteTemplateDistributionModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TemplateName** | **String** |  | [optional] 
**Count** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SharePointSiteTemplateDistributionModel = Initialize-FLY.ClientSharePointSiteTemplateDistributionModel  -TemplateName null `
 -Count null
```

- Convert the resource to JSON
```powershell
$SharePointSiteTemplateDistributionModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

