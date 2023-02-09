Add-Type -TypeDefinition @" 
    public enum PlatformType {
        SharePoint = 2
    }
"@

Add-Type -TypeDefinition @"
    public enum MappingJobType {
        Validation = 0,
        FullMigration = 2,
        IncrementalMigration = 3,
        ErrorOnly = 4,
        PermissionOnly = 5,
        Assessment = 7,
    }
"@

Add-Type -TypeDefinition @"
    public enum MappingJobStatus {
        Unknown,
        Running,
        Finished,
        FinishedWithException,
        Failed,
        Stopped
    }
"@

Add-Type -TypeDefinition @"
    public enum ProjectMappingItemStage {
        NewMapping = 0,
        RunVerification = 1,
        RunAssessment = 2,
        RunDataMigration = 3,
        StopMigration = 5
    }
"@

Add-Type -TypeDefinition @"
    public enum ProjectMappingItemStageStatus {
        NotStart = 0,
        Waiting = 1,
        Queued = 2,
        InProgress = 3,
        Successful = 4,
        Exceptioned = 5,
        Failed = 6,
        Stopped = 7
    }
"@

function Resolve-ProjectName {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${Name}
    )

    Process {
        'Calling method: Resolve-ProjectName' | Write-Debug
        $notExist = Invoke-CheckProjectExist -Name $Name
        if (!$notExist) {
            throw ('The project "{0}" already exists. Configure a unique name for the project.' -f $Name)
        }
    }
}

function Get-ConnectionByName {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${Name}
    )

    Process {
        'Calling method: Get-ConnectionByName' | Write-Debug
        $connections = Get-Connections -Search $Name
        $result = $connections.data | Where-Object { $_.Name -eq $Name } | Select-Object -First 1
        if ($null -eq $result) {
            throw ('Failed to retrieve the connection: {0}. Log in to Fly to confirm the connection name.' -f $Name)
        }
        return $result
    }
}

function Get-PolicyByName {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${Name}
    )

    Process {
        'Calling method: Get-PolicyByName' | Write-Debug
        $policies = Get-Policies -PlatformType ([PlatformType]::SharePoint).Value__ -Search $Name
        $result = $policies.data | Where-Object { $_.Name -eq $Name } | Select-Object -First 1
        if ($null -eq $result) {
            throw ('Failed to retrieve the migration policy: {0}. Log in to Fly to confirm the policy name.' -f $Name)
        }
        return $result
    }
}

function Get-TagByName {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${Name}
    )

    Process {
        'Calling method: Get-TagByName' | Write-Debug
        $tags = Get-Tags -Search $Name
        $result = $tags.data | Where-Object { $_.Name -eq $Name } | Select-Object -First 1
        if ($null -eq $result) {
            throw ('Failed to retrieve the tag: {0}. Log in to Fly to confirm the tag name.' -f $Name)
        }
        return $result
    }
}

function Get-ProjectByName {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${Name}
    )

    Process {
        'Calling method: Get-ProjectByName' | Write-Debug
        $projects = Get-Projects -Search $Name
        $result = $projects.data | Where-Object { $_.Name -eq $Name } | Select-Object -First 1
        if ($null -eq $result) {
            throw ('Failed to retrieve the project: {0}. Log in to Fly to confirm the project name.' -f $Name)
        }
        return $result
    }
}

function Get-DataType {
    param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${Level}
    )
    Process {
        'Calling method: Get-DataType' | Write-Debug
        switch ($Level) {
            'Site collection' { 600 }
            'Site' { 400 }
            'List' { 200 }
            'Folder' { 100 }
            Default { 600 }
        }
    }
}

function ErrorDetail {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [System.Management.Automation.ErrorRecord]
        ${Error}
    )

    Process {
        'Calling method: Read-ErrorMessage' | Write-Debug
        Try {
            $stream = $Error.Exception.Response.GetResponseStream()
            $stream.Position = 0;
            $sr = New-Object System.IO.StreamReader($stream)
            $err = $sr.ReadToEnd()
            $sr.Close()
            $stream.Close()
            Write-Host $err -ForegroundColor Red
        }
        Catch {
            #ignore
        }
        Write-Error $Error
    }
}
