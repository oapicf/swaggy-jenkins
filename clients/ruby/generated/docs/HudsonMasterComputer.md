# SwaggyJenkinsClient::HudsonMasterComputer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_class** | **String** |  | [optional] |
| **display_name** | **String** |  | [optional] |
| **executors** | [**Array&lt;HudsonMasterComputerexecutors&gt;**](HudsonMasterComputerexecutors.md) |  | [optional] |
| **icon** | **String** |  | [optional] |
| **icon_class_name** | **String** |  | [optional] |
| **idle** | **Boolean** |  | [optional] |
| **jnlp_agent** | **Boolean** |  | [optional] |
| **launch_supported** | **Boolean** |  | [optional] |
| **load_statistics** | [**Label1**](Label1.md) |  | [optional] |
| **manual_launch_allowed** | **Boolean** |  | [optional] |
| **monitor_data** | [**HudsonMasterComputermonitorData**](HudsonMasterComputermonitorData.md) |  | [optional] |
| **num_executors** | **Integer** |  | [optional] |
| **offline** | **Boolean** |  | [optional] |
| **offline_cause** | **String** |  | [optional] |
| **offline_cause_reason** | **String** |  | [optional] |
| **temporarily_offline** | **Boolean** |  | [optional] |

## Example

```ruby
require 'swaggy_jenkins'

instance = SwaggyJenkinsClient::HudsonMasterComputer.new(
  _class: null,
  display_name: null,
  executors: null,
  icon: null,
  icon_class_name: null,
  idle: null,
  jnlp_agent: null,
  launch_supported: null,
  load_statistics: null,
  manual_launch_allowed: null,
  monitor_data: null,
  num_executors: null,
  offline: null,
  offline_cause: null,
  offline_cause_reason: null,
  temporarily_offline: null
)
```

