# SwaggyJenkinsClient::BranchImpl

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_class** | **String** |  | [optional] |
| **display_name** | **String** |  | [optional] |
| **estimated_duration_in_millis** | **Integer** |  | [optional] |
| **full_display_name** | **String** |  | [optional] |
| **full_name** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **organization** | **String** |  | [optional] |
| **parameters** | [**Array&lt;StringParameterDefinition&gt;**](StringParameterDefinition.md) |  | [optional] |
| **permissions** | [**BranchImplpermissions**](BranchImplpermissions.md) |  | [optional] |
| **weather_score** | **Integer** |  | [optional] |
| **pull_request** | **String** |  | [optional] |
| **_links** | [**BranchImpllinks**](BranchImpllinks.md) |  | [optional] |
| **latest_run** | [**PipelineRunImpl**](PipelineRunImpl.md) |  | [optional] |

## Example

```ruby
require 'swaggy_jenkins'

instance = SwaggyJenkinsClient::BranchImpl.new(
  _class: null,
  display_name: null,
  estimated_duration_in_millis: null,
  full_display_name: null,
  full_name: null,
  name: null,
  organization: null,
  parameters: null,
  permissions: null,
  weather_score: null,
  pull_request: null,
  _links: null,
  latest_run: null
)
```

