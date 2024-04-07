# Fly.Client\Api.FlyOneDriveApi

Method | Description
------------- | -------------
[**Import-FlyOneDriveMappings**](FlyOneDriveApi.md#import-flyonedrivemappings) | Add migration mappings into the specified OneDrive project.
[**Export-FlyOneDriveMappingStatus**](FlyOneDriveApi.md#export-flyonedrivemappingstatus) | Export the OneDrive migration mapping status to a csv file.
[**Export-FlyOneDriveMigrationReport**](FlyOneDriveApi.md#export-flyonedrivemigrationreport) | Generate migration report for the specified project mappings.
[**Start-FlyOneDriveVerification**](FlyOneDriveApi.md#start-flyonedriveverification) | Start a verification operation against the selected project mappings.
[**Start-FlyOneDrivePreScan**](FlyOneDriveApi.md#start-flyonedriveprescan) | Start a pre-scan job against the selected project mappings.
[**Start-FlyOneDriveMigration**](FlyOneDriveApi.md#start-flyonedrivemigration) | Start a migration job against the selected project mappings.


<a name="import-flyonedrivemappings"></a>
# **Import-FlyOneDriveMappings**
> Import-FlyOneDriveMappings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Project] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Path] <String><br>

Add migration mappings into the specified OneDrive project.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Project** | **String**| Specify the name of the project to import mappings. | 
 **Path** | **String**| Specify the csv file path of the project mappings to import. You can check the csv template of the mappings file from [**here**](../templates/Fly_OneDrive_for_Business_Import_Mapping_Template.csv).| 

### Example
```powershell
$Project = "ProjectName" 
$Path = "Import_Mapping_File" 

Import-FlyOneDriveMappings -Project $Project -Path $Path
```

[[Back to top]](#) [[Back to API list]](FlyApi.md#documentation-for-cmdlets) [[Back to README]](../README.md)

<a name="export-flyonedrivemappingstatus"></a>
# **Export-FlyOneDriveMappingStatus**
> Export-FlyOneDriveMappingStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Project] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OutFile] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Mappings] <String><br>

Export the OneDrive migration mapping status to a csv file.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Project** | **String**| Specify the name of the project to export mappings. | 
 **OutFile** | **String**| Specify the csv file path of the project mappings to export. | 
 **Mappings** | **String**| Specify the csv file to specific project mappings to export, optional if you want to export the whole project mappings. You can check the csv template of the mappings file from [**here**](../templates/Fly_OneDrive_for_Business_Import_Mapping_Template.csv). | [optional]

### Example
```powershell
$Project = "ProjectName" 
$OutFile = "Export_Mapping_File" 
$Mappings = "Mappings_File" 

Export-FlyOneDriveMappingStatus -Project $Project -OutFile $OutFile -Mappings $Mappings
```

[[Back to top]](#) [[Back to API list]](FlyApi.md#documentation-for-cmdlets) [[Back to README]](../README.md)

<a name="export-flyonedrivemigrationreport"></a>
# **Export-FlyOneDriveMigrationReport**
> Export-FlyOneDriveMigrationReport<br>
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
 **Mappings** | **String**| Specify the csv file to specific project mappings to export, optional if you want to export the whole project mappings. You can check the csv template of the mappings file from [**here**](../templates/Fly_OneDrive_for_Business_Import_Mapping_Template.csv). | [optional]
 **FileType** | **String**| Specify the format of the generated report file, support 'CSV' and 'Excel', optional if use CSV type. | [optional]
 **TimeZoneOffset** | **Int32**| Specify the UTC time offset of current browser. This value will be used to adjust time values when generating the report file, optional for UTC timezone. | [optional]
 **Include** | **String**| Specify a list of objects to be included in the migration report, support 'FailedObjects','WarningObjects','SuccessfulObjects','SkippedObjects','FilterOutObjects','NotFoundObjects','ErrorIgnoredObjects', optional if you do not export object details. | [optional]

### Example
```powershell
$Project = "ProjectName" 
$OutFolder = "Migration_Report_Folder_Path" 
$Mappings = "Mappings_File" 
$FileType = "Excel" 
$TimeZoneOffset = -300 
$Include = @('FailedObjects','WarningObjects','SuccessfulObjects','SkippedObjects','FilterOutObjects','NotFoundObjects','ErrorIgnoredObjects') 

Export-FlyOneDriveMigrationReport -Project $Project -OutFolder $OutFolder -Mappings $Mappings -FileType $FileType -TimeZoneOffset $TimeZoneOffset -Include $Include
```

[[Back to top]](#) [[Back to API list]](FlyApi.md#documentation-for-cmdlets) [[Back to README]](../README.md)

<a name="start-flyonedriveprescan"></a>
# **Start-FlyOneDrivePreScan**
> Start-FlyOneDrivePreScan<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Project] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Mappings] <String><br>

Start a pre-scan job against the selected project mappings.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Project** | **String**| Specify the name of the project to run job. | 
 **Mappings** | **String**| Specify the csv file to specific project mappings to run job, optional if you want to specify all of the mappings of the project. You can check the csv template of the mappings file from [**here**](../templates/Fly_OneDrive_for_Business_Import_Mapping_Template.csv). | [optional]

### Example
```powershell
$Project = "ProjectName" 
$Mappings = "Mappings_File" 

Start-FlyOneDrivePreScanJob -Project $Project -Mappings $Mappings
```

[[Back to top]](#) [[Back to API list]](FlyApi.md#documentation-for-cmdlets) [[Back to README]](../README.md)

<a name="start-flyonedriveverification"></a>
# **Start-FlyOneDriveVerification**
> Start-FlyOneDriveVerification<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Project] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Mappings] <String><br>

Start a verification operation against the selected project mappings.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Project** | **String**| Specify the name of the project to run job. | 
 **Mappings** | **String**| Specify the csv file to specific project mappings to run job, optional if you want to specify all of the mappings of the project. You can check the csv template of the mappings file from [**here**](../templates/Fly_OneDrive_for_Business_Import_Mapping_Template.csv). | [optional]

### Example
```powershell
$Project = "ProjectName" 
$Mappings = "Mappings_File" 

Start-FlyOneDriveVerification -Project $Project -Mappings $Mappings
```

[[Back to top]](#) [[Back to API list]](FlyApi.md#documentation-for-cmdlets) [[Back to README]](../README.md)

<a name="start-flyonedrivemigration"></a>
# **Start-FlyOneDriveMigration**
> Start-FlyOneDriveMigration<br>
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
 **Mappings** | **String**| Specify the csv file to specific project mappings to run job, optional if you want to specify all of the mappings of the project. You can check the csv template of the mappings file from [**here**](../templates/Fly_OneDrive_for_Business_Import_Mapping_Template.csv). | [optional]
 **ScheduleTime** | **DateTime**| Specify the UTC time when you want the job to be scheduled. By default the job will be executed as soon as possible, optional for no schedule. | [optional]

### Example
```powershell
$Project = "ProjectName" 
$Mode = 'FullMigration' 
$Mappings = "Mappings_File" 
$ScheduleTime = (Get-Date -Year 2023 -Month 10 -Day 10).ToUniversalTime() 

Start-FlyOneDriveMigration -Project $Project -Mode $Mode -Mappings $Mappings -ScheduleTime $ScheduleTime
```

[[Back to top]](#) [[Back to API list]](FlyApi.md#documentation-for-cmdlets) [[Back to README]](../README.md)
