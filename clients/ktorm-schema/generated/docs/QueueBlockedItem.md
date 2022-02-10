
# Table `QueueBlockedItem`
(mapped from: QueueBlockedItem)

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
**buildableStartMilliseconds** | buildableStartMilliseconds | int |  | **kotlin.Int** |  |  [optional]



# **Table `QueueBlockedItemCauseAction`**
(mapped from: QueueBlockedItemCauseAction)

## Properties
Name | Mapping | SQL Type | Default | Type | Description | Notes
---- | ------- | -------- | ------- | ---- | ----------- | -----
queueBlockedItem | queueBlockedItem | long | | kotlin.Long | Primary Key | *one*
causeAction | causeAction | long | | kotlin.Long | Foreign Key | *many*













