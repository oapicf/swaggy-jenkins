# SwaggyJenkinsClient::QueueLeftItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_class** | **String** |  | [optional] |
| **actions** | [**Array&lt;CauseAction&gt;**](CauseAction.md) |  | [optional] |
| **blocked** | **Boolean** |  | [optional] |
| **buildable** | **Boolean** |  | [optional] |
| **id** | **Integer** |  | [optional] |
| **in_queue_since** | **Integer** |  | [optional] |
| **params** | **String** |  | [optional] |
| **stuck** | **Boolean** |  | [optional] |
| **task** | [**FreeStyleProject**](FreeStyleProject.md) |  | [optional] |
| **url** | **String** |  | [optional] |
| **why** | **String** |  | [optional] |
| **cancelled** | **Boolean** |  | [optional] |
| **executable** | [**FreeStyleBuild**](FreeStyleBuild.md) |  | [optional] |

## Example

```ruby
require 'swaggy_jenkins'

instance = SwaggyJenkinsClient::QueueLeftItem.new(
  _class: null,
  actions: null,
  blocked: null,
  buildable: null,
  id: null,
  in_queue_since: null,
  params: null,
  stuck: null,
  task: null,
  url: null,
  why: null,
  cancelled: null,
  executable: null
)
```

