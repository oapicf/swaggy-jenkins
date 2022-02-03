# SwaggyJenkinsClient::Pipeline

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_class** | **String** |  | [optional] |
| **organization** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **display_name** | **String** |  | [optional] |
| **full_name** | **String** |  | [optional] |
| **weather_score** | **Integer** |  | [optional] |
| **estimated_duration_in_millis** | **Integer** |  | [optional] |
| **latest_run** | [**PipelinelatestRun**](PipelinelatestRun.md) |  | [optional] |

## Example

```ruby
require 'swaggy_jenkins'

instance = SwaggyJenkinsClient::Pipeline.new(
  _class: null,
  organization: null,
  name: null,
  display_name: null,
  full_name: null,
  weather_score: null,
  estimated_duration_in_millis: null,
  latest_run: null
)
```

