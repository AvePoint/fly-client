Try {
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12
    Import-Module ((Split-Path -Parent $MyInvocation.MyCommand.Definition) + "\Common.ps1") -Force
    Import-Module -Name "Fly.Client"
    #Get the global configuration object to set Fly_API_Endpoint and your access token, please refer to Fly user guide on how to get them
    $Configuration = Get-FlyConfiguration
    $Configuration["BaseUrl"] = "{Fly_API_Endpoint}"
    $Configuration.AccessToken = "YOUR_BEARER_TOKEN"
    #Specify the name of the project to run migration job
    $ProjectName = 'SP01'
    #Specify if all project mappings of this project are selected to run migration job
    $IsSelectAllMappings = $true;
    #Specify the file path of the project mappings to run migration job, please refer to the csv format of importing project mapping in Fly UI
    #optional if $IsSelectAllMappings is true
    $FilePath = '{The absolute path to the file}'
    #Specify the type of the migration job, support Validation, Assessment, FullMigration, IncrementalMigration, ErrorOnly, PermissionOnly
    $JobType = [MappingJobType]::Validation
    $project = Get-FlyProjectByName -ProjectName $ProjectName
    $mappings = New-Object System.Collections.ArrayList;
    if ($null -ne $FilePath -and !$IsSelectAllMappings) {
        $targetMappings = Import-Csv -Path $FilePath
        $allMappings = Get-FlyProjectMappings -ProjectId $project.Id -Top ([Int32]::MaxValue)
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
        if ($mappings.Count -eq 0) {
            throw 'No mapping in the CSV file matches the existing migration mappings in this project.'
        }
    }
    #Construct the settings of the migration job
    $jobSetting = [PSCustomObject]@{
        "type"        = $JobType
        "isSelectAll" = $IsSelectAllMappings
        "mappingIds"  = @()
    }
    if (!$IsSelectAllMappings) {
        $mappingIds = $mappings | Select-Object -Property Id | ForEach-Object { "$($_.Id)" }
        $jobSetting.mappingIds = @($mappingIds)
    }
    $result = $true
    #Run migration job
    if ([MappingJobType]::Validation -eq $JobType) {
        $result = Start-FlySharepointVerificationJob -ProjectId $project.Id -ProjectMappingOperationModel $jobSetting
    }
    elseif ([MappingJobType]::Assessment -eq $JobType) {
        $result = Start-FlySharepointPreScanJob -ProjectId $project.Id -ProjectMappingOperationModel $jobSetting
    }
    else {
        $result = Start-FlySharePointMigrationJob -ProjectId $project.Id -MigrationJobSettingsModel $jobSetting
    }
    if ($result) {
        Write-Host 'The job has started.' -ForegroundColor Green
    }
}
Catch {
    Write-Host 'Failed to start the job.' -ForegroundColor Red
    ErrorDetail $_
}