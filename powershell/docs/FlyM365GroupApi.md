# Fly.Client\Api.FlyM365GroupApi

Method | Description
------------- | -------------
[**Import-FlyM365GroupMappings**](FlyM365GroupApi.md#import-flym365groupmappings) | Add migration mappings into the specified M365Group project.
[**Export-FlyM365GroupMappingStatus**](FlyM365GroupApi.md#export-flym365groupmappingstatus) | Export the M365Group migration mapping status to a csv file.
[**Export-FlyM365GroupMigrationReport**](FlyM365GroupApi.md#export-flym365groupmigrationreport) | Generate migration report for the specified project mappings.
[**Start-FlyM365GroupVerification**](FlyM365GroupApi.md#start-flym365groupverification) | Start a verification operation against the selected project mappings.
[**Start-FlyM365GroupPreScan**](FlyM365GroupApi.md#start-flym365groupprescan) | Start a pre-scan job against the selected project mappings.
[**Start-FlyM365GroupMigration**](FlyM365GroupApi.md#start-flym365groupmigration) | Start a migration job against the selected project mappings.
[**Export-FlyM365GroupPolicy**](FlyM365GroupApi.md#export-flym365grouppolicy) | Export the M365 Group migration policy to a JSON file.
[**Import-FlyM365GroupPolicy**](FlyM365GroupApi.md#import-flym365grouppolicy) | Import the M365 Group migration policy from a JSON file.
[**New-FlyM365GroupPolicy**](FlyM365GroupApi.md#new-flym365grouppolicy) | Create a new M365 Group migration policy.


<a name="import-flym365groupmappings"></a>
# **Import-FlyM365GroupMappings**
> Import-FlyM365GroupMappings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Project] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Path] <String><br>

Add migration mappings into the specified M365Group project.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Project** | **String**| Specify the name of the project to import mappings. | 
 **Path** | **String**| Specify the csv file path of the project mappings to import. You can check the csv template of the mappings file from [**here**](../templates/Fly_Microsoft_365_Groups_Import_Mapping_Template.csv).| 

### Example
```powershell
$Project = "ProjectName" 
$Path = "Import_Mapping_File" 

Import-FlyM365GroupMappings -Project $Project -Path $Path
```

[[Back to top]](#) [[Back to API list]](FlyApi.md#documentation-for-cmdlets) [[Back to README]](../README.md)

<a name="export-flym365groupmappingstatus"></a>
# **Export-FlyM365GroupMappingStatus**
> Export-FlyM365GroupMappingStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Project] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OutFile] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Mappings] <String><br>

Export the M365Group migration mapping status to a csv file.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Project** | **String**| Specify the name of the project to export mappings. | 
 **OutFile** | **String**| Specify the csv file path of the project mappings to export. | 
 **Mappings** | **String**| Specify the csv file to specific project mappings to export, optional if you want to export the whole project mappings. You can check the csv template of the mappings file from [**here**](../templates/Fly_Microsoft_365_Groups_Import_Mapping_Template.csv). | [optional]

### Example
```powershell
$Project = "ProjectName" 
$OutFile = "Export_Mapping_File" 
$Mappings = "Mappings_File" 

Export-FlyM365GroupMappingStatus -Project $Project -OutFile $OutFile -Mappings $Mappings
```

[[Back to top]](#) [[Back to API list]](FlyApi.md#documentation-for-cmdlets) [[Back to README]](../README.md)

<a name="export-flym365groupmigrationreport"></a>
# **Export-FlyM365GroupMigrationReport**
> Export-FlyM365GroupMigrationReport<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Project] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OutFolder] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Mappings] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FileType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeZoneOffset] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <String[]><br>

Generate migration report for the specified project mappings.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Project** | **String**| Specify the name of the project to export mappings. | 
 **OutFolder** | **String**| Specify the folder path of the migration report files. | 
 **Mappings** | **String**| Specify the csv file to specific project mappings to export, optional if you want to export the whole project mappings. You can check the csv template of the mappings file from [**here**](../templates/Fly_Microsoft_365_Groups_Import_Mapping_Template.csv). | [optional]
 **FileType** | **String**| Specify the format of the generated report file, support 'CSV' and 'Excel', optional if use CSV type. | [optional]
 **TimeZoneOffset** | **Int32**| Specify the UTC time offset of current browser. This value will be used to adjust time values when generating the report file, optional for UTC timezone. | [optional]
 **Include** | **String**| Specify a list of objects to be included in the migration report, support 'ErrorObjects','WarningObjects','SuccessfulObjects','SkippedObjects','FilterOutObjects','NotFoundObjects','ErrorIgnoredObjects','UnsupportedObjects', optional if you do not export object details. | [optional]

### Example
```powershell
$Project = "ProjectName" 
$OutFolder = "Migration_Report_Folder_Path" 
$Mappings = "Mappings_File" 
$FileType = "Excel" 
$TimeZoneOffset = -300 
$Include = @('ErrorObjects','WarningObjects','SuccessfulObjects','SkippedObjects','FilterOutObjects','NotFoundObjects','ErrorIgnoredObjects','UnsupportedObjects') 

Export-FlyM365GroupMigrationReport -Project $Project -OutFolder $OutFolder -Mappings $Mappings -FileType $FileType -TimeZoneOffset $TimeZoneOffset -Include $Include
```

[[Back to top]](#) [[Back to API list]](FlyApi.md#documentation-for-cmdlets) [[Back to README]](../README.md)

<a name="start-flym365groupprescan"></a>
# **Start-FlyM365GroupPreScan**
> Start-FlyM365GroupPreScan<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Project] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Mappings] <String><br>

Start a pre-scan job against the selected project mappings.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Project** | **String**| Specify the name of the project to run job. | 
 **Mappings** | **String**| Specify the csv file to specific project mappings to run job, optional if you want to specify all of the mappings of the project. You can check the csv template of the mappings file from [**here**](../templates/Fly_Microsoft_365_Groups_Import_Mapping_Template.csv). | [optional]

### Example
```powershell
$Project = "ProjectName" 
$Mappings = "Mappings_File" 

Start-FlyM365GroupPreScan -Project $Project -Mappings $Mappings
```

[[Back to top]](#) [[Back to API list]](FlyApi.md#documentation-for-cmdlets) [[Back to README]](../README.md)

<a name="start-flym365groupverification"></a>
# **Start-FlyM365GroupVerification**
> Start-FlyM365GroupVerification<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Project] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Mappings] <String><br>

Start a verification operation against the selected project mappings.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Project** | **String**| Specify the name of the project to run job. | 
 **Mappings** | **String**| Specify the csv file to specific project mappings to run job, optional if you want to specify all of the mappings of the project. You can check the csv template of the mappings file from [**here**](../templates/Fly_Microsoft_365_Groups_Import_Mapping_Template.csv). | [optional]

### Example
```powershell
$Project = "ProjectName" 
$Mappings = "Mappings_File" 

Start-FlyM365GroupVerification -Project $Project -Mappings $Mappings
```

[[Back to top]](#) [[Back to API list]](FlyApi.md#documentation-for-cmdlets) [[Back to README]](../README.md)

<a name="start-flym365groupmigration"></a>
# **Start-FlyM365GroupMigration**
> Start-FlyM365GroupMigration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Project] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Mode] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Mappings] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScheduleTime] <DateTime><br>

Start a migration job against the selected project mappings.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Project** | **String**| Specify the name of the project to run job. | 
 **Mode** | **String**| Specify the mode of the migration job, support 'FullMigration', 'IncrementalMigration', 'ErrorOnly' and 'MembershipOnly'. | 
 **Mappings** | **String**| Specify the csv file to specific project mappings to run job, optional if you want to specify all of the mappings of the project. You can check the csv template of the mappings file from [**here**](../templates/Fly_Microsoft_365_Groups_Import_Mapping_Template.csv). | [optional]
 **ScheduleTime** | **DateTime**| Specify the UTC time when you want the job to be scheduled. By default the job will be executed as soon as possible, optional for no schedule. | [optional]

### Example
```powershell
$Project = "ProjectName" 
$Mode = 'FullMigration' 
$Mappings = "Mappings_File" 
$ScheduleTime = (Get-Date -Year 2023 -Month 10 -Day 10).ToUniversalTime() 

Start-FlyM365GroupMigration -Project $Project -Mode $Mode -Mappings $Mappings -ScheduleTime $ScheduleTime
```

[[Back to top]](#) [[Back to API list]](FlyApi.md#documentation-for-cmdlets) [[Back to README]](../README.md)

<a name="export-flym365grouppolicy"></a>
# **Export-FlyM365GroupPolicy**
> Export-FlyM365GroupPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OutFile] <String><br>

Export the M365 Group migration policy to a json file.

### Parameters

Name | Type | Description | Notes
------------- | ------------- | ------------- | -------------
**PolicyName** | **String** | Specify the name of the migration policy to export. |
**OutFile** | **String** | Specify the json file path of the migration policy to export. |

### Example
```powershell
$PolicyName = "M365GroupPolicyName"
$OutFile = "Export_M365GroupPolicy_JSONFile"

Export-FlyM365GroupPolicy -PolicyName $PolicyName -OutFile $OutFile
```

[[Back to top]](#) [[Back to API list]](FlyApi.md#documentation-for-cmdlets) [[Back to README]](../README.md)

<a name="import-flym365grouppolicy"></a>
# **Import-FlyM365GroupPolicy**
> Import-FlyM365GroupPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Path] <String><br>

Import the M365 Group migration policy from a json file.

### Parameters

Name | Type | Description | Notes
------------- | ------------- | ------------- | -------------
**Path** | **String** | Specify the json file path of the migration policy to import. |

### Example
```powershell
$Path = "Import_M365GroupPolicy_JSONFile"

Import-FlyM365GroupPolicy -Path $Path
```

[[Back to top]](#) [[Back to API list]](FlyApi.md#documentation-for-cmdlets) [[Back to README]](../README.md)

<a name="new-flym365grouppolicy"></a>
# **New-FlyM365GroupPolicy**
> New-FlyM365GroupPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Policy] <M365GroupPolicy><br>

Create a new M365 Group migration policy.

### Parameters

Name | Type | Description | Notes
------------- | ------------- | ------------- | -------------
**Policy** | **M365GroupPolicy** | Specify the M365GroupPolicy class to create. Configure required properties before calling. | Import policy module before new policy class.

### Example
```powershell
Import-Module "Fly.Client\4.x.xx\Resource\Policy.ps1"
# 4.x.xx is a placeholder, replace with the latest installed package version. e.g. Import-Module "Fly.Client\4.6.15\Resource\Policy.ps1"
$policy = [M365GroupPolicy]::new('M365Group Policy Name')
$policy.EnablePlanner = $false
# If notifications are not required, you can omit the Notification object and related settings
$policy.Notification = [Notification]::new()
$policy.Notification.SendProjectMigration = $true
$policy.Notification.ProjectLevelEmailRecipients = @('user01@contoso.com','user02@contoso.com')
$policy.Notification.FrequencyDays = 2
$policy.Notification.StartTime = [datetime]'12/20/2025 00:09'
$policy.Notification.ProjectLevelEmailTemplateName = 'ProjectEmailTemplateName'

New-FlyM365GroupPolicy -Policy $policy
```

[[Back to top]](#) [[Back to API list]](FlyApi.md#documentation-for-cmdlets) [[Back to README]](../README.md)