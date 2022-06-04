# SwaggyJenkinsClient::GithubRepository

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_class** | **String** |  | [optional] |
| **_links** | [**GithubRepositorylinks**](GithubRepositorylinks.md) |  | [optional] |
| **default_branch** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **permissions** | [**GithubRepositorypermissions**](GithubRepositorypermissions.md) |  | [optional] |
| **private** | **Boolean** |  | [optional] |
| **full_name** | **String** |  | [optional] |

## Example

```ruby
require 'swaggy_jenkins'

instance = SwaggyJenkinsClient::GithubRepository.new(
  _class: null,
  _links: null,
  default_branch: null,
  description: null,
  name: null,
  permissions: null,
  private: null,
  full_name: null
)
```

