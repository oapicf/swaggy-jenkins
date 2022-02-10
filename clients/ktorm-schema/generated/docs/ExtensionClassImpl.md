
# Table `ExtensionClassImpl`
(mapped from: ExtensionClassImpl)

## Properties
Name | Mapping | SQL Type | Default | Type | Description | Notes
---- | ------- | -------- | ------- | ---- | ----------- | -----
**propertyClass** | _class | text |  | **kotlin.String** |  |  [optional]
**links** | _links | long |  | [**ExtensionClassImpllinks**](ExtensionClassImpllinks.md) |  |  [optional] [foreignkey]
**classes** | `One-To-Many` | `----` | `----`  | **kotlin.Array&lt;kotlin.String&gt;** |  |  [optional]




# **Table `ExtensionClassImplClasses`**
(mapped from: ExtensionClassImplClasses)

## Properties
Name | Mapping | SQL Type | Default | Type | Description | Notes
---- | ------- | -------- | ------- | ---- | ----------- | -----
extensionClassImpl | extensionClassImpl | long | | kotlin.Long | Primary Key | *one*
classes | classes | text | | kotlin.String | Foreign Key | *many*



