Try {
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    Import-Module ((Split-Path -Parent $MyInvocation.MyCommand.Definition) + "\Common.ps1") -Force
    Import-Module -Name "Fly.Client"
    $Configuration = Get-Configuration
    $Configuration["BaseUrl"] = "{Fly_API_Endpoint}"
    $Configuration.AccessToken = "YOUR_BEARER_TOKEN"
    $Name = 'SP01'
    $SourcePlatform = [PlatformType]::SharePoint
    $SourceConnectionName = 'Tony SP'
    $DestinationPlatform = [PlatformType]::SharePoint
    $DestinationConnection = 'Tony SP'
    $PolicyName = 'Tony SP'
    $TagNames = @('Tony')
    Resolve-ProjectName -ProjectName $Name
    $sourceConnection = Get-ConnectionByName -ConnectionName $SourceConnectionName
    $destinationConnection = Get-ConnectionByName -ConnectionName $DestinationConnection
    $policy = Get-PolicyByName -PolicyName $PolicyName
    $tagIds = $TagNames | ForEach-Object { Get-TagByName $PSItem } | Select-Object -Property Id | ForEach-Object { "$($_.Id)" }
    $projectModel = [PSCustomObject]@{
        "name"                    = $Name
        "sourcePlatform"          = $SourcePlatform
        "sourceConnectionId"      = $sourceConnection.Id
        "destinationPlatform"     = $DestinationPlatform
        "destinationConnectionId" = $destinationConnection.id
        "policyId"                = $policy.Id
        "tagIds"                  = @()
    }
    if ($TagNames.Count -gt 0) {
        $projectModel.tagIds = @($tagIds)
    }
    $result = New-Project -ProjectCreationModel $projectModel
    if ($result) {
        Write-Host 'Successfully created the project.' -ForegroundColor Green
    }
}
Catch {
    Write-Host 'Failed to create the project.' -ForegroundColor Red
    ErrorDetail $_
}
