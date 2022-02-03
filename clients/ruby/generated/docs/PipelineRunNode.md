# SwaggyJenkinsClient::PipelineRunNode

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_class** | **String** |  | [optional] |
| **display_name** | **String** |  | [optional] |
| **duration_in_millis** | **Integer** |  | [optional] |
| **edges** | [**Array&lt;PipelineRunNodeedges&gt;**](PipelineRunNodeedges.md) |  | [optional] |
| **id** | **String** |  | [optional] |
| **result** | **String** |  | [optional] |
| **start_time** | **String** |  | [optional] |
| **state** | **String** |  | [optional] |

## Example

```ruby
require 'swaggy_jenkins'

instance = SwaggyJenkinsClient::PipelineRunNode.new(
  _class: null,
  display_name: null,
  duration_in_millis: null,
  edges: null,
  id: null,
  result: null,
  start_time: null,
  state: null
)
```

