# MappingReportDetailModel
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | [**MappingJobStatus**](MappingJobStatus.md) |  | [optional] 
**ErrorCodes** | [**ErrorCodeSummaryModel[]**](ErrorCodeSummaryModel.md) |  | [optional] 
**HistoricalJobs** | [**MappingJobSummaryModel[]**](MappingJobSummaryModel.md) |  | [optional] 
**Analysis** | [**DataAnalysisSummaryModel**](DataAnalysisSummaryModel.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$MappingReportDetailModel = Initialize-FLY.ClientMappingReportDetailModel  -Status null `
 -ErrorCodes null `
 -HistoricalJobs null `
 -Analysis null
```

- Convert the resource to JSON
```powershell
$MappingReportDetailModel | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

