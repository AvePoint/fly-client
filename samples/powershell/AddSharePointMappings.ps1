Try {
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12
    [System.Net.HttpWebRequest]::DefaultMaximumErrorResponseLength = -1
    Import-Module ((Split-Path -Parent $MyInvocation.MyCommand.Definition) + "\Common.ps1") -Force
    Import-Module -Name "Fly.Client"
    #Get the global configuration object to set Fly_API_Endpoint and your access token
    $Configuration = Get-Configuration
    $Configuration["BaseUrl"] = "{Fly_API_Endpoint}"
    $Configuration.AccessToken = "YOUR_BEARER_TOKEN"
    #Specify the file path of the project mappings to import, only support csv format
    $FilePath = 'C:\Data\50 mapping SP.csv'
    #Specify the name of the project to import
    $ProjectName = '11'
    $project = Get-ProjectByName -ProjectName $ProjectName
    $mappings = New-Object System.Collections.ArrayList;
    $importedMappings = Import-Csv -Path $FilePath
    #Construct the project mapping list to import
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
    #Import project mapping list to the project
    $result = Add-SharePointMappings -ProjectId $project.Id -SharePointMappingCreationModel $mappings.ToArray()
    if ($result) {
        Write-Host 'Successfully added the mappings to the project.' -ForegroundColor Green
    }
}
Catch {
    Write-Host 'Failed to add the mappings to the project.' -ForegroundColor Red
    if ($_.ErrorDetails.Message) {
        $errorModel = ConvertFrom-Json $_.ErrorDetails.Message
        if ($errorModel.ErrorCode -eq 'ProjectMappingDuplicated') {
            Write-Host 'ErrorDetail : ProjectMappingDuplicated' -ForegroundColor Red
            $errorDetails = ConvertFrom-Json $errorModel.ErrorMessage
            $errorDetails | Select-Object SourceIdentity, DestinationIdentity, ProjectName | Format-Table
        }
        else {
            Write-Host $_.ErrorDetails.Message -ForegroundColor Red
        }
    }
    Write-Error $_.Exception
}