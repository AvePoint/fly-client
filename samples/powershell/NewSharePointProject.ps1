Try {
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12
    Import-Module ((Split-Path -Parent $MyInvocation.MyCommand.Definition) + "\Common.ps1") -Force
    Import-Module -Name "Fly.Client"
    #Get the global configuration object to set Fly_API_Endpoint and your access token, please refer to Fly user guide on how to get them
    $Configuration = Get-FlyConfiguration
    $Configuration["BaseUrl"] = "{Fly_API_Endpoint}"
    $Configuration.AccessToken = "YOUR_BEARER_TOKEN"
    #Specify the project name to create new
    $Name = 'SP01'
    #Specify the platform type of the source connection
    $SourcePlatform = [PlatformType]::SharePoint
    #Specify the name of the source connection which already exists in Fly
    $SourceConnectionName = 'Tony SP'
    #Specify the platform type of the destination connection
    $DestinationPlatform = [PlatformType]::SharePoint
    #Specify the name of the destination connection which already exists in Fly
    $DestinationConnection = 'Tony SP'
    #Specify the name of the migration policy which already exists in Fly
    $PolicyName = 'Tony SP'
    #Specify the tag names for this project which already exists in Fly, use @() if there is no tags
    $TagNames = @('Tony')
    Resolve-FlyProjectName -ProjectName $Name
    $sourceConnection = Get-FlyConnectionByName -ConnectionName $SourceConnectionName
    $destinationConnection = Get-FlyConnectionByName -ConnectionName $DestinationConnection
    $policy = Get-FlyPolicyByName -PolicyName $PolicyName
    $tagIds = $TagNames | ForEach-Object { Get-FlyTagByName $PSItem } | Select-Object -Property Id | ForEach-Object { "$($_.Id)" }
    #Construct the project creation model
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
    #Create a new project
    $result = New-FlyProject -ProjectCreationModel $projectModel
    if ($result) {
        Write-Host 'Successfully created the project.' -ForegroundColor Green
    }
}
Catch {
    Write-Host 'Failed to create the project.' -ForegroundColor Red
    ErrorDetail $_
}
