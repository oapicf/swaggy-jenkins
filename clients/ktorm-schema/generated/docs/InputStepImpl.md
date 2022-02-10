
# Table `InputStepImpl`
(mapped from: InputStepImpl)

## Properties
Name | Mapping | SQL Type | Default | Type | Description | Notes
---- | ------- | -------- | ------- | ---- | ----------- | -----
**propertyClass** | _class | text |  | **kotlin.String** |  |  [optional]
**links** | _links | long |  | [**InputStepImpllinks**](InputStepImpllinks.md) |  |  [optional] [foreignkey]
**id** | id | text PRIMARY KEY |  | **kotlin.String** |  |  [optional]
**message** | message | text |  | **kotlin.String** |  |  [optional]
**ok** | ok | text |  | **kotlin.String** |  |  [optional]
**parameters** | `One-To-Many` | `----` | `----`  | [**kotlin.Array&lt;StringParameterDefinition&gt;**](StringParameterDefinition.md) |  |  [optional]
**submitter** | submitter | text |  | **kotlin.String** |  |  [optional]







# **Table `InputStepImplStringParameterDefinition`**
(mapped from: InputStepImplStringParameterDefinition)

## Properties
Name | Mapping | SQL Type | Default | Type | Description | Notes
---- | ------- | -------- | ------- | ---- | ----------- | -----
inputStepImpl | inputStepImpl | long | | kotlin.Long | Primary Key | *one*
stringParameterDefinition | stringParameterDefinition | long | | kotlin.Long | Foreign Key | *many*




