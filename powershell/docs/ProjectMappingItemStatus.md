# ProjectMappingItemStatus
```powershell
<#
.SYNOPSIS

Enum ProjectMappingItemStatus.

.DESCRIPTION

A list of values indicating different status of a project mapping.
#>

enum ProjectMappingItemStatus {
    # enum value: "0"
    NotMigrated
    # enum value: "1"
    WaitingForCredential
    # enum value: "2"
    MigrationInProgress
    # enum value: "3"
    Stopped
    # enum value: "4"
    Completed
    # enum value: "5"
    CompletedWithException
    # enum value: "6"
    Failed
}
```


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
