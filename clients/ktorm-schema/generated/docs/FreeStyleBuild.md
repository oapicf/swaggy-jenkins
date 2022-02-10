
# Table `FreeStyleBuild`
(mapped from: FreeStyleBuild)

## Properties
Name | Mapping | SQL Type | Default | Type | Description | Notes
---- | ------- | -------- | ------- | ---- | ----------- | -----
**propertyClass** | _class | text |  | **kotlin.String** |  |  [optional]
**number** | number | int |  | **kotlin.Int** |  |  [optional]
**url** | url | text |  | **kotlin.String** |  |  [optional]
**actions** | `One-To-Many` | `----` | `----`  | [**kotlin.Array&lt;CauseAction&gt;**](CauseAction.md) |  |  [optional]
**building** | building | boolean |  | **kotlin.Boolean** |  |  [optional]
**description** | description | text |  | **kotlin.String** |  |  [optional]
**displayName** | displayName | text |  | **kotlin.String** |  |  [optional]
**duration** | duration | int |  | **kotlin.Int** |  |  [optional]
**estimatedDuration** | estimatedDuration | int |  | **kotlin.Int** |  |  [optional]
**executor** | executor | text |  | **kotlin.String** |  |  [optional]
**fullDisplayName** | fullDisplayName | text |  | **kotlin.String** |  |  [optional]
**id** | id | text PRIMARY KEY |  | **kotlin.String** |  |  [optional]
**keepLog** | keepLog | boolean |  | **kotlin.Boolean** |  |  [optional]
**queueId** | queueId | int |  | **kotlin.Int** |  |  [optional]
**result** | result | text |  | **kotlin.String** |  |  [optional]
**timestamp** | timestamp | int |  | **kotlin.Int** |  |  [optional]
**builtOn** | builtOn | text |  | **kotlin.String** |  |  [optional]
**changeSet** | changeSet | long |  | [**EmptyChangeLogSet**](EmptyChangeLogSet.md) |  |  [optional] [foreignkey]





# **Table `FreeStyleBuildCauseAction`**
(mapped from: FreeStyleBuildCauseAction)

## Properties
Name | Mapping | SQL Type | Default | Type | Description | Notes
---- | ------- | -------- | ------- | ---- | ----------- | -----
freeStyleBuild | freeStyleBuild | long | | kotlin.Long | Primary Key | *one*
causeAction | causeAction | long | | kotlin.Long | Foreign Key | *many*

















