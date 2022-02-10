
# Table `ComputerSet`
(mapped from: ComputerSet)

## Properties
Name | Mapping | SQL Type | Default | Type | Description | Notes
---- | ------- | -------- | ------- | ---- | ----------- | -----
**propertyClass** | _class | text |  | **kotlin.String** |  |  [optional]
**busyExecutors** | busyExecutors | int |  | **kotlin.Int** |  |  [optional]
**computer** | `One-To-Many` | `----` | `----`  | [**kotlin.Array&lt;HudsonMasterComputer&gt;**](HudsonMasterComputer.md) |  |  [optional]
**displayName** | displayName | text |  | **kotlin.String** |  |  [optional]
**totalExecutors** | totalExecutors | int |  | **kotlin.Int** |  |  [optional]




# **Table `ComputerSetHudsonMasterComputer`**
(mapped from: ComputerSetHudsonMasterComputer)

## Properties
Name | Mapping | SQL Type | Default | Type | Description | Notes
---- | ------- | -------- | ------- | ---- | ----------- | -----
computerSet | computerSet | long | | kotlin.Long | Primary Key | *one*
hudsonMasterComputer | hudsonMasterComputer | long | | kotlin.Long | Foreign Key | *many*





