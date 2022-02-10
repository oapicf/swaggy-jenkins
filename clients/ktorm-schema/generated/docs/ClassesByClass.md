
# Table `ClassesByClass`
(mapped from: ClassesByClass)

## Properties
Name | Mapping | SQL Type | Default | Type | Description | Notes
---- | ------- | -------- | ------- | ---- | ----------- | -----
**classes** | `One-To-Many` | `----` | `----`  | **kotlin.Array&lt;kotlin.String&gt;** |  |  [optional]
**propertyClass** | _class | text |  | **kotlin.String** |  |  [optional]


# **Table `ClassesByClassClasses`**
(mapped from: ClassesByClassClasses)

## Properties
Name | Mapping | SQL Type | Default | Type | Description | Notes
---- | ------- | -------- | ------- | ---- | ----------- | -----
classesByClass | classesByClass | long | | kotlin.Long | Primary Key | *one*
classes | classes | text | | kotlin.String | Foreign Key | *many*




