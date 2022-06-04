# SwaggyJenkinsClient::FreeStyleBuild

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_class** | **String** |  | [optional] |
| **number** | **Integer** |  | [optional] |
| **url** | **String** |  | [optional] |
| **actions** | [**Array&lt;CauseAction&gt;**](CauseAction.md) |  | [optional] |
| **building** | **Boolean** |  | [optional] |
| **description** | **String** |  | [optional] |
| **display_name** | **String** |  | [optional] |
| **duration** | **Integer** |  | [optional] |
| **estimated_duration** | **Integer** |  | [optional] |
| **executor** | **String** |  | [optional] |
| **full_display_name** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **keep_log** | **Boolean** |  | [optional] |
| **queue_id** | **Integer** |  | [optional] |
| **result** | **String** |  | [optional] |
| **timestamp** | **Integer** |  | [optional] |
| **built_on** | **String** |  | [optional] |
| **change_set** | [**EmptyChangeLogSet**](EmptyChangeLogSet.md) |  | [optional] |

## Example

```ruby
require 'swaggy_jenkins'

instance = SwaggyJenkinsClient::FreeStyleBuild.new(
  _class: null,
  number: null,
  url: null,
  actions: null,
  building: null,
  description: null,
  display_name: null,
  duration: null,
  estimated_duration: null,
  executor: null,
  full_display_name: null,
  id: null,
  keep_log: null,
  queue_id: null,
  result: null,
  timestamp: null,
  built_on: null,
  change_set: null
)
```

