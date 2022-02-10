
# Table `Queue`
(mapped from: Queue)

## Properties
Name | Mapping | SQL Type | Default | Type | Description | Notes
---- | ------- | -------- | ------- | ---- | ----------- | -----
**propertyClass** | _class | text |  | **kotlin.String** |  |  [optional]
**items** | `One-To-Many` | `----` | `----`  | [**kotlin.Array&lt;QueueBlockedItem&gt;**](QueueBlockedItem.md) |  |  [optional]



# **Table `QueueQueueBlockedItem`**
(mapped from: QueueQueueBlockedItem)

## Properties
Name | Mapping | SQL Type | Default | Type | Description | Notes
---- | ------- | -------- | ------- | ---- | ----------- | -----
queue | queue | long | | kotlin.Long | Primary Key | *one*
queueBlockedItem | queueBlockedItem | long | | kotlin.Long | Foreign Key | *many*



