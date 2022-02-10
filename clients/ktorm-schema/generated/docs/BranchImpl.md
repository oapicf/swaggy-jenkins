
# Table `BranchImpl`
(mapped from: BranchImpl)

## Properties
Name | Mapping | SQL Type | Default | Type | Description | Notes
---- | ------- | -------- | ------- | ---- | ----------- | -----
**propertyClass** | _class | text |  | **kotlin.String** |  |  [optional]
**displayName** | displayName | text |  | **kotlin.String** |  |  [optional]
**estimatedDurationInMillis** | estimatedDurationInMillis | int |  | **kotlin.Int** |  |  [optional]
**fullDisplayName** | fullDisplayName | text |  | **kotlin.String** |  |  [optional]
**fullName** | fullName | text |  | **kotlin.String** |  |  [optional]
**name** | name | text |  | **kotlin.String** |  |  [optional]
**organization** | organization | text |  | **kotlin.String** |  |  [optional]
**parameters** | `One-To-Many` | `----` | `----`  | [**kotlin.Array&lt;StringParameterDefinition&gt;**](StringParameterDefinition.md) |  |  [optional]
**permissions** | permissions | long |  | [**BranchImplpermissions**](BranchImplpermissions.md) |  |  [optional] [foreignkey]
**weatherScore** | weatherScore | int |  | **kotlin.Int** |  |  [optional]
**pullRequest** | pullRequest | text |  | **kotlin.String** |  |  [optional]
**links** | _links | long |  | [**BranchImpllinks**](BranchImpllinks.md) |  |  [optional] [foreignkey]
**latestRun** | latestRun | long |  | [**PipelineRunImpl**](PipelineRunImpl.md) |  |  [optional] [foreignkey]









# **Table `BranchImplStringParameterDefinition`**
(mapped from: BranchImplStringParameterDefinition)

## Properties
Name | Mapping | SQL Type | Default | Type | Description | Notes
---- | ------- | -------- | ------- | ---- | ----------- | -----
branchImpl | branchImpl | long | | kotlin.Long | Primary Key | *one*
stringParameterDefinition | stringParameterDefinition | long | | kotlin.Long | Foreign Key | *many*








