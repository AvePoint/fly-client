# MappingJobType
```powershell
<#
.SYNOPSIS

Enum MappingJobType.

.DESCRIPTION

Supported job types when you start a job for a list of specified projects or mappings.
#>

enum MappingJobType {
    # enum value: "0"
    Validation
    # enum value: "1"
    EmailForwarding
    # enum value: "2"
    FullMigration
    # enum value: "3"
    IncrementalMigration
    # enum value: "4"
    ErrorOnly
    # enum value: "5"
    PermissionOnly
    # enum value: "6"
    MembershipOnly
    # enum value: "7"
    Assessment
    # enum value: "8"
    GenerateReport
    # enum value: "9"
    GenerateErrorReport
    # enum value: "10"
    KeepX500EmailAddress
}
```


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
