# SwaggyJenkinsClient::Hudson

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_class** | **String** |  | [optional] |
| **assigned_labels** | [**Array&lt;HudsonassignedLabels&gt;**](HudsonassignedLabels.md) |  | [optional] |
| **mode** | **String** |  | [optional] |
| **node_description** | **String** |  | [optional] |
| **node_name** | **String** |  | [optional] |
| **num_executors** | **Integer** |  | [optional] |
| **description** | **String** |  | [optional] |
| **jobs** | [**Array&lt;FreeStyleProject&gt;**](FreeStyleProject.md) |  | [optional] |
| **primary_view** | [**AllView**](AllView.md) |  | [optional] |
| **quieting_down** | **Boolean** |  | [optional] |
| **slave_agent_port** | **Integer** |  | [optional] |
| **unlabeled_load** | [**UnlabeledLoadStatistics**](UnlabeledLoadStatistics.md) |  | [optional] |
| **use_crumbs** | **Boolean** |  | [optional] |
| **use_security** | **Boolean** |  | [optional] |
| **views** | [**Array&lt;AllView&gt;**](AllView.md) |  | [optional] |

## Example

```ruby
require 'swaggy_jenkins'

instance = SwaggyJenkinsClient::Hudson.new(
  _class: null,
  assigned_labels: null,
  mode: null,
  node_description: null,
  node_name: null,
  num_executors: null,
  description: null,
  jobs: null,
  primary_view: null,
  quieting_down: null,
  slave_agent_port: null,
  unlabeled_load: null,
  use_crumbs: null,
  use_security: null,
  views: null
)
```

