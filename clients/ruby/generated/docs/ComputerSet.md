# SwaggyJenkinsClient::ComputerSet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_class** | **String** |  | [optional] |
| **busy_executors** | **Integer** |  | [optional] |
| **computer** | [**Array&lt;HudsonMasterComputer&gt;**](HudsonMasterComputer.md) |  | [optional] |
| **display_name** | **String** |  | [optional] |
| **total_executors** | **Integer** |  | [optional] |

## Example

```ruby
require 'swaggy_jenkins'

instance = SwaggyJenkinsClient::ComputerSet.new(
  _class: null,
  busy_executors: null,
  computer: null,
  display_name: null,
  total_executors: null
)
```

