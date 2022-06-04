# SwaggyJenkinsClient::HudsonMasterComputerexecutors

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **current_executable** | [**FreeStyleBuild**](FreeStyleBuild.md) |  | [optional] |
| **idle** | **Boolean** |  | [optional] |
| **likely_stuck** | **Boolean** |  | [optional] |
| **number** | **Integer** |  | [optional] |
| **progress** | **Integer** |  | [optional] |
| **_class** | **String** |  | [optional] |

## Example

```ruby
require 'swaggy_jenkins'

instance = SwaggyJenkinsClient::HudsonMasterComputerexecutors.new(
  current_executable: null,
  idle: null,
  likely_stuck: null,
  number: null,
  progress: null,
  _class: null
)
```

