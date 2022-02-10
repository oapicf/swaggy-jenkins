
# Table `FreeStyleProject`
(mapped from: FreeStyleProject)

## Properties
Name | Mapping | SQL Type | Default | Type | Description | Notes
---- | ------- | -------- | ------- | ---- | ----------- | -----
**propertyClass** | _class | text |  | **kotlin.String** |  |  [optional]
**name** | name | text |  | **kotlin.String** |  |  [optional]
**url** | url | text |  | **kotlin.String** |  |  [optional]
**color** | color | text |  | **kotlin.String** |  |  [optional]
**actions** | `One-To-Many` | `----` | `----`  | [**kotlin.Array&lt;FreeStyleProjectactions&gt;**](FreeStyleProjectactions.md) |  |  [optional]
**description** | description | text |  | **kotlin.String** |  |  [optional]
**displayName** | displayName | text |  | **kotlin.String** |  |  [optional]
**displayNameOrNull** | displayNameOrNull | text |  | **kotlin.String** |  |  [optional]
**fullDisplayName** | fullDisplayName | text |  | **kotlin.String** |  |  [optional]
**fullName** | fullName | text |  | **kotlin.String** |  |  [optional]
**buildable** | buildable | boolean |  | **kotlin.Boolean** |  |  [optional]
**builds** | `One-To-Many` | `----` | `----`  | [**kotlin.Array&lt;FreeStyleBuild&gt;**](FreeStyleBuild.md) |  |  [optional]
**firstBuild** | firstBuild | long |  | [**FreeStyleBuild**](FreeStyleBuild.md) |  |  [optional] [foreignkey]
**healthReport** | `One-To-Many` | `----` | `----`  | [**kotlin.Array&lt;FreeStyleProjecthealthReport&gt;**](FreeStyleProjecthealthReport.md) |  |  [optional]
**inQueue** | inQueue | boolean |  | **kotlin.Boolean** |  |  [optional]
**keepDependencies** | keepDependencies | boolean |  | **kotlin.Boolean** |  |  [optional]
**lastBuild** | lastBuild | long |  | [**FreeStyleBuild**](FreeStyleBuild.md) |  |  [optional] [foreignkey]
**lastCompletedBuild** | lastCompletedBuild | long |  | [**FreeStyleBuild**](FreeStyleBuild.md) |  |  [optional] [foreignkey]
**lastFailedBuild** | lastFailedBuild | text |  | **kotlin.String** |  |  [optional]
**lastStableBuild** | lastStableBuild | long |  | [**FreeStyleBuild**](FreeStyleBuild.md) |  |  [optional] [foreignkey]
**lastSuccessfulBuild** | lastSuccessfulBuild | long |  | [**FreeStyleBuild**](FreeStyleBuild.md) |  |  [optional] [foreignkey]
**lastUnstableBuild** | lastUnstableBuild | text |  | **kotlin.String** |  |  [optional]
**lastUnsuccessfulBuild** | lastUnsuccessfulBuild | text |  | **kotlin.String** |  |  [optional]
**nextBuildNumber** | nextBuildNumber | int |  | **kotlin.Int** |  |  [optional]
**queueItem** | queueItem | text |  | **kotlin.String** |  |  [optional]
**concurrentBuild** | concurrentBuild | boolean |  | **kotlin.Boolean** |  |  [optional]
**scm** | scm | long |  | [**NullSCM**](NullSCM.md) |  |  [optional] [foreignkey]






# **Table `FreeStyleProjectFreeStyleProjectactions`**
(mapped from: FreeStyleProjectFreeStyleProjectactions)

## Properties
Name | Mapping | SQL Type | Default | Type | Description | Notes
---- | ------- | -------- | ------- | ---- | ----------- | -----
freeStyleProject | freeStyleProject | long | | kotlin.Long | Primary Key | *one*
freeStyleProjectactions | freeStyleProjectactions | long | | kotlin.Long | Foreign Key | *many*









# **Table `FreeStyleProjectFreeStyleBuild`**
(mapped from: FreeStyleProjectFreeStyleBuild)

## Properties
Name | Mapping | SQL Type | Default | Type | Description | Notes
---- | ------- | -------- | ------- | ---- | ----------- | -----
freeStyleProject | freeStyleProject | long | | kotlin.Long | Primary Key | *one*
freeStyleBuild | freeStyleBuild | long | | kotlin.Long | Foreign Key | *many*




# **Table `FreeStyleProjectFreeStyleProjecthealthReport`**
(mapped from: FreeStyleProjectFreeStyleProjecthealthReport)

## Properties
Name | Mapping | SQL Type | Default | Type | Description | Notes
---- | ------- | -------- | ------- | ---- | ----------- | -----
freeStyleProject | freeStyleProject | long | | kotlin.Long | Primary Key | *one*
freeStyleProjecthealthReport | freeStyleProjecthealthReport | long | | kotlin.Long | Foreign Key | *many*
















