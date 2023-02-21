# ReportItemStatus
```powershell
<#
.SYNOPSIS

Enum ReportItemStatus.

.DESCRIPTION

The item status values that may appear in the generated migration report.
#>

enum ReportItemStatus {
    # enum value: "0"
    FailedObjects
    # enum value: "1"
    WarningObjects
    # enum value: "2"
    SuccessfulObjects
    # enum value: "3"
    SkippedObjects
    # enum value: "4"
    FilterOutObjects
    # enum value: "5"
    NotFoundObjects
    # enum value: "6"
    ErrorIgnoredObjects
}
```


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
