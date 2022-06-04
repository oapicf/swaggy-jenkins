# SwaggyJenkinsClient::ListView

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_class** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **jobs** | [**Array&lt;FreeStyleProject&gt;**](FreeStyleProject.md) |  | [optional] |
| **name** | **String** |  | [optional] |
| **url** | **String** |  | [optional] |

## Example

```ruby
require 'swaggy_jenkins'

instance = SwaggyJenkinsClient::ListView.new(
  _class: null,
  description: null,
  jobs: null,
  name: null,
  url: null
)
```

