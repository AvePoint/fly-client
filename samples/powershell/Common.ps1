#Common functions and types used by sample scripts

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

<#
.SYNOPSIS

Check if the project name available

.DESCRIPTION

Check if the project name available

.PARAMETER ProjectName
The name of the project which you want to check

.OUTPUTS

Boolean, True if the project name is available
#>
function Resolve-ProjectName {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${ProjectName}
    )

    Process {
        'Calling method: Resolve-ProjectName' | Write-Debug
        $notExist = Invoke-CheckProjectExist -Name $ProjectName
        if (!$notExist) {
            throw ('The project "{0}" already exists. Configure a unique name for the project.' -f $ProjectName)
        }
    }
}

<#
.SYNOPSIS

Get the connection by name

.DESCRIPTION

Get the connection by name

.PARAMETER ConnectionName
The name of the connection

.OUTPUTS

ConnectionSummaryModel, the object model of the connection
#>
function Get-ConnectionByName {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${ConnectionName}
    )

    Process {
        'Calling method: Get-ConnectionByName' | Write-Debug
        $top = 200;
        $skip = 0;
        while ($true) {
            $connections = Get-Connections -Search $ConnectionName -Top $top -Skip $skip
            $result = $connections.data | Where-Object { $_.Name -eq $ConnectionName } | Select-Object -First 1
            if ($null -ne $result) {
                return $result
            }
            if (!$connections.nextLink) {
                throw ('Failed to retrieve the connection: {0}. Log in to Fly to confirm the connection name.' -f $ConnectionName)
            }
            $skip = $skip + $top
        }
    }
}

<#
.SYNOPSIS

Get the policy by name

.DESCRIPTION

Get the policy by name

.PARAMETER PolicyName
The name of the policy

.OUTPUTS

PolicySummaryModel, the object model of the policy
#>
function Get-PolicyByName {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${PolicyName}
    )

    Process {
        'Calling method: Get-PolicyByName' | Write-Debug
        $top = 200;
        $skip = 0;
        while ($true) {
            $policies = Get-Policies -PlatformType ([PlatformType]::SharePoint).Value__ -Search $PolicyName
            $result = $policies.data | Where-Object { $_.Name -eq $PolicyName } | Select-Object -First 1
            if ($null -ne $result) {
                return $result
            }
            if (!$policies.nextLink) {
                throw ('Failed to retrieve the migration policy: {0}. Log in to Fly to confirm the policy name.' -f $PolicyName)
            }
            $skip = $skip + $top
        }
    }
}

<#
.SYNOPSIS

Get the tag by name

.DESCRIPTION

Get the tag by name

.PARAMETER TagName
The name of the tag

.OUTPUTS

TagSummaryModel, the object model of the tag
#>
function Get-TagByName {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${TagName}
    )

    Process {
        'Calling method: Get-TagByName' | Write-Debug
        $top = 200;
        $skip = 0;
        while ($true) {
            $tags = Get-Tags -Search $TagName
            $result = $tags.data | Where-Object { $_.Name -eq $TagName } | Select-Object -First 1
            if ($null -ne $result) {
                return $result
            }
            if (!$tags.nextLink) {
                throw ('Failed to retrieve the tag: {0}. Log in to Fly to confirm the tag name.' -f $TagName)
            }
            $skip = $skip + $top
        }
    }
}

<#
.SYNOPSIS

Get the project by name

.DESCRIPTION

Get the project by name

.PARAMETER ProjectName
The name of the project

.OUTPUTS

ProjectSummaryModel, the object model of the project
#>
function Get-ProjectByName {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [String]
        ${ProjectName}
    )

    Process {
        'Calling method: Get-ProjectByName' | Write-Debug
        $top = 200;
        $skip = 0;
        while ($true) {
            $projects = Get-Projects -Search $ProjectName
            $result = $projects.data | Where-Object { $_.Name -eq $ProjectName } | Select-Object -First 1
            if ($null -ne $result) {
                return $result
            }
            if (!$projects.nextLink) {
                throw ('Failed to retrieve the project: {0}. Log in to Fly to confirm the project name.' -f $ProjectName)
            }
            $skip = $skip + $top
        }
    }
}

<#
.SYNOPSIS

Convert the string value of object level to integer, only support SharePoint object for now

.DESCRIPTION

Convert the string value of object level to integer, only support SharePoint object for now

.PARAMETER Level
The string value of object level

.OUTPUTS

The integer value of object level
#>
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

<#
.SYNOPSIS

Output the error details of ErrorRecord

.DESCRIPTION

Output the error details of ErrorRecord

.PARAMETER Level
The information of ErrorRecord

.OUTPUTS

#>
function ErrorDetail {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [System.Management.Automation.ErrorRecord]
        ${Error}
    )

    Process {
        'Calling method: ErrorDetail' | Write-Debug
        if ($Error.ErrorDetails.Message) {
            Write-Host $Error.ErrorDetails.Message -ForegroundColor Red
        }
        Write-Error $Error.Exception
    }
}
