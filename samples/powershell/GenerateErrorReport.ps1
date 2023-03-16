Try {
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12
    Import-Module ((Split-Path -Parent $MyInvocation.MyCommand.Definition) + "\Common.ps1") -Force
    Import-Module -Name "Fly.Client"
    #Get the global configuration object to set Fly_API_Endpoint and your access token, please refer to Fly user guide on how to get them
    $Configuration = Get-FlyConfiguration
    $Configuration["BaseUrl"] = "{Fly_API_Endpoint}"
    $Configuration.AccessToken = "YOUR_BEARER_TOKEN"
    #Specify the names of the project to generate error report
    $ProjectNames = @('Tony SP', 'zz_test_SP')
    #Specify the folder path of error report file to download
    $ReportFolderPath = '{The absolute path to the folder}'
    $projects = $ProjectNames | ForEach-Object { Get-FlyProjectByName $PSItem }
    $projectIds = $projects | Select-Object -Property Id | ForEach-Object { "$($_.Id)" }
    #Construct the settings of the error report
    $reportSetting = [PSCustomObject]@{
        "reportFileType" = 0
        "projectIds"     = @($projectIds)
    }
    #Trigger the error report job and get the job id
    $jobId = Start-FlyErrorReportJob -GenerateProjectErrorReportSettingsModel $reportSetting
    #Monitor the job status and download the report file when job is finished
    while ($true) {
        Write-Host 'The report generation job is running.' -ForegroundColor Green
        Start-Sleep -Seconds 60
        $job = Get-FlyReportJobs -RequestBody @($jobId)
        $jobStatus = $job.data[0].Status
        if ($jobStatus -eq [MappingJobStatus]::Finished -or $jobStatus -eq [MappingJobStatus]::FinishWithException) {
            Write-Host 'The report generation job is finished.' -ForegroundColor Green
            $result = Get-FlyReportUrl -JobId $jobId
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
    Write-Host 'Failed to generate the error report.' -ForegroundColor Red
    ErrorDetail $_
}