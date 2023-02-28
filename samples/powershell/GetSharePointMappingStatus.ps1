Try {
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12
    Import-Module ((Split-Path -Parent $MyInvocation.MyCommand.Definition) + "\Common.ps1") -Force
    Import-Module -Name "Fly.Client"
    #Get the global configuration object to set Fly_API_Endpoint and your access token
    $Configuration = Get-Configuration
    $Configuration["BaseUrl"] = "{Fly_API_Endpoint}"
    $Configuration.AccessToken = "YOUR_BEARER_TOKEN"
    #Specify the file path of the project mappings to retrieve status, only support csv format
    $FilePath = 'C:\Data\50 mapping SP.csv'
    #Specify the name of the project to retrieve mappings
    $ProjectName = '11'
    #Specify the file path of the retrieved project mappings result, only support csv format
    $MappingResult = 'C:\Data\mapping result.csv'
    $project = Get-ProjectByName -ProjectName $ProjectName
    $mappings = New-Object System.Collections.ArrayList;
    $targetMappings = Import-Csv -Path $FilePath
    #Retrieve the project mappings from the specified project
    $allMappings = Get-ProjectMappings -ProjectId $project.Id -Top ([Int32]::MaxValue)
    #Match the project mapping list between csv file and specified project
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
        #Output the matched project mappings to specified file path in csv format
        $mappings | ForEach-Object {
            $status = ''
            if ($_.StageStatus -eq [ProjectMappingItemStageStatus]::Waiting -and $_.ScheduleTime -gt 0) {
                $status = 'Scheduled'
            } 
            else {
                $status = [ProjectMappingItemStageStatus].GetEnumName($_.StageStatus)
            }
            return [PSCustomObject]@{
                SourceIdentity      = $_.SourceIdentity
                DestinationIdentity = $_.DestinationIdentity
                Stage               = [ProjectMappingItemStage]$_.Stage
                StageStatus         = $status
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