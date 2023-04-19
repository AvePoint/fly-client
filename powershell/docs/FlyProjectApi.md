# Fly.Client\Api.FlyProjectApi

Method | Description
------------- | -------------
[**New-FlyMigrationProject**](FlyProjectApi.md#new-flymigrationproject) | Create a new migration project.
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
 **FileType** | **String**| Specify the format of the generated report file, use Tab for available values, optional if use CSV type. | [optional]
 **TimeZoneOffset** | **Int32**| Specify the UTC timezone offset of current browser. This value will be used to adjust time values when generating the report file, optional for UTC timezone. | [optional]

### Example
```powershell
# Connect to Fly Public API first.
Connect-Fly

$Projects = @("ProjectName1","ProjectName2") 
$OutFolder = "Report_Folder_Path" 
$FileType = "Excel" 
$TimeZoneOffset = -300 

Export-FlyErrorReport -Projects $Projects -OutFolder $OutFolder -FileType $FileType -TimeZoneOffset $TimeZoneOffset
```

[[Back to top]](#) [[Back to API list]](FlyApi.md#documentation-for-cmdlets) [[Back to README]](../README.md)