# Fly.Client\Api.FlyProjectApi

Method | Description
------------- | -------------
[**New-FlyMigrationProject**](FlyProjectApi.md#new-flymigrationproject) | Create a new migration project.
[**Get-FlyMigrationProject**](FlyProjectApi.md#get-flymigrationproject) | Get a migration project by name or platform.
[**Import-FlyMigrationProjects**](FlyProjectApi.md#import-flymigrationprojects) | Import migration projects from csv file.
[**Export-FlyErrorReport**](FlyProjectApi.md#export-flyerrorreport) | Generate error report for the specified.projects.

<a name="New-FlyMigrationProject"></a>
# **New-FlyMigrationProject**
> ProjectModel New-FlyMigrationProject<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceConnection] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DestinationConnection] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Policy] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Tags] <String[]><br>

Create a new migration project.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**| Specify the name of project. 
 **SourceConnection** | **String**| Specify the name of source connection. 
 **DestinationConnection** | **String**| Specify the name of destination connection. 
 **Policy** | **String**| Specify the name of policy which applied to the project. 
 **Tags** | **String[]**| Specify a list of tags to the project, optional if no tags for the project. | [optional]

### Return type

[**ProjectModel**](ProjectModel.md) (PSCustomObject)

### Example
```powershell
$Name = "ProjectName" 
$SourceConnection = "SourceConnectionName" 
$DestinationConnection = "DestinationConnectionName" 
$Policy = "PolicyName" 
$Tags = @('TagName1','TagName2') 

New-FlyMigrationProject -Name $Name -SourceConnection $SourceConnection -DestinationConnection $DestinationConnection -Policy $Policy -Tags $Tags
```
[[Back to top]](#) [[Back to API list]](FlyApi.md#documentation-for-cmdlets) [[Back to README]](../README.md)

<a name="Get-FlyMigrationProject"></a>
# **Get-FlyMigrationProject**
> ProjectModel Get-FlyMigrationProject<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>

Get a migration project by name and platform.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**| Specify the name of the project. 

### Return type

[**ProjectSummaryModel**](ProjectSummaryModel.md) (PSCustomObject)

### Example
```powershell
$Name = "ProjectName" 

Get-FlyMigrationProject -Name $Name
```
[[Back to top]](#) [[Back to API list]](FlyApi.md#documentation-for-cmdlets) [[Back to README]](../README.md)

<a name="Import-FlyMigrationProjects"></a>

# **Import-FlyMigrationProjects**
> Import-FlyMigrationProjects<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Path] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OutFile] <String><br>
Import migration projects from csv file.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Path** | **String**| Specify the csv file path of the projects to import. You can check the csv template of the projects file from [**here**](../templates/Fly_Import_Projects_Template.csv).
 **OutFile** | **String**| Specify the csv file path of the import report.  If you do not specify the report path，the report file will be generated in the same directory as the import file. | [optional]

### Example
```powershell
$Path = "Import_Projects_File"
$OutFilePath = "Export_Report_File" 

Import-FlyMigrationProjects -Path $Path -OutFile $OutFilePath
```
[[Back to top]](#) [[Back to API list]](FlyApi.md#documentation-for-cmdlets) [[Back to README]](../README.md)

<a name="Export-FlyErrorReport"></a>
# **Export-FlyErrorReport**
> Export-FlyErrorReport<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Projects] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OutFolder] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FileType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeZoneOffset] <Int32><br>

Generate error report for the specified projects.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Projects** | **String[]**| Specify a list of project names to generate their error report. 
 **OutFolder** | **String**| Specify the folder path of error report file to download. 
 **FileType** | **String**| Specify the format of the generated report file, support 'CSV' and 'Excel', optional if use CSV type. | [optional]
 **TimeZoneOffset** | **Int32**| Specify the UTC timezone offset of current browser. This value will be used to adjust time values when generating the report file, optional for UTC timezone. | [optional]

### Example
```powershell
$Projects = @("ProjectName1","ProjectName2") 
$OutFolder = "Report_Folder_Path" 
$FileType = "Excel" 
$TimeZoneOffset = -300 

Export-FlyErrorReport -Projects $Projects -OutFolder $OutFolder -FileType $FileType -TimeZoneOffset $TimeZoneOffset
```

[[Back to top]](#) [[Back to API list]](FlyApi.md#documentation-for-cmdlets) [[Back to README]](../README.md)
