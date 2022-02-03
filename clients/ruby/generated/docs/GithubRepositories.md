# SwaggyJenkinsClient::GithubRepositories

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_class** | **String** |  | [optional] |
| **_links** | [**GithubRepositorieslinks**](GithubRepositorieslinks.md) |  | [optional] |
| **items** | [**Array&lt;GithubRepository&gt;**](GithubRepository.md) |  | [optional] |
| **last_page** | **Integer** |  | [optional] |
| **next_page** | **Integer** |  | [optional] |
| **page_size** | **Integer** |  | [optional] |

## Example

```ruby
require 'swaggy_jenkins'

instance = SwaggyJenkinsClient::GithubRepositories.new(
  _class: null,
  _links: null,
  items: null,
  last_page: null,
  next_page: null,
  page_size: null
)
```

