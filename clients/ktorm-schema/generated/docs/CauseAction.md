
# Table `CauseAction`
(mapped from: CauseAction)

## Properties
Name | Mapping | SQL Type | Default | Type | Description | Notes
---- | ------- | -------- | ------- | ---- | ----------- | -----
**propertyClass** | _class | text |  | **kotlin.String** |  |  [optional]
**causes** | `One-To-Many` | `----` | `----`  | [**kotlin.Array&lt;CauseUserIdCause&gt;**](CauseUserIdCause.md) |  |  [optional]



# **Table `CauseActionCauseUserIdCause`**
(mapped from: CauseActionCauseUserIdCause)

## Properties
Name | Mapping | SQL Type | Default | Type | Description | Notes
---- | ------- | -------- | ------- | ---- | ----------- | -----
causeAction | causeAction | long | | kotlin.Long | Primary Key | *one*
causeUserIdCause | causeUserIdCause | long | | kotlin.Long | Foreign Key | *many*



