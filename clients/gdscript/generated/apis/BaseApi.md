<a name="__pageTop"></a>
# BaseApi   { #BaseApi }


All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_crumb**](#get_crumb) | **GET** `/crumbIssuer/api/json` | 

# **get_crumb**   { #get_crumb }
<a name="get_crumb"></a>

> `get_crumb( on_success: Callable, on_failure: Callable)`



Retrieve CSRF protection token

### Example

* Basic Authentication (`jenkins_auth`)

```gdscript

# Customize configuration
var config := ApiConfig.new()
config.host = "localhost"
config.port = 8080
#config.tls_enabled = true
#config.trusted_chain = preload("res://my_cert_chain.crt")

# Instantiate the api
var api = BaseApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = BaseApi.new(config, client)


# Invoke an endpoint
api.get_crumb(
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_crumb", response)
		assert(response.data is DefaultCrumbIssuer)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```


### Authorization

[jenkins_auth](../README.md#jenkins_auth), 
[jwt_auth](../README.md#jwt_auth)

[[Back to top]](#__pageTop) \
[[Back to API list]](../README.md#documentation-for-api-endpoints) \
[[Back to Model list]](../README.md#documentation-for-models) \
[[Back to README]](../README.md) \

