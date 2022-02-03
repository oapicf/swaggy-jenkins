# SwaggyJenkinsClient::FreeStyleProject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_class** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **url** | **String** |  | [optional] |
| **color** | **String** |  | [optional] |
| **actions** | [**Array&lt;FreeStyleProjectactions&gt;**](FreeStyleProjectactions.md) |  | [optional] |
| **description** | **String** |  | [optional] |
| **display_name** | **String** |  | [optional] |
| **display_name_or_null** | **String** |  | [optional] |
| **full_display_name** | **String** |  | [optional] |
| **full_name** | **String** |  | [optional] |
| **buildable** | **Boolean** |  | [optional] |
| **builds** | [**Array&lt;FreeStyleBuild&gt;**](FreeStyleBuild.md) |  | [optional] |
| **first_build** | [**FreeStyleBuild**](FreeStyleBuild.md) |  | [optional] |
| **health_report** | [**Array&lt;FreeStyleProjecthealthReport&gt;**](FreeStyleProjecthealthReport.md) |  | [optional] |
| **in_queue** | **Boolean** |  | [optional] |
| **keep_dependencies** | **Boolean** |  | [optional] |
| **last_build** | [**FreeStyleBuild**](FreeStyleBuild.md) |  | [optional] |
| **last_completed_build** | [**FreeStyleBuild**](FreeStyleBuild.md) |  | [optional] |
| **last_failed_build** | **String** |  | [optional] |
| **last_stable_build** | [**FreeStyleBuild**](FreeStyleBuild.md) |  | [optional] |
| **last_successful_build** | [**FreeStyleBuild**](FreeStyleBuild.md) |  | [optional] |
| **last_unstable_build** | **String** |  | [optional] |
| **last_unsuccessful_build** | **String** |  | [optional] |
| **next_build_number** | **Integer** |  | [optional] |
| **queue_item** | **String** |  | [optional] |
| **concurrent_build** | **Boolean** |  | [optional] |
| **scm** | [**NullSCM**](NullSCM.md) |  | [optional] |

## Example

```ruby
require 'swaggy_jenkins'

instance = SwaggyJenkinsClient::FreeStyleProject.new(
  _class: null,
  name: null,
  url: null,
  color: null,
  actions: null,
  description: null,
  display_name: null,
  display_name_or_null: null,
  full_display_name: null,
  full_name: null,
  buildable: null,
  builds: null,
  first_build: null,
  health_report: null,
  in_queue: null,
  keep_dependencies: null,
  last_build: null,
  last_completed_build: null,
  last_failed_build: null,
  last_stable_build: null,
  last_successful_build: null,
  last_unstable_build: null,
  last_unsuccessful_build: null,
  next_build_number: null,
  queue_item: null,
  concurrent_build: null,
  scm: null
)
```

