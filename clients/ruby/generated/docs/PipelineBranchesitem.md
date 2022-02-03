# SwaggyJenkinsClient::PipelineBranchesitem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **display_name** | **String** |  | [optional] |
| **estimated_duration_in_millis** | **Integer** |  | [optional] |
| **name** | **String** |  | [optional] |
| **weather_score** | **Integer** |  | [optional] |
| **latest_run** | [**PipelineBranchesitemlatestRun**](PipelineBranchesitemlatestRun.md) |  | [optional] |
| **organization** | **String** |  | [optional] |
| **pull_request** | [**PipelineBranchesitempullRequest**](PipelineBranchesitempullRequest.md) |  | [optional] |
| **total_number_of_pull_requests** | **Integer** |  | [optional] |
| **_class** | **String** |  | [optional] |

## Example

```ruby
require 'swaggy_jenkins'

instance = SwaggyJenkinsClient::PipelineBranchesitem.new(
  display_name: null,
  estimated_duration_in_millis: null,
  name: null,
  weather_score: null,
  latest_run: null,
  organization: null,
  pull_request: null,
  total_number_of_pull_requests: null,
  _class: null
)
```

