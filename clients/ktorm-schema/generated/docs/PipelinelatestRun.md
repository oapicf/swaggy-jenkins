
# Table `PipelinelatestRun`
(mapped from: PipelinelatestRun)

## Properties
Name | Mapping | SQL Type | Default | Type | Description | Notes
---- | ------- | -------- | ------- | ---- | ----------- | -----
**artifacts** | `One-To-Many` | `----` | `----`  | [**kotlin.Array&lt;PipelinelatestRunartifacts&gt;**](PipelinelatestRunartifacts.md) |  |  [optional]
**durationInMillis** | durationInMillis | int |  | **kotlin.Int** |  |  [optional]
**estimatedDurationInMillis** | estimatedDurationInMillis | int |  | **kotlin.Int** |  |  [optional]
**enQueueTime** | enQueueTime | text |  | **kotlin.String** |  |  [optional]
**endTime** | endTime | text |  | **kotlin.String** |  |  [optional]
**id** | id | text PRIMARY KEY |  | **kotlin.String** |  |  [optional]
**organization** | organization | text |  | **kotlin.String** |  |  [optional]
**pipeline** | pipeline | text |  | **kotlin.String** |  |  [optional]
**result** | result | text |  | **kotlin.String** |  |  [optional]
**runSummary** | runSummary | text |  | **kotlin.String** |  |  [optional]
**startTime** | startTime | text |  | **kotlin.String** |  |  [optional]
**state** | state | text |  | **kotlin.String** |  |  [optional]
**type** | type | text |  | **kotlin.String** |  |  [optional]
**commitId** | commitId | text |  | **kotlin.String** |  |  [optional]
**propertyClass** | _class | text |  | **kotlin.String** |  |  [optional]


# **Table `PipelinelatestRunPipelinelatestRunartifacts`**
(mapped from: PipelinelatestRunPipelinelatestRunartifacts)

## Properties
Name | Mapping | SQL Type | Default | Type | Description | Notes
---- | ------- | -------- | ------- | ---- | ----------- | -----
pipelinelatestRun | pipelinelatestRun | long | | kotlin.Long | Primary Key | *one*
pipelinelatestRunartifacts | pipelinelatestRunartifacts | long | | kotlin.Long | Foreign Key | *many*

















