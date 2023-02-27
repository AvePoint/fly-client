Try {
    [System.Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    Import-Module ((Split-Path -Parent $MyInvocation.MyCommand.Definition) + "\Common.ps1") -Force
    Import-Module -Name "Fly.Client"
    $Configuration = Get-Configuration
    $Configuration["BaseUrl"] = "{Fly_API_Endpoint}"
    $Configuration.AccessToken = "YOUR_BEARER_TOKEN"
    $ProjectNames = @('Tony SP', 'zz_test_SP')
    $ReportFolderPath = 'C:\Data'
    $projects = $ProjectNames | ForEach-Object { Get-ProjectByName $PSItem }
    $projectIds = $projects | Select-Object -Property Id | ForEach-Object { "$($_.Id)" }
    $reportSetting = [PSCustomObject]@{
        "reportFileType" = 0
        "projectIds"     = @($projectIds)
    }
    $jobId = Start-ErrorReportJob -GenerateProjectErrorReportSettingsModel $reportSetting
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
    Write-Host 'Failed to generate the error report.' -ForegroundColor Red
    ErrorDetail $_
}