# Fly.Client\Api.FlyTeamChatApi

Method | Description
------------- | -------------
[**Import-FlyTeamChatMappings**](FlyTeamChatApi.md#import-flyteamchatmappings) | Add migration mappings into the specified TeamChat project.
[**Export-FlyTeamChatMappingStatus**](FlyTeamChatApi.md#export-flyteamchatmappingstatus) | Export the TeamChat migration mapping status to a csv file.
[**Export-FlyTeamChatMigrationReport**](FlyTeamChatApi.md#export-flyteamchatmigrationreport) | Generate migration report for the specified project mappings.
[**Start-FlyTeamChatVerification**](FlyTeamChatApi.md#start-flyteamchatverification) | Start a verification operation against the selected project mappings.
[**Start-FlyTeamChatMigration**](FlyTeamChatApi.md#start-flyteamchatmigration) | Start a migration job against the selected project mappings.
[**Export-FlyTeamChatPolicy**](FlyTeamChatApi.md#export-flyteamchatpolicy) | Export the TeamChat migration policy to a json file.
[**Import-FlyTeamChatPolicy**](FlyTeamChatApi.md#import-flyteamchatpolicy) | Import the TeamChat migration policy from a json file.
[**New-FlyTeamChatPolicy**](FlyTeamChatApi.md#new-flyteamchatpolicy) | Create a new TeamChat migration policy.


<a name="import-flyteamchatmappings"></a>
# **Import-FlyTeamChatMappings**
> Import-FlyTeamChatMappings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Project] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Path] <String><br>

Add migration mappings into the specified TeamChat project.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Project** | **String**| Specify the name of the project to import mappings. | 
 **Path** | **String**| Specify the csv file path of the project mappings to import. You can check the csv template of the mappings file from [**here**](../templates/Fly_Microsoft_Team_Chat_Import_Mapping_Template.csv).| 

### Example
```powershell
$Project = "ProjectName" 
$Path = "Import_Mapping_File" 

Import-FlyTeamChatMappings -Project $Project -Path $Path
```

[[Back to top]](#) [[Back to API list]](FlyApi.md#documentation-for-cmdlets) [[Back to README]](../README.md)

<a name="export-flyteamchatmappingstatus"></a>
# **Export-FlyTeamChatMappingStatus**
> Export-FlyTeamChatMappingStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Project] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OutFile] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Mappings] <String><br>

Export the TeamChat migration mapping status to a csv file.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Project** | **String**| Specify the name of the project to export mappings. | 
 **OutFile** | **String**| Specify the csv file path of the project mappings to export. | 
 **Mappings** | **String**| Specify the csv file to specific project mappings to export, optional if you want to export the whole project mappings. You can check the csv template of the mappings file from [**here**](../templates/Fly_Microsoft_Team_Chat_Import_Mapping_Template.csv). | [optional]

### Example
```powershell
$Project = "ProjectName" 
$OutFile = "Export_Mapping_File" 
$Mappings = "Mappings_File" 

Export-FlyTeamChatMappingStatus -Project $Project -OutFile $OutFile -Mappings $Mappings
```

[[Back to top]](#) [[Back to API list]](FlyApi.md#documentation-for-cmdlets) [[Back to README]](../README.md)

<a name="export-flyteamchatmigrationreport"></a>
# **Export-FlyTeamChatMigrationReport**
> Export-FlyTeamChatMigrationReport<br>
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
 **Mappings** | **String**| Specify the csv file to specific project mappings to export, optional if you want to export the whole project mappings. You can check the csv template of the mappings file from [**here**](../templates/Fly_Microsoft_Team_Chat_Import_Mapping_Template.csv). | [optional]
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

Export-FlyTeamChatMigrationReport -Project $Project -OutFolder $OutFolder -Mappings $Mappings -FileType $FileType -TimeZoneOffset $TimeZoneOffset -Include $Include
```

[[Back to top]](#) [[Back to API list]](FlyApi.md#documentation-for-cmdlets) [[Back to README]](../README.md)

<a name="start-flyteamchatverification"></a>
# **Start-FlyTeamChatVerification**
> Start-FlyTeamChatVerification<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Project] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Mappings] <String><br>

Start a verification operation against the selected project mappings.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Project** | **String**| Specify the name of the project to run job. | 
 **Mappings** | **String**| Specify the csv file to specific project mappings to run job, optional if you want to specify all of the mappings of the project. You can check the csv template of the mappings file from [**here**](../templates/Fly_Microsoft_Team_Chat_Import_Mapping_Template.csv). | [optional]

### Example
```powershell
$Project = "ProjectName" 
$Mappings = "Mappings_File" 

Start-FlyTeamChatVerification -Project $Project -Mappings $Mappings
```

[[Back to top]](#) [[Back to API list]](FlyApi.md#documentation-for-cmdlets) [[Back to README]](../README.md)

<a name="start-flyteamchatmigration"></a>
# **Start-FlyTeamChatMigration**
> Start-FlyTeamChatMigration<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Project] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Mode] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Mappings] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScheduleTime] <DateTime><br>

Start a migration job against the selected project mappings.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Project** | **String**| Specify the name of the project to run job. | 
 **Mode** | **String**| Specify the mode of the migration job, support 'FullMigration', 'IncrementalMigration', 'ErrorOnly' and 'PermissionOnly'. | 
 **Mappings** | **String**| Specify the csv file to specific project mappings to run job, optional if you want to specify all of the mappings of the project. You can check the csv template of the mappings file from [**here**](../templates/Fly_Microsoft_Team_Chat_Import_Mapping_Template.csv). | [optional]
 **ScheduleTime** | **DateTime**| Specify the UTC time when you want the job to be scheduled. By default the job will be executed as soon as possible, optional for no schedule. | [optional]

### Example
```powershell
$Project = "ProjectName" 
$Mode = 'FullMigration' 
$Mappings = "Mappings_File" 
$ScheduleTime = (Get-Date -Year 2023 -Month 10 -Day 10).ToUniversalTime() 

Start-FlyTeamChatMigration -Project $Project -Mode $Mode -Mappings $Mappings -ScheduleTime $ScheduleTime
```

[[Back to top]](#) [[Back to API list]](FlyApi.md#documentation-for-cmdlets) [[Back to README]](../README.md)

<a name="export-flyteamchatpolicy"></a>
# **Export-FlyTeamChatPolicy**
> Export-FlyTeamChatPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PolicyName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OutFile] <String><br>

Export the TeamChat migration policy to a json file.

### Parameters
Name | Type | Description | Notes
------------- | ------------- | ------------- | -------------
**PolicyName** | **String** | Specify the name of the TeamChat migration policy to export. |
**OutFile** | **String** | Specify the json file path of the exported policy. |

### Example
```powershell
$PolicyName = "TeamChatPolicyName"
$OutFile = "Export_TeamChatPolicy_JSONFile"

Export-FlyTeamChatPolicy -PolicyName $PolicyName -OutFile $OutFile
```

[[Back to top]](#) [[Back to API list]](FlyApi.md#documentation-for-cmdlets) [[Back to README]](../README.md)

<a name="import-flyteamchatpolicy"></a>
# **Import-FlyTeamChatPolicy**
> Import-FlyTeamChatPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Path] <String><br>

Import the TeamChat migration policy from a json file.

### Parameters
Name | Type | Description | Notes
------------- | ------------- | ------------- | -------------
**Path** | **String** | Specify the json file path containing the TeamChat migration policy. |

### Example
```powershell
$Path = "Import_TeamChatPolicy_JSONFile"

Import-FlyTeamChatPolicy -Path $Path
```

[[Back to top]](#) [[Back to API list]](FlyApi.md#documentation-for-cmdlets) [[Back to README]](../README.md)

<a name="new-flyteamchatpolicy"></a>
# **New-FlyTeamChatPolicy**
> New-FlyTeamChatPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Policy] <TeamsChatPolicy><br>

Create a new TeamChat migration policy.

### Parameters
Name | Type | Description | Notes
------------- | ------------- | ------------- | -------------
**Policy** | **TeamsChatPolicy** | Specify the TeamsChatPolicy class to create. Configure required properties before calling. | Import policy module before new policy class.

### Example
```powershell
Import-Module "Fly.Client\4.x.xx\Resource\Policy.ps1"
# 4.x.xx is a placeholder, replace with the latest installed package version. e.g. Import-Module "Fly.Client\4.6.15\Resource\Policy.ps1"
$policy = [TeamsChatPolicy]::new("TeamChat Policy Name")
$policy.RecreateChatsOnOrAfter = '12/20/2025'
$policy.EnableSyncPinUnpinStatus = $true
$policy.TimeZoneForMessages = 'UTC'
# List current system timezone
Get-TimeZone | select id
# List all available timezones, pick one and set to TimeZoneForMessages
Get-TimeZone -ListAvailable | select Id
# If notifications are not required, you can omit the Notification object and related settings
$policy.Notification = [Notification]::new()
$policy.Notification.SendProjectMigration = $true
$policy.Notification.ProjectLevelEmailRecipients = @('user01@contoso.com','user02@contoso.com')
$policy.Notification.FrequencyDays = 2
$policy.Notification.StartTime = [datetime]'12/20/2025 00:09'
$policy.Notification.ProjectLevelEmailTemplateName = 'ProjectEmailTemplateName'

New-FlyTeamChatPolicy -Policy $policy
```

[[Back to top]](#) [[Back to API list]](FlyApi.md#documentation-for-cmdlets) [[Back to README]](../README.md)
