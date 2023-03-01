Try {
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12
    Import-Module ((Split-Path -Parent $MyInvocation.MyCommand.Definition) + "\Common.ps1") -Force
    Import-Module -Name "Fly.Client"
    #Get the global configuration object to set Fly_API_Endpoint and your access token, please refer to Fly user guide on how to get them
    $Configuration = Get-Configuration
    $Configuration["BaseUrl"] = "{Fly_API_Endpoint}"
    $Configuration.AccessToken = "YOUR_BEARER_TOKEN"
    #Specify the file path of the project mappings to generate report, please refer to the csv format of importing project mapping in Fly UI,
    #optional if $IsSelectAllMappings is true
    $FilePath = '{The absolute path to the file}'
    #Specify the name of the project to generate report
    $ProjectName = 'sp01'
    #Specify if all project mappings of this project are selected to generate report
    $IsSelectAllMappings = $true;
    #Specify the folder path of the report file to download
    $ReportFolderPath = '{The absolute path to the folder}'
    $project = Get-ProjectByName -ProjectName $ProjectName
    $mappings = New-Object System.Collections.ArrayList;
    if ($null -ne $FilePath -and !$IsSelectAllMappings) {
        $targetMappings = Import-Csv -Path $FilePath
        $allMappings = Get-ProjectMappings -ProjectId $project.Id -Top ([Int32]::MaxValue)
        #Match the project mappings between csv file and specified project
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
    #Construct the settings of report job
    $reportSetting = [PSCustomObject]@{
        "includeMappingSummary" = $true
        "includeDetails"        = $true
        "reportItemStatus"      = 0..6
        "reportFileType"        = 0
        "isSelectAll"           = $IsSelectAllMappings
        "mappingIds"            = @()
    }
    if (!$IsSelectAllMappings) {
        $mappingIds = $mappings | Select-Object -Property Id | ForEach-Object { "$($_.Id)" }
        $reportSetting.mappingIds = @($mappingIds)
    }
    #Trigger the migration report job and get the job id
    $jobId = Start-SharePointReportJob -ProjectId $project.Id -GenerateReportSettingsModel $reportSetting
    #Monitor the job status and download the report file when job is finished
    while ($true) {
        Write-Host 'The report generation job is running.' -ForegroundColor Green
        Start-Sleep -Seconds 60
        $job = Get-ReportJobs -RequestBody @($jobId)
        $jobStatus = $job.data[0].Status
        if ($jobStatus -eq [MappingJobStatus]::Finished -or $jobStatus -eq [MappingJobStatus]::FinishWithException) {
            Write-Host 'The report generation job is finished.' -ForegroundColor Green
            $result = Get-ReportUrl -JobId $jobId
            if ($null -ne $result.ReportUrl) {
                $fileName = Split-Path $([uri]$result.ReportUrl).AbsolutePath -Leaf
                $filePath = Join-Path -Path $ReportFolderPath -ChildPath $fileName
                Invoke-WebRequest -URI $result.ReportUrl -OutFile $filePath
                Write-Host 'Successfully downloaded the job report. Report path:' $filePath -ForegroundColor Green
            }
            break;
        }
        elseif ($jobStatus -eq [MappingJobStatus]::Failed -or $jobStatus -eq [MappingJobStatus]::Stopped) {
            throw ('The report generation job is {0} with id {1}' -f [MappingJobStatus].GetEnumName($jobStatus), $job.data[0].JobName)
        }
    }
}
Catch {
    Write-Host 'Failed to generate the migration report.' -ForegroundColor Red
    ErrorDetail $_
}