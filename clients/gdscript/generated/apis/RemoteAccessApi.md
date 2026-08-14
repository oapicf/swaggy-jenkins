<a name="__pageTop"></a>
# RemoteAccessApi   { #RemoteAccessApi }


All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_computer**](#get_computer) | **GET** `/computer/api/json` | 
[**get_jenkins**](#get_jenkins) | **GET** `/api/json` | 
[**get_job**](#get_job) | **GET** `/job/{name}/api/json` | 
[**get_job_config**](#get_job_config) | **GET** `/job/{name}/config.xml` | 
[**get_job_last_build**](#get_job_last_build) | **GET** `/job/{name}/lastBuild/api/json` | 
[**get_job_progressive_text**](#get_job_progressive_text) | **GET** `/job/{name}/{number}/logText/progressiveText` | 
[**get_queue**](#get_queue) | **GET** `/queue/api/json` | 
[**get_queue_item**](#get_queue_item) | **GET** `/queue/item/{number}/api/json` | 
[**get_view**](#get_view) | **GET** `/view/{name}/api/json` | 
[**get_view_config**](#get_view_config) | **GET** `/view/{name}/config.xml` | 
[**head_jenkins**](#head_jenkins) | **HEAD** `/api/json` | 
[**post_create_item**](#post_create_item) | **POST** `/createItem` | 
[**post_create_view**](#post_create_view) | **POST** `/createView` | 
[**post_job_build**](#post_job_build) | **POST** `/job/{name}/build` | 
[**post_job_config**](#post_job_config) | **POST** `/job/{name}/config.xml` | 
[**post_job_delete**](#post_job_delete) | **POST** `/job/{name}/doDelete` | 
[**post_job_disable**](#post_job_disable) | **POST** `/job/{name}/disable` | 
[**post_job_enable**](#post_job_enable) | **POST** `/job/{name}/enable` | 
[**post_job_last_build_stop**](#post_job_last_build_stop) | **POST** `/job/{name}/lastBuild/stop` | 
[**post_view_config**](#post_view_config) | **POST** `/view/{name}/config.xml` | 

# **get_computer**   { #get_computer }
<a name="get_computer"></a>

> `get_computer(depth: int, on_success: Callable, on_failure: Callable)`



Retrieve computer details

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
var api = RemoteAccessApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = RemoteAccessApi.new(config, client)


# Invoke an endpoint
api.get_computer(
	# depth: int   Eg: 56
	# Recursion depth in response model
	depth,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_computer", response)
		assert(response.data is ComputerSet)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_jenkins**   { #get_jenkins }
<a name="get_jenkins"></a>

> `get_jenkins( on_success: Callable, on_failure: Callable)`



Retrieve Jenkins details

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
var api = RemoteAccessApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = RemoteAccessApi.new(config, client)


# Invoke an endpoint
api.get_jenkins(
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_jenkins", response)
		assert(response.data is Hudson)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_job**   { #get_job }
<a name="get_job"></a>

> `get_job(name: String, on_success: Callable, on_failure: Callable)`



Retrieve job details

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
var api = RemoteAccessApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = RemoteAccessApi.new(config, client)


# Invoke an endpoint
api.get_job(
	# name: String   Eg: name_example
	# Name of the job
	name,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_job", response)
		assert(response.data is FreeStyleProject)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_job_config**   { #get_job_config }
<a name="get_job_config"></a>

> `get_job_config(name: String, on_success: Callable, on_failure: Callable)`



Retrieve job configuration

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
var api = RemoteAccessApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = RemoteAccessApi.new(config, client)


# Invoke an endpoint
api.get_job_config(
	# name: String   Eg: name_example
	# Name of the job
	name,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_job_config", response)
		assert(response.data is string)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_job_last_build**   { #get_job_last_build }
<a name="get_job_last_build"></a>

> `get_job_last_build(name: String, on_success: Callable, on_failure: Callable)`



Retrieve job's last build details

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
var api = RemoteAccessApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = RemoteAccessApi.new(config, client)


# Invoke an endpoint
api.get_job_last_build(
	# name: String   Eg: name_example
	# Name of the job
	name,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_job_last_build", response)
		assert(response.data is FreeStyleBuild)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_job_progressive_text**   { #get_job_progressive_text }
<a name="get_job_progressive_text"></a>

> `get_job_progressive_text(name: String,number: String,start: String, on_success: Callable, on_failure: Callable)`



Retrieve job's build progressive text output

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
var api = RemoteAccessApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = RemoteAccessApi.new(config, client)


# Invoke an endpoint
api.get_job_progressive_text(
	# name: String   Eg: name_example
	# Name of the job
	name,
	# number: String   Eg: number_example
	# Build number
	number,
	# start: String   Eg: start_example
	# Starting point of progressive text output
	start,
	# On Success
	func(response):
		prints("Success!", "get_job_progressive_text", response)
		
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_queue**   { #get_queue }
<a name="get_queue"></a>

> `get_queue( on_success: Callable, on_failure: Callable)`



Retrieve queue details

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
var api = RemoteAccessApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = RemoteAccessApi.new(config, client)


# Invoke an endpoint
api.get_queue(
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_queue", response)
		assert(response.data is Queue)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_queue_item**   { #get_queue_item }
<a name="get_queue_item"></a>

> `get_queue_item(number: String, on_success: Callable, on_failure: Callable)`



Retrieve queued item details

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
var api = RemoteAccessApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = RemoteAccessApi.new(config, client)


# Invoke an endpoint
api.get_queue_item(
	# number: String   Eg: number_example
	# Queue number
	number,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_queue_item", response)
		assert(response.data is Queue)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_view**   { #get_view }
<a name="get_view"></a>

> `get_view(name: String, on_success: Callable, on_failure: Callable)`



Retrieve view details

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
var api = RemoteAccessApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = RemoteAccessApi.new(config, client)


# Invoke an endpoint
api.get_view(
	# name: String   Eg: name_example
	# Name of the view
	name,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_view", response)
		assert(response.data is ListView)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_view_config**   { #get_view_config }
<a name="get_view_config"></a>

> `get_view_config(name: String, on_success: Callable, on_failure: Callable)`



Retrieve view configuration

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
var api = RemoteAccessApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = RemoteAccessApi.new(config, client)


# Invoke an endpoint
api.get_view_config(
	# name: String   Eg: name_example
	# Name of the view
	name,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_view_config", response)
		assert(response.data is string)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **head_jenkins**   { #head_jenkins }
<a name="head_jenkins"></a>

> `head_jenkins( on_success: Callable, on_failure: Callable)`



Retrieve Jenkins headers

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
var api = RemoteAccessApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = RemoteAccessApi.new(config, client)


# Invoke an endpoint
api.head_jenkins(
	# On Success
	func(response):
		prints("Success!", "head_jenkins", response)
		
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **post_create_item**   { #post_create_item }
<a name="post_create_item"></a>

> `post_create_item(name: String,from = null,mode = null,jenkinsCrumb = null,contentType = null,body = null, on_success: Callable, on_failure: Callable)`



Create a new job using job configuration, or copied from an existing job

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
var api = RemoteAccessApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = RemoteAccessApi.new(config, client)


# Invoke an endpoint
api.post_create_item(
	# name: String   Eg: name_example
	# Name of the new job
	name,
	# from: String   Eg: from_example
	# Existing job to copy from
	from,
	# mode: String   Eg: mode_example
	# Set to 'copy' for copying an existing job
	mode,
	# jenkinsCrumb: String   Eg: jenkinsCrumb_example
	# CSRF protection token
	jenkinsCrumb,
	# contentType: String   Eg: contentType_example
	# Content type header application/xml
	contentType,
	# body: String   Eg: body_example
	# Job configuration in config.xml format
	body,
	# On Success
	func(response):
		prints("Success!", "post_create_item", response)
		
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **post_create_view**   { #post_create_view }
<a name="post_create_view"></a>

> `post_create_view(name: String,jenkinsCrumb = null,contentType = null,body = null, on_success: Callable, on_failure: Callable)`



Create a new view using view configuration

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
var api = RemoteAccessApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = RemoteAccessApi.new(config, client)


# Invoke an endpoint
api.post_create_view(
	# name: String   Eg: name_example
	# Name of the new view
	name,
	# jenkinsCrumb: String   Eg: jenkinsCrumb_example
	# CSRF protection token
	jenkinsCrumb,
	# contentType: String   Eg: contentType_example
	# Content type header application/xml
	contentType,
	# body: String   Eg: body_example
	# View configuration in config.xml format
	body,
	# On Success
	func(response):
		prints("Success!", "post_create_view", response)
		
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **post_job_build**   { #post_job_build }
<a name="post_job_build"></a>

> `post_job_build(name: String,some_json: String,token = null,jenkinsCrumb = null, on_success: Callable, on_failure: Callable)`



Build a job

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
var api = RemoteAccessApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = RemoteAccessApi.new(config, client)


# Invoke an endpoint
api.post_job_build(
	# name: String   Eg: name_example
	# Name of the job
	name,
	# some_json: String   Eg: some_json_example
	some_json,
	# token: String   Eg: token_example
	token,
	# jenkinsCrumb: String   Eg: jenkinsCrumb_example
	# CSRF protection token
	jenkinsCrumb,
	# On Success
	func(response):
		prints("Success!", "post_job_build", response)
		
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **post_job_config**   { #post_job_config }
<a name="post_job_config"></a>

> `post_job_config(name: String,body: String,jenkinsCrumb = null, on_success: Callable, on_failure: Callable)`



Update job configuration

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
var api = RemoteAccessApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = RemoteAccessApi.new(config, client)


# Invoke an endpoint
api.post_job_config(
	# name: String   Eg: name_example
	# Name of the job
	name,
	# body: String   Eg: body_example
	# Job configuration in config.xml format
	body,
	# jenkinsCrumb: String   Eg: jenkinsCrumb_example
	# CSRF protection token
	jenkinsCrumb,
	# On Success
	func(response):
		prints("Success!", "post_job_config", response)
		
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **post_job_delete**   { #post_job_delete }
<a name="post_job_delete"></a>

> `post_job_delete(name: String,jenkinsCrumb = null, on_success: Callable, on_failure: Callable)`



Delete a job

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
var api = RemoteAccessApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = RemoteAccessApi.new(config, client)


# Invoke an endpoint
api.post_job_delete(
	# name: String   Eg: name_example
	# Name of the job
	name,
	# jenkinsCrumb: String   Eg: jenkinsCrumb_example
	# CSRF protection token
	jenkinsCrumb,
	# On Success
	func(response):
		prints("Success!", "post_job_delete", response)
		
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **post_job_disable**   { #post_job_disable }
<a name="post_job_disable"></a>

> `post_job_disable(name: String,jenkinsCrumb = null, on_success: Callable, on_failure: Callable)`



Disable a job

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
var api = RemoteAccessApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = RemoteAccessApi.new(config, client)


# Invoke an endpoint
api.post_job_disable(
	# name: String   Eg: name_example
	# Name of the job
	name,
	# jenkinsCrumb: String   Eg: jenkinsCrumb_example
	# CSRF protection token
	jenkinsCrumb,
	# On Success
	func(response):
		prints("Success!", "post_job_disable", response)
		
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **post_job_enable**   { #post_job_enable }
<a name="post_job_enable"></a>

> `post_job_enable(name: String,jenkinsCrumb = null, on_success: Callable, on_failure: Callable)`



Enable a job

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
var api = RemoteAccessApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = RemoteAccessApi.new(config, client)


# Invoke an endpoint
api.post_job_enable(
	# name: String   Eg: name_example
	# Name of the job
	name,
	# jenkinsCrumb: String   Eg: jenkinsCrumb_example
	# CSRF protection token
	jenkinsCrumb,
	# On Success
	func(response):
		prints("Success!", "post_job_enable", response)
		
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **post_job_last_build_stop**   { #post_job_last_build_stop }
<a name="post_job_last_build_stop"></a>

> `post_job_last_build_stop(name: String,jenkinsCrumb = null, on_success: Callable, on_failure: Callable)`



Stop a job

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
var api = RemoteAccessApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = RemoteAccessApi.new(config, client)


# Invoke an endpoint
api.post_job_last_build_stop(
	# name: String   Eg: name_example
	# Name of the job
	name,
	# jenkinsCrumb: String   Eg: jenkinsCrumb_example
	# CSRF protection token
	jenkinsCrumb,
	# On Success
	func(response):
		prints("Success!", "post_job_last_build_stop", response)
		
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **post_view_config**   { #post_view_config }
<a name="post_view_config"></a>

> `post_view_config(name: String,body: String,jenkinsCrumb = null, on_success: Callable, on_failure: Callable)`



Update view configuration

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
var api = RemoteAccessApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = RemoteAccessApi.new(config, client)


# Invoke an endpoint
api.post_view_config(
	# name: String   Eg: name_example
	# Name of the view
	name,
	# body: String   Eg: body_example
	# View configuration in config.xml format
	body,
	# jenkinsCrumb: String   Eg: jenkinsCrumb_example
	# CSRF protection token
	jenkinsCrumb,
	# On Success
	func(response):
		prints("Success!", "post_view_config", response)
		
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

