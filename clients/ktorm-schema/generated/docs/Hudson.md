
# Table `Hudson`
(mapped from: Hudson)

## Properties
Name | Mapping | SQL Type | Default | Type | Description | Notes
---- | ------- | -------- | ------- | ---- | ----------- | -----
**propertyClass** | _class | text |  | **kotlin.String** |  |  [optional]
**assignedLabels** | `One-To-Many` | `----` | `----`  | [**kotlin.Array&lt;HudsonassignedLabels&gt;**](HudsonassignedLabels.md) |  |  [optional]
**mode** | mode | text |  | **kotlin.String** |  |  [optional]
**nodeDescription** | nodeDescription | text |  | **kotlin.String** |  |  [optional]
**nodeName** | nodeName | text |  | **kotlin.String** |  |  [optional]
**numExecutors** | numExecutors | int |  | **kotlin.Int** |  |  [optional]
**description** | description | text |  | **kotlin.String** |  |  [optional]
**jobs** | `One-To-Many` | `----` | `----`  | [**kotlin.Array&lt;FreeStyleProject&gt;**](FreeStyleProject.md) |  |  [optional]
**primaryView** | primaryView | long |  | [**AllView**](AllView.md) |  |  [optional] [foreignkey]
**quietingDown** | quietingDown | boolean |  | **kotlin.Boolean** |  |  [optional]
**slaveAgentPort** | slaveAgentPort | int |  | **kotlin.Int** |  |  [optional]
**unlabeledLoad** | unlabeledLoad | long |  | [**UnlabeledLoadStatistics**](UnlabeledLoadStatistics.md) |  |  [optional] [foreignkey]
**useCrumbs** | useCrumbs | boolean |  | **kotlin.Boolean** |  |  [optional]
**useSecurity** | useSecurity | boolean |  | **kotlin.Boolean** |  |  [optional]
**views** | `One-To-Many` | `----` | `----`  | [**kotlin.Array&lt;AllView&gt;**](AllView.md) |  |  [optional]



# **Table `HudsonHudsonassignedLabels`**
(mapped from: HudsonHudsonassignedLabels)

## Properties
Name | Mapping | SQL Type | Default | Type | Description | Notes
---- | ------- | -------- | ------- | ---- | ----------- | -----
hudson | hudson | long | | kotlin.Long | Primary Key | *one*
hudsonassignedLabels | hudsonassignedLabels | long | | kotlin.Long | Foreign Key | *many*








# **Table `HudsonFreeStyleProject`**
(mapped from: HudsonFreeStyleProject)

## Properties
Name | Mapping | SQL Type | Default | Type | Description | Notes
---- | ------- | -------- | ------- | ---- | ----------- | -----
hudson | hudson | long | | kotlin.Long | Primary Key | *one*
freeStyleProject | freeStyleProject | long | | kotlin.Long | Foreign Key | *many*









# **Table `HudsonAllView`**
(mapped from: HudsonAllView)

## Properties
Name | Mapping | SQL Type | Default | Type | Description | Notes
---- | ------- | -------- | ------- | ---- | ----------- | -----
hudson | hudson | long | | kotlin.Long | Primary Key | *one*
allView | allView | long | | kotlin.Long | Foreign Key | *many*



