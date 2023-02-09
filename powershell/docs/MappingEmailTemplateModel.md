# MappingEmailTemplateModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SuccessEmailSubject** | **String** |  | [optional] 
**FailedEmailSubject** | **String** |  | [optional] 
**CredentialEmailSubject** | **String** |  | [optional] 
**SuccessEmailBody** | **String** |  | [optional] 
**FailedEmailBody** | **String** |  | [optional] 
**CredentialEmailBody** | **String** |  | [optional] 
**LogoName** | **String** |  | [optional] 
**LogoContent** | **String** |  | [optional] 
**IsDefault** | **Boolean** |  | [optional] 
**EmailType** | [**EmailTemplateType**](EmailTemplateType.md) |  | [optional] 
**Name** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**CreateTime** | **Int64** |  | [optional] 
**CreateBy** | **String** |  | [optional] 
**LastModifyTime** | **Int64** |  | [optional] 
**LastModifyBy** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$MappingEmailTemplateModel = Initialize-FLY.ClientMappingEmailTemplateModel  -SuccessEmailSubject null `
 -FailedEmailSubject null `
 -CredentialEmailSubject null `
 -SuccessEmailBody null `
 -FailedEmailBody null `
 -CredentialEmailBody null `
 -LogoName null `
 -LogoContent null `
 -IsDefault null `
 -EmailType null `
 -Name null `
 -Description null `
 -CreateTime null `
 -CreateBy null `
 -LastModifyTime null `
 -LastModifyBy null `
 -Id null
```

- Convert the resource to JSON
```powershell
$MappingEmailTemplateModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

