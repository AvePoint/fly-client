# Fly.Client\Api.FlyConnectApi

Method | Description
------------- | -------------
[**Connect-Fly**](FlyConnectApi.md#connect-fly) | Connect to Fly Public API with Client Credentials/Client Secret.
[**Disconnect-Fly**](FlyConnectApi.md#disconnect-fly) | Disconnect from Fly Public API.

<a name="Connect-Fly"></a>
# **Connect-Fly**
> Connect-Fly<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Url] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ClientId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ClientSecret] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Certificate] <X509Certificate2><br>

Connect to Fly Public API with Client Credentials/Client Secret.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Url** | **String**| The public API URL varies with your data center, you can find it in Fly user guide. 
 **ClientId** | **String**| The application (client) ID you have retrieved from AvePoint Online Service App registrations. 
 **ClientSecret** | **String**| The corresponding client secret you used while registering the AvePoint app. 
 **Certificate** | **X509Certificate2**| The corresponding .pfx certificate file of the .cer certificate you used while registering the AvePoint app. 

### Example
```powershell
$Url = "https://graph-public.sharepointguild.com/fly" 
$ClientId = "4aeeb44e-325a-4002-a36d-2986b65cad0a" 
$ClientSecret = "your client secret" 
$Cert = (Get-ChildItem -Path 'Cert:\LocalMachine\My\304CAFB0719971D7F180DE983F649DFAC85D47D3' -Recurse)[0] 

# by Client Secret
Connect-Fly -Url $Url -ClientId $ClientId -ClientSecret $ClientSecret

# by Client Certificate
Connect-Fly -Url $Url -ClientId $ClientId -Certificate $Cert
```

[[Back to top]](#) [[Back to API list]](FlyApi.md#documentation-for-cmdlets) [[Back to README]](../README.md)

<a name="Disconnect-Fly"></a>
# **Disconnect-Fly**
> Disconnect-Fly<br>

Disconnect from Fly Public API.

### Example
```powershell
Disconnect-Fly
```

[[Back to top]](#) [[Back to API list]](FlyApi.md#documentation-for-cmdlets) [[Back to README]](../README.md)
