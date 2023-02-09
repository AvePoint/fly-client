# ProjectEmailTemplateCreationModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProjectEmailSubject** | **String** |  | [optional] 
**ProjectEmailBody** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**LogoName** | **String** |  | [optional] 
**LogoContent** | **String** |  | [optional] 
**IsDefault** | **Boolean** |  | [optional] 
**EmailType** | [**EmailTemplateType**](EmailTemplateType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProjectEmailTemplateCreationModel = Initialize-FLY.ClientProjectEmailTemplateCreationModel  -ProjectEmailSubject null `
 -ProjectEmailBody null `
 -Name null `
 -Description null `
 -LogoName null `
 -LogoContent null `
 -IsDefault null `
 -EmailType null
```

- Convert the resource to JSON
```powershell
$ProjectEmailTemplateCreationModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

