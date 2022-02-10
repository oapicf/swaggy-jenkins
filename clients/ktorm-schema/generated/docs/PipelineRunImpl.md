
# Table `PipelineRunImpl`
(mapped from: PipelineRunImpl)

## Properties
Name | Mapping | SQL Type | Default | Type | Description | Notes
---- | ------- | -------- | ------- | ---- | ----------- | -----
**propertyClass** | _class | text |  | **kotlin.String** |  |  [optional]
**links** | _links | long |  | [**PipelineRunImpllinks**](PipelineRunImpllinks.md) |  |  [optional] [foreignkey]
**durationInMillis** | durationInMillis | int |  | **kotlin.Int** |  |  [optional]
**enQueueTime** | enQueueTime | text |  | **kotlin.String** |  |  [optional]
**endTime** | endTime | text |  | **kotlin.String** |  |  [optional]
**estimatedDurationInMillis** | estimatedDurationInMillis | int |  | **kotlin.Int** |  |  [optional]
**id** | id | text PRIMARY KEY |  | **kotlin.String** |  |  [optional]
**organization** | organization | text |  | **kotlin.String** |  |  [optional]
**pipeline** | pipeline | text |  | **kotlin.String** |  |  [optional]
**result** | result | text |  | **kotlin.String** |  |  [optional]
**runSummary** | runSummary | text |  | **kotlin.String** |  |  [optional]
**startTime** | startTime | text |  | **kotlin.String** |  |  [optional]
**state** | state | text |  | **kotlin.String** |  |  [optional]
**type** | type | text |  | **kotlin.String** |  |  [optional]
**commitId** | commitId | text |  | **kotlin.String** |  |  [optional]

















