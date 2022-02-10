
# Table `QueueLeftItem`
(mapped from: QueueLeftItem)

## Properties
Name | Mapping | SQL Type | Default | Type | Description | Notes
---- | ------- | -------- | ------- | ---- | ----------- | -----
**propertyClass** | _class | text |  | **kotlin.String** |  |  [optional]
**actions** | `One-To-Many` | `----` | `----`  | [**kotlin.Array&lt;CauseAction&gt;**](CauseAction.md) |  |  [optional]
**blocked** | blocked | boolean |  | **kotlin.Boolean** |  |  [optional]
**buildable** | buildable | boolean |  | **kotlin.Boolean** |  |  [optional]
**id** | id | int PRIMARY KEY AUTOINCREMENT |  | **kotlin.Int** |  |  [optional]
**inQueueSince** | inQueueSince | int |  | **kotlin.Int** |  |  [optional]
**params** | params | text |  | **kotlin.String** |  |  [optional]
**stuck** | stuck | boolean |  | **kotlin.Boolean** |  |  [optional]
**task** | task | long |  | [**FreeStyleProject**](FreeStyleProject.md) |  |  [optional] [foreignkey]
**url** | url | text |  | **kotlin.String** |  |  [optional]
**why** | why | text |  | **kotlin.String** |  |  [optional]
**cancelled** | cancelled | boolean |  | **kotlin.Boolean** |  |  [optional]
**executable** | executable | long |  | [**FreeStyleBuild**](FreeStyleBuild.md) |  |  [optional] [foreignkey]



# **Table `QueueLeftItemCauseAction`**
(mapped from: QueueLeftItemCauseAction)

## Properties
Name | Mapping | SQL Type | Default | Type | Description | Notes
---- | ------- | -------- | ------- | ---- | ----------- | -----
queueLeftItem | queueLeftItem | long | | kotlin.Long | Primary Key | *one*
causeAction | causeAction | long | | kotlin.Long | Foreign Key | *many*














