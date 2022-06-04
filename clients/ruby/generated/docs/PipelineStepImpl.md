# SwaggyJenkinsClient::PipelineStepImpl

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_class** | **String** |  | [optional] |
| **_links** | [**PipelineStepImpllinks**](PipelineStepImpllinks.md) |  | [optional] |
| **display_name** | **String** |  | [optional] |
| **duration_in_millis** | **Integer** |  | [optional] |
| **id** | **String** |  | [optional] |
| **input** | [**InputStepImpl**](InputStepImpl.md) |  | [optional] |
| **result** | **String** |  | [optional] |
| **start_time** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |

## Example

```ruby
require 'swaggy_jenkins'

instance = SwaggyJenkinsClient::PipelineStepImpl.new(
  _class: null,
  _links: null,
  display_name: null,
  duration_in_millis: null,
  id: null,
  input: null,
  result: null,
  start_time: null,
  state: null
)
```

