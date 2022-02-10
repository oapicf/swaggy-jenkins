
# Table `GithubRepositories`
(mapped from: GithubRepositories)

## Properties
Name | Mapping | SQL Type | Default | Type | Description | Notes
---- | ------- | -------- | ------- | ---- | ----------- | -----
**propertyClass** | _class | text |  | **kotlin.String** |  |  [optional]
**links** | _links | long |  | [**GithubRepositorieslinks**](GithubRepositorieslinks.md) |  |  [optional] [foreignkey]
**items** | `One-To-Many` | `----` | `----`  | [**kotlin.Array&lt;GithubRepository&gt;**](GithubRepository.md) |  |  [optional]
**lastPage** | lastPage | int |  | **kotlin.Int** |  |  [optional]
**nextPage** | nextPage | int |  | **kotlin.Int** |  |  [optional]
**pageSize** | pageSize | int |  | **kotlin.Int** |  |  [optional]




# **Table `GithubRepositoriesGithubRepository`**
(mapped from: GithubRepositoriesGithubRepository)

## Properties
Name | Mapping | SQL Type | Default | Type | Description | Notes
---- | ------- | -------- | ------- | ---- | ----------- | -----
githubRepositories | githubRepositories | long | | kotlin.Long | Primary Key | *one*
githubRepository | githubRepository | long | | kotlin.Long | Foreign Key | *many*






