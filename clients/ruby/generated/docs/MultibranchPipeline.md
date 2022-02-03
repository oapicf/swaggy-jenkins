# SwaggyJenkinsClient::MultibranchPipeline

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **display_name** | **String** |  | [optional] |
| **estimated_duration_in_millis** | **Integer** |  | [optional] |
| **latest_run** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **organization** | **String** |  | [optional] |
| **weather_score** | **Integer** |  | [optional] |
| **branch_names** | **Array&lt;String&gt;** |  | [optional] |
| **number_of_failing_branches** | **Integer** |  | [optional] |
| **number_of_failing_pull_requests** | **Integer** |  | [optional] |
| **number_of_successful_branches** | **Integer** |  | [optional] |
| **number_of_successful_pull_requests** | **Integer** |  | [optional] |
| **total_number_of_branches** | **Integer** |  | [optional] |
| **total_number_of_pull_requests** | **Integer** |  | [optional] |
| **_class** | **String** |  | [optional] |

## Example

```ruby
require 'swaggy_jenkins'

instance = SwaggyJenkinsClient::MultibranchPipeline.new(
  display_name: null,
  estimated_duration_in_millis: null,
  latest_run: null,
  name: null,
  organization: null,
  weather_score: null,
  branch_names: null,
  number_of_failing_branches: null,
  number_of_failing_pull_requests: null,
  number_of_successful_branches: null,
  number_of_successful_pull_requests: null,
  total_number_of_branches: null,
  total_number_of_pull_requests: null,
  _class: null
)
```

