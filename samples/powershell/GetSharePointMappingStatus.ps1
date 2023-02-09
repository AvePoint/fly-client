Try {
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    Import-Module ((Split-Path -Parent $MyInvocation.MyCommand.Definition) + "\Common.ps1") -Force
    Import-Module -Name "Fly.Client"
    $Configuration = Get-Configuration
    $Configuration["BaseUrl"] = "{Fly_API_Endpoint}"
    $Configuration.AccessToken = "YOUR_BEARER_TOKEN"
    $FilePath = 'C:\Data\50 mapping SP.csv'
    $ProjectName = '11'
    $MappingResult = 'C:\Data\mapping result.csv'
    $project = Get-ProjectByName -Name $ProjectName
    $mappings = New-Object System.Collections.ArrayList;
    $targetMappings = Import-Csv -Path $FilePath
    $allMappings = Get-ProjectMappings -ProjectId $project.Id -Top ([Int32]::MaxValue)
    foreach ($target in $targetMappings) {
        foreach ($mapping in $allMappings.data) {
            $sourceIdentity = [System.Web.HttpUtility]::UrlDecode($target.'Source URL')
            $destinationIdentity = [System.Web.HttpUtility]::UrlDecode($target.'Destination URL')
            if ($mapping.SourceIdentity -eq $sourceIdentity -and $mapping.DestinationIdentity -eq $destinationIdentity) {
                [void]$mappings.Add($mapping);
                break;
            }
        }
    }
    if ($mappings.Count -gt 0) {
        $mappings | ForEach-Object { [PSCustomObject]@{
                SourceIdentity      = $_.SourceIdentity
                DestinationIdentity = $_.DestinationIdentity
                Stage               = [ProjectMappingItemStage]$_.Stage
                StageStatus         = [ProjectMappingItemStageStatus]$_.StageStatus
                JobProcess          = $_.JobProgress
            }
        } | Export-Csv -Path $MappingResult -NoTypeInformation
        Write-Host 'Successfully retrieved the migration mappings. File path:' $MappingResult -ForegroundColor Green
    }
    else {
        throw 'No mapping in the CSV file matches the existing migration mappings in this project.'
    }
}
Catch {
    Write-Host 'Failed to retrieve the migration mappings.' -ForegroundColor Red
    ErrorDetail $_
}