
# Table `PipelineStepImpl`
(mapped from: PipelineStepImpl)

## Properties
Name | Mapping | SQL Type | Default | Type | Description | Notes
---- | ------- | -------- | ------- | ---- | ----------- | -----
**propertyClass** | _class | text |  | **kotlin.String** |  |  [optional]
**links** | _links | long |  | [**PipelineStepImpllinks**](PipelineStepImpllinks.md) |  |  [optional] [foreignkey]
**displayName** | displayName | text |  | **kotlin.String** |  |  [optional]
**durationInMillis** | durationInMillis | int |  | **kotlin.Int** |  |  [optional]
**id** | id | text PRIMARY KEY |  | **kotlin.String** |  |  [optional]
**input** | input | long |  | [**InputStepImpl**](InputStepImpl.md) |  |  [optional] [foreignkey]
**result** | result | text |  | **kotlin.String** |  |  [optional]
**startTime** | startTime | text |  | **kotlin.String** |  |  [optional]
**state** | state | text |  | **kotlin.String** |  |  [optional]











