Try {
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12
    Import-Module ((Split-Path -Parent $MyInvocation.MyCommand.Definition) + "\Common.ps1") -Force
    Import-Module -Name "Fly.Client"
    #Get the global configuration object to set Fly_API_Endpoint and your access token, please refer to Fly user guide on how to get them
    $Configuration = Get-Configuration
    $Configuration["BaseUrl"] = "{Fly_API_Endpoint}"
    $Configuration.AccessToken = "YOUR_BEARER_TOKEN"
    #Specify the file path of the project mappings to run migration job, please refer to the csv format of importing project mapping in Fly UI
    $FilePath = '{The absolute path to the file}'
    #Specify the name of the project to run migration job
    $ProjectName = 'sp01'
    #Specify the type of the migration job, support Validation, Assessment, FullMigration, IncrementalMigration, ErrorOnly, PermissionOnly
    $JobType = [MappingJobType]::Validation
    $project = Get-ProjectByName -ProjectName $ProjectName
    $mappings = New-Object System.Collections.ArrayList;
    $targetMappings = Import-Csv -Path $FilePath
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
        #Construct the settings of the migration job
        $mappingIds = $mappings | Select-Object -Property Id | ForEach-Object { "$($_.Id)" }
        $jobSetting = [PSCustomObject]@{
            "type"       = $JobType
            "mappingIds" = @($mappingIds)
        }
        $result = $true
        #Run migration job
        if ([MappingJobType]::Validation -eq $JobType) {
            $result = Start-SharepointVerificationJob -ProjectId $project.Id -ProjectMappingOperationModel $jobSetting
        }
        elseif ([MappingJobType]::Assessment -eq $JobType) {
            $result = Start-SharepointPreScanJob -ProjectId $project.Id -ProjectMappingOperationModel $jobSetting
        }
        else {
            $result = Start-SharePointMigrationJob -ProjectId $project.Id -MigrationJobSettingsModel $jobSetting
        }
        if ($result) {
            Write-Host 'The job has started.' -ForegroundColor Green
        }
    }
    else {
        throw 'No mapping in the CSV file matches the existing migration mappings in this project.'
    }
}
Catch {
    Write-Host 'Failed to start the job.' -ForegroundColor Red
    ErrorDetail $_
}