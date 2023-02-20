Try {
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    Import-Module ((Split-Path -Parent $MyInvocation.MyCommand.Definition) + "\Common.ps1") -Force
    Import-Module -Name "Fly.Client"
    $Configuration = Get-Configuration
    $Configuration["BaseUrl"] = "{Fly_API_Endpoint}"
    $Configuration.AccessToken = "YOUR_BEARER_TOKEN"
    $FilePath = 'C:\Data\50 mapping SP.csv'
    $ProjectName = '11'
    $project = Get-ProjectByName -ProjectName $ProjectName
    $mappings = New-Object System.Collections.ArrayList;
    $importedMappings = Import-Csv -Path $FilePath
    foreach ($mapping in $importedMappings) {
        $item = [PSCustomObject]@{
            "sourceIdentity"      = $mapping.'Source URL'
            "sourceType"          = Get-DataType $mapping.'Source object level'
            "destinationIdentity" = $mapping.'Destination URL'
            "destinationType"     = Get-DataType $mapping.'Destination object level'
            "method"              = If ($mapping.Method -eq 'Merge') { 1 } Else { 0 }
        }
        [void]$mappings.Add($item);
    }
    $result = Add-SharePointMappings -ProjectId $project.Id -SharePointMappingCreationModel $mappings.ToArray()
    if ($result) {
        Write-Host 'Successfully added the mappings to the project.' -ForegroundColor Green
    }
}
Catch {
    Write-Host 'Failed to add the mappings to the project.' -ForegroundColor Red
    Try {
        $stream = $_.Exception.Response.GetResponseStream()
        $stream.Position = 0;
        $sr = New-Object System.IO.StreamReader($stream)
        $err = $sr.ReadToEnd()
        $sr.Close()
        $stream.Close()
        $errorModel = ConvertFrom-Json $err
        if ($errorModel.ErrorCode -eq 'ProjectMappingDuplicated') {
            Write-Host 'ErrorDetail : ProjectMappingDuplicated' -ForegroundColor Red
            $errorDetails = ConvertFrom-Json $errorModel.ErrorMessage
            $errorDetails | Select SourceIdentity, DestinationIdentity, ProjectName | Format-Table
        }
        else {
            Write-Host $err -ForegroundColor Red
        }
    }
    Catch {
        #ignore
    }
    Write-Error $_.Exception
}