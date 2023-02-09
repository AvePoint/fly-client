# MappingEmailTemplateCreationModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SuccessEmailSubject** | **String** |  | [optional] 
**FailedEmailSubject** | **String** |  | [optional] 
**CredentialEmailSubject** | **String** |  | [optional] 
**SuccessEmailBody** | **String** |  | [optional] 
**FailedEmailBody** | **String** |  | [optional] 
**CredentialEmailBody** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**LogoName** | **String** |  | [optional] 
**LogoContent** | **String** |  | [optional] 
**IsDefault** | **Boolean** |  | [optional] 
**EmailType** | [**EmailTemplateType**](EmailTemplateType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$MappingEmailTemplateCreationModel = Initialize-FLY.ClientMappingEmailTemplateCreationModel  -SuccessEmailSubject null `
 -FailedEmailSubject null `
 -CredentialEmailSubject null `
 -SuccessEmailBody null `
 -FailedEmailBody null `
 -CredentialEmailBody null `
 -Name null `
 -Description null `
 -LogoName null `
 -LogoContent null `
 -IsDefault null `
 -EmailType null
```

- Convert the resource to JSON
```powershell
$MappingEmailTemplateCreationModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

