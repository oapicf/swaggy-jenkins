
# Table `ListView`
(mapped from: ListView)

## Properties
Name | Mapping | SQL Type | Default | Type | Description | Notes
---- | ------- | -------- | ------- | ---- | ----------- | -----
**propertyClass** | _class | text |  | **kotlin.String** |  |  [optional]
**description** | description | text |  | **kotlin.String** |  |  [optional]
**jobs** | `One-To-Many` | `----` | `----`  | [**kotlin.Array&lt;FreeStyleProject&gt;**](FreeStyleProject.md) |  |  [optional]
**name** | name | text |  | **kotlin.String** |  |  [optional]
**url** | url | text |  | **kotlin.String** |  |  [optional]




# **Table `ListViewFreeStyleProject`**
(mapped from: ListViewFreeStyleProject)

## Properties
Name | Mapping | SQL Type | Default | Type | Description | Notes
---- | ------- | -------- | ------- | ---- | ----------- | -----
listView | listView | long | | kotlin.Long | Primary Key | *one*
freeStyleProject | freeStyleProject | long | | kotlin.Long | Foreign Key | *many*





