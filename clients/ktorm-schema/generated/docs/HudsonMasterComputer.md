
# Table `HudsonMasterComputer`
(mapped from: HudsonMasterComputer)

## Properties
Name | Mapping | SQL Type | Default | Type | Description | Notes
---- | ------- | -------- | ------- | ---- | ----------- | -----
**propertyClass** | _class | text |  | **kotlin.String** |  |  [optional]
**displayName** | displayName | text |  | **kotlin.String** |  |  [optional]
**executors** | `One-To-Many` | `----` | `----`  | [**kotlin.Array&lt;HudsonMasterComputerexecutors&gt;**](HudsonMasterComputerexecutors.md) |  |  [optional]
**icon** | icon | text |  | **kotlin.String** |  |  [optional]
**iconClassName** | iconClassName | text |  | **kotlin.String** |  |  [optional]
**idle** | idle | boolean |  | **kotlin.Boolean** |  |  [optional]
**jnlpAgent** | jnlpAgent | boolean |  | **kotlin.Boolean** |  |  [optional]
**launchSupported** | launchSupported | boolean |  | **kotlin.Boolean** |  |  [optional]
**loadStatistics** | loadStatistics | long |  | [**Label1**](Label1.md) |  |  [optional] [foreignkey]
**manualLaunchAllowed** | manualLaunchAllowed | boolean |  | **kotlin.Boolean** |  |  [optional]
**monitorData** | monitorData | long |  | [**HudsonMasterComputermonitorData**](HudsonMasterComputermonitorData.md) |  |  [optional] [foreignkey]
**numExecutors** | numExecutors | int |  | **kotlin.Int** |  |  [optional]
**offline** | offline | boolean |  | **kotlin.Boolean** |  |  [optional]
**offlineCause** | offlineCause | text |  | **kotlin.String** |  |  [optional]
**offlineCauseReason** | offlineCauseReason | text |  | **kotlin.String** |  |  [optional]
**temporarilyOffline** | temporarilyOffline | boolean |  | **kotlin.Boolean** |  |  [optional]




# **Table `HudsonMasterComputerHudsonMasterComputerexecutors`**
(mapped from: HudsonMasterComputerHudsonMasterComputerexecutors)

## Properties
Name | Mapping | SQL Type | Default | Type | Description | Notes
---- | ------- | -------- | ------- | ---- | ----------- | -----
hudsonMasterComputer | hudsonMasterComputer | long | | kotlin.Long | Primary Key | *one*
hudsonMasterComputerexecutors | hudsonMasterComputerexecutors | long | | kotlin.Long | Foreign Key | *many*
















