
# Table `PipelineRunNode`
(mapped from: PipelineRunNode)

## Properties
Name | Mapping | SQL Type | Default | Type | Description | Notes
---- | ------- | -------- | ------- | ---- | ----------- | -----
**propertyClass** | _class | text |  | **kotlin.String** |  |  [optional]
**displayName** | displayName | text |  | **kotlin.String** |  |  [optional]
**durationInMillis** | durationInMillis | int |  | **kotlin.Int** |  |  [optional]
**edges** | `One-To-Many` | `----` | `----`  | [**kotlin.Array&lt;PipelineRunNodeedges&gt;**](PipelineRunNodeedges.md) |  |  [optional]
**id** | id | text PRIMARY KEY |  | **kotlin.String** |  |  [optional]
**result** | result | text |  | **kotlin.String** |  |  [optional]
**startTime** | startTime | text |  | **kotlin.String** |  |  [optional]
**state** | state | text |  | **kotlin.String** |  |  [optional]





# **Table `PipelineRunNodePipelineRunNodeedges`**
(mapped from: PipelineRunNodePipelineRunNodeedges)

## Properties
Name | Mapping | SQL Type | Default | Type | Description | Notes
---- | ------- | -------- | ------- | ---- | ----------- | -----
pipelineRunNode | pipelineRunNode | long | | kotlin.Long | Primary Key | *one*
pipelineRunNodeedges | pipelineRunNodeedges | long | | kotlin.Long | Foreign Key | *many*







