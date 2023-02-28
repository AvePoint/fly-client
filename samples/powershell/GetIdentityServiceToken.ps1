function Get-IdentityServiceToken {
    [CmdletBinding()]
    [OutputType([string])]
    Param(
        [Parameter(Mandatory)]
        [string]$IdentityServiceUri,
        [Parameter(Mandatory)]
        [string]$Scope,
        [Parameter(Mandatory)]
        [string]$ClientId,
        [Parameter(Mandatory)]
        [Alias("Certificate", "Cert")]
        [System.Security.Cryptography.X509Certificates.X509Certificate2]$SigningCertificate
    )
    PROCESS {
        'Calling method: Get-IdentityServiceToken' | Write-Debug
        $encodedThumbprint = ConvertTo-Base64UrlEncodedString -Bytes $SigningCertificate.GetCertHash()
        $headerTable = [ordered]@{typ = "JWT"; alg = "RS256"; kid = $encodedThumbprint }
        $header = $headerTable | ConvertTo-Json -Compress | ConvertTo-Base64UrlEncodedString
        $now = Get-Date
        $currentEpochTime = Convert-DateTimeToEpoch -DateTime $now
        $notBefore = $currentEpochTime
        $futureEpochTime = Convert-DateTimeToEpoch -DateTime ($now.AddHours(1))
        $payloadTable = [ordered]@{sub = $ClientId; jti = ([System.Guid]::NewGuid()).ToString(); iss = $ClientId; aud = $IdentityServiceUri.TrimEnd('/') + "/connect/token"; nbf = $notBefore; exp = $futureEpochTime; iat = $currentEpochTime }
        $payload = $payloadTable | ConvertTo-Json -Compress | ConvertTo-Base64UrlEncodedString
        $jwtPlainText = "{0}.{1}" -f $header, $payload
        $jwtSig = New-JwtRsaSignature -JsonWebToken $jwtPlainText -SigningCertificate $SigningCertificate
        $ClientAssertion = "{0}.{1}" -f $jwtPlainText, $jwtSig
        $RequestUri = $IdentityServiceUri.TrimEnd('/') + "/connect/token"
        $Body = @{
            grant_type            = 'client_credentials'
            scope                 = $Scope
            client_assertion_type = 'urn:ietf:params:oauth:client-assertion-type:jwt-bearer'
            client_assertion      = $ClientAssertion
        }
        $Response = Invoke-WebRequest -Uri $RequestUri -Method 'POST' -Body $Body
        return (ConvertFrom-Json $Response).access_token
    }
}

function New-JwtRsaSignature {
    [CmdletBinding()]
    [OutputType([string])]
    Param(
        [System.Security.Cryptography.X509Certificates.X509Certificate2]$SigningCertificate,
        [String]$JsonWebToken
    )
    PROCESS {
        'Calling method: New-JwtRsaSignature' | Write-Debug
        $csp = New-Object System.Security.Cryptography.CspParameters
        $csp.KeyContainerName = $SigningCertificate.PrivateKey.CspKeyContainerInfo.KeyContainerName
        $csp.Flags = [System.Security.Cryptography.CspProviderFlags]::UseMachineKeyStore
        $rsa = New-Object System.Security.Cryptography.RSACryptoServiceProvider($csp)
        $rsaSigFormatter = New-Object System.Security.Cryptography.RSAPKCS1SignatureFormatter($rsa)
        $rsaSigFormatter.SetHashAlgorithm("SHA256")
        [byte[]]$message = [System.Text.Encoding]::UTF8.GetBytes($JsonWebToken)
        $SHA256 = New-Object System.Security.Cryptography.SHA256CryptoServiceProvider
        [byte[]]$messageDigest = $SHA256.ComputeHash($message)
        $SHA256.Dispose()
        $sigBytes = $rsaSigFormatter.CreateSignature($messageDigest)
        return ConvertTo-Base64UrlEncodedString -Bytes $sigBytes
    }
}


function ConvertTo-Base64UrlEncodedString {
    [CmdletBinding()]
    [OutputType([string])]
    Param (
        [Parameter(Position = 0, ParameterSetName = "String", Mandatory = $true, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true)]
        [string]$InputString,

        [Parameter(Position = 1, ParameterSetName = "Byte Array", Mandatory = $false, ValueFromPipeline = $false, ValueFromPipelineByPropertyName = $false)]
        [byte[]]$Bytes
    )
    PROCESS {
        [string]$base64UrlEncodedString = ""

        if ($PSBoundParameters.ContainsKey("Bytes")) {
            $output = [Convert]::ToBase64String($Bytes)
            $output = $output.Split('=')[0] # Remove any trailing '='s
            $output = $output.Replace('+', '-') # 62nd char of encoding
            $output = $output.Replace('/', '_') # 63rd char of encoding
            $base64UrlEncodedString = $output
            
        }
        else {
            $encoder = [System.Text.UTF8Encoding]::new()
            [byte[]]$inputBytes = $encoder.GetBytes($InputString)
            $base64String = [Convert]::ToBase64String($inputBytes)
            [string]$base64UrlEncodedString = ""
            $base64UrlEncodedString = $base64String.Split('=')[0] # Remove any trailing '='s
            $base64UrlEncodedString = $base64UrlEncodedString.Replace('+', '-'); # 62nd char of encoding
            $base64UrlEncodedString = $base64UrlEncodedString.Replace('/', '_'); # 63rd char of encoding
        }
        return $base64UrlEncodedString
    }
}

function Convert-DateTimeToEpoch {
    [CmdletBinding()]
    [OutputType([System.Int64])]
    Param(
        [Parameter(Mandatory)]
        [DateTime]$DateTime
    )
    PROCESS {
        'Calling method: Convert-DateTimeToEpoch' | Write-Debug
        $dtut = $DateTime.ToUniversalTime()
        [TimeSpan]$ts = New-TimeSpan -Start  (Get-Date "01/01/1970") -End $dtut
        [Int64]$secondsSinceEpoch = [Math]::Floor($ts.TotalSeconds)
        return $secondsSinceEpoch
    }
}

[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12
$cert = (Get-ChildItem -path 'Cert:\*304CAFB0719971D7F180DE983F649DFAC85D47D3' -Recurse)[0]
Get-IdentityServiceToken -IdentityServiceUri "https://identity-public.sharepointguild.com" -Scope fly.graph.readwrite.all -ClientId "4aeeb44e-325a-4002-a36d-2986b65cad0a" -Cert $cert > C:\Data\token.txt