
# Table `GithubRepository`
(mapped from: GithubRepository)

## Properties
Name | Mapping | SQL Type | Default | Type | Description | Notes
---- | ------- | -------- | ------- | ---- | ----------- | -----
**propertyClass** | _class | text |  | **kotlin.String** |  |  [optional]
**links** | _links | long |  | [**GithubRepositorylinks**](GithubRepositorylinks.md) |  |  [optional] [foreignkey]
**defaultBranch** | defaultBranch | text |  | **kotlin.String** |  |  [optional]
**description** | description | text |  | **kotlin.String** |  |  [optional]
**name** | name | text |  | **kotlin.String** |  |  [optional]
**permissions** | permissions | long |  | [**GithubRepositorypermissions**](GithubRepositorypermissions.md) |  |  [optional] [foreignkey]
**private** | private | boolean |  | **kotlin.Boolean** |  |  [optional]
**fullName** | fullName | text |  | **kotlin.String** |  |  [optional]










