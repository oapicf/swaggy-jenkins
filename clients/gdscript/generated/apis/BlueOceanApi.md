<a name="__pageTop"></a>
# BlueOceanApi   { #BlueOceanApi }


All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_pipeline_queue_item**](#delete_pipeline_queue_item) | **DELETE** `/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue}` | 
[**get_authenticated_user**](#get_authenticated_user) | **GET** `/blue/rest/organizations/{organization}/user/` | 
[**get_classes**](#get_classes) | **GET** `/blue/rest/classes/{class}` | 
[**get_json_web_key**](#get_json_web_key) | **GET** `/jwt-auth/jwks/{key}` | 
[**get_json_web_token**](#get_json_web_token) | **GET** `/jwt-auth/token` | 
[**get_organisation**](#get_organisation) | **GET** `/blue/rest/organizations/{organization}` | 
[**get_organisations**](#get_organisations) | **GET** `/blue/rest/organizations/` | 
[**get_pipeline**](#get_pipeline) | **GET** `/blue/rest/organizations/{organization}/pipelines/{pipeline}` | 
[**get_pipeline_activities**](#get_pipeline_activities) | **GET** `/blue/rest/organizations/{organization}/pipelines/{pipeline}/activities` | 
[**get_pipeline_branch**](#get_pipeline_branch) | **GET** `/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/` | 
[**get_pipeline_branch_run**](#get_pipeline_branch_run) | **GET** `/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run}` | 
[**get_pipeline_branches**](#get_pipeline_branches) | **GET** `/blue/rest/organizations/{organization}/pipelines/{pipeline}/branches` | 
[**get_pipeline_folder**](#get_pipeline_folder) | **GET** `/blue/rest/organizations/{organization}/pipelines/{folder}/` | 
[**get_pipeline_folder_pipeline**](#get_pipeline_folder_pipeline) | **GET** `/blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline}` | 
[**get_pipeline_queue**](#get_pipeline_queue) | **GET** `/blue/rest/organizations/{organization}/pipelines/{pipeline}/queue` | 
[**get_pipeline_run**](#get_pipeline_run) | **GET** `/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}` | 
[**get_pipeline_run_log**](#get_pipeline_run_log) | **GET** `/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log` | 
[**get_pipeline_run_node**](#get_pipeline_run_node) | **GET** `/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}` | 
[**get_pipeline_run_node_step**](#get_pipeline_run_node_step) | **GET** `/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}` | 
[**get_pipeline_run_node_step_log**](#get_pipeline_run_node_step_log) | **GET** `/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log` | 
[**get_pipeline_run_node_steps**](#get_pipeline_run_node_steps) | **GET** `/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps` | 
[**get_pipeline_run_nodes**](#get_pipeline_run_nodes) | **GET** `/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes` | 
[**get_pipeline_runs**](#get_pipeline_runs) | **GET** `/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs` | 
[**get_pipelines**](#get_pipelines) | **GET** `/blue/rest/organizations/{organization}/pipelines/` | 
[**get_scm**](#get_scm) | **GET** `/blue/rest/organizations/{organization}/scm/{scm}` | 
[**get_scm_organisation_repositories**](#get_scm_organisation_repositories) | **GET** `/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories` | 
[**get_scm_organisation_repository**](#get_scm_organisation_repository) | **GET** `/blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository}` | 
[**get_scm_organisations**](#get_scm_organisations) | **GET** `/blue/rest/organizations/{organization}/scm/{scm}/organizations` | 
[**get_user**](#get_user) | **GET** `/blue/rest/organizations/{organization}/users/{user}` | 
[**get_user_favorites**](#get_user_favorites) | **GET** `/blue/rest/users/{user}/favorites` | 
[**get_users**](#get_users) | **GET** `/blue/rest/organizations/{organization}/users/` | 
[**post_pipeline_run**](#post_pipeline_run) | **POST** `/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay` | 
[**post_pipeline_runs**](#post_pipeline_runs) | **POST** `/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs` | 
[**put_pipeline_favorite**](#put_pipeline_favorite) | **PUT** `/blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite` | 
[**put_pipeline_run**](#put_pipeline_run) | **PUT** `/blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop` | 
[**search**](#search) | **GET** `/blue/rest/search/` | 
[**search_classes**](#search_classes) | **GET** `/blue/rest/classes/` | 

# **delete_pipeline_queue_item**   { #delete_pipeline_queue_item }
<a name="delete_pipeline_queue_item"></a>

> `delete_pipeline_queue_item(organization: String,pipeline: String,queue: String, on_success: Callable, on_failure: Callable)`



Delete queue item from an organization pipeline queue

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
var api = BlueOceanApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = BlueOceanApi.new(config, client)


# Invoke an endpoint
api.delete_pipeline_queue_item(
	# organization: String   Eg: organization_example
	# Name of the organization
	organization,
	# pipeline: String   Eg: pipeline_example
	# Name of the pipeline
	pipeline,
	# queue: String   Eg: queue_example
	# Name of the queue item
	queue,
	# On Success
	func(response):
		prints("Success!", "delete_pipeline_queue_item", response)
		
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_authenticated_user**   { #get_authenticated_user }
<a name="get_authenticated_user"></a>

> `get_authenticated_user(organization: String, on_success: Callable, on_failure: Callable)`



Retrieve authenticated user details for an organization

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
var api = BlueOceanApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = BlueOceanApi.new(config, client)


# Invoke an endpoint
api.get_authenticated_user(
	# organization: String   Eg: organization_example
	# Name of the organization
	organization,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_authenticated_user", response)
		assert(response.data is User)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_classes**   { #get_classes }
<a name="get_classes"></a>

> `get_classes(some_class: String, on_success: Callable, on_failure: Callable)`



Get a list of class names supported by a given class

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
var api = BlueOceanApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = BlueOceanApi.new(config, client)


# Invoke an endpoint
api.get_classes(
	# some_class: String   Eg: some_class_example
	# Name of the class
	some_class,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_classes", response)
		assert(response.data is string)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_json_web_key**   { #get_json_web_key }
<a name="get_json_web_key"></a>

> `get_json_web_key(key: int, on_success: Callable, on_failure: Callable)`



Retrieve JSON Web Key

### Example


```gdscript

# Customize configuration
var config := ApiConfig.new()
config.host = "localhost"
config.port = 8080
#config.tls_enabled = true
#config.trusted_chain = preload("res://my_cert_chain.crt")

# Instantiate the api
var api = BlueOceanApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = BlueOceanApi.new(config, client)


# Invoke an endpoint
api.get_json_web_key(
	# key: int   Eg: 56
	# Key ID received as part of JWT header field kid
	key,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_json_web_key", response)
		assert(response.data is string)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_json_web_token**   { #get_json_web_token }
<a name="get_json_web_token"></a>

> `get_json_web_token(expiryTimeInMins = null,maxExpiryTimeInMins = null, on_success: Callable, on_failure: Callable)`



Retrieve JSON Web Token

### Example


```gdscript

# Customize configuration
var config := ApiConfig.new()
config.host = "localhost"
config.port = 8080
#config.tls_enabled = true
#config.trusted_chain = preload("res://my_cert_chain.crt")

# Instantiate the api
var api = BlueOceanApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = BlueOceanApi.new(config, client)


# Invoke an endpoint
api.get_json_web_token(
	# expiryTimeInMins: int   Eg: 56
	# Token expiry time in minutes, default: 30 minutes
	expiryTimeInMins,
	# maxExpiryTimeInMins: int   Eg: 56
	# Maximum token expiry time in minutes, default: 480 minutes
	maxExpiryTimeInMins,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_json_web_token", response)
		assert(response.data is string)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_organisation**   { #get_organisation }
<a name="get_organisation"></a>

> `get_organisation(organization: String, on_success: Callable, on_failure: Callable)`



Retrieve organization details

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
var api = BlueOceanApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = BlueOceanApi.new(config, client)


# Invoke an endpoint
api.get_organisation(
	# organization: String   Eg: organization_example
	# Name of the organization
	organization,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_organisation", response)
		assert(response.data is Organisation)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_organisations**   { #get_organisations }
<a name="get_organisations"></a>

> `get_organisations( on_success: Callable, on_failure: Callable)`



Retrieve all organizations details

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
var api = BlueOceanApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = BlueOceanApi.new(config, client)


# Invoke an endpoint
api.get_organisations(
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_organisations", response)
		assert(response.data is Organisation)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_pipeline**   { #get_pipeline }
<a name="get_pipeline"></a>

> `get_pipeline(organization: String,pipeline: String, on_success: Callable, on_failure: Callable)`



Retrieve pipeline details for an organization

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
var api = BlueOceanApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = BlueOceanApi.new(config, client)


# Invoke an endpoint
api.get_pipeline(
	# organization: String   Eg: organization_example
	# Name of the organization
	organization,
	# pipeline: String   Eg: pipeline_example
	# Name of the pipeline
	pipeline,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_pipeline", response)
		assert(response.data is Pipeline)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_pipeline_activities**   { #get_pipeline_activities }
<a name="get_pipeline_activities"></a>

> `get_pipeline_activities(organization: String,pipeline: String, on_success: Callable, on_failure: Callable)`



Retrieve all activities details for an organization pipeline

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
var api = BlueOceanApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = BlueOceanApi.new(config, client)


# Invoke an endpoint
api.get_pipeline_activities(
	# organization: String   Eg: organization_example
	# Name of the organization
	organization,
	# pipeline: String   Eg: pipeline_example
	# Name of the pipeline
	pipeline,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_pipeline_activities", response)
		assert(response.data is PipelineActivity)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_pipeline_branch**   { #get_pipeline_branch }
<a name="get_pipeline_branch"></a>

> `get_pipeline_branch(organization: String,pipeline: String,branch: String, on_success: Callable, on_failure: Callable)`



Retrieve branch details for an organization pipeline

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
var api = BlueOceanApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = BlueOceanApi.new(config, client)


# Invoke an endpoint
api.get_pipeline_branch(
	# organization: String   Eg: organization_example
	# Name of the organization
	organization,
	# pipeline: String   Eg: pipeline_example
	# Name of the pipeline
	pipeline,
	# branch: String   Eg: branch_example
	# Name of the branch
	branch,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_pipeline_branch", response)
		assert(response.data is BranchImpl)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_pipeline_branch_run**   { #get_pipeline_branch_run }
<a name="get_pipeline_branch_run"></a>

> `get_pipeline_branch_run(organization: String,pipeline: String,branch: String,run: String, on_success: Callable, on_failure: Callable)`



Retrieve branch run details for an organization pipeline

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
var api = BlueOceanApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = BlueOceanApi.new(config, client)


# Invoke an endpoint
api.get_pipeline_branch_run(
	# organization: String   Eg: organization_example
	# Name of the organization
	organization,
	# pipeline: String   Eg: pipeline_example
	# Name of the pipeline
	pipeline,
	# branch: String   Eg: branch_example
	# Name of the branch
	branch,
	# run: String   Eg: run_example
	# Name of the run
	run,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_pipeline_branch_run", response)
		assert(response.data is PipelineRun)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_pipeline_branches**   { #get_pipeline_branches }
<a name="get_pipeline_branches"></a>

> `get_pipeline_branches(organization: String,pipeline: String, on_success: Callable, on_failure: Callable)`



Retrieve all branches details for an organization pipeline

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
var api = BlueOceanApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = BlueOceanApi.new(config, client)


# Invoke an endpoint
api.get_pipeline_branches(
	# organization: String   Eg: organization_example
	# Name of the organization
	organization,
	# pipeline: String   Eg: pipeline_example
	# Name of the pipeline
	pipeline,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_pipeline_branches", response)
		assert(response.data is MultibranchPipeline)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_pipeline_folder**   { #get_pipeline_folder }
<a name="get_pipeline_folder"></a>

> `get_pipeline_folder(organization: String,folder: String, on_success: Callable, on_failure: Callable)`



Retrieve pipeline folder for an organization

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
var api = BlueOceanApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = BlueOceanApi.new(config, client)


# Invoke an endpoint
api.get_pipeline_folder(
	# organization: String   Eg: organization_example
	# Name of the organization
	organization,
	# folder: String   Eg: folder_example
	# Name of the folder
	folder,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_pipeline_folder", response)
		assert(response.data is PipelineFolderImpl)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_pipeline_folder_pipeline**   { #get_pipeline_folder_pipeline }
<a name="get_pipeline_folder_pipeline"></a>

> `get_pipeline_folder_pipeline(organization: String,pipeline: String,folder: String, on_success: Callable, on_failure: Callable)`



Retrieve pipeline details for an organization folder

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
var api = BlueOceanApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = BlueOceanApi.new(config, client)


# Invoke an endpoint
api.get_pipeline_folder_pipeline(
	# organization: String   Eg: organization_example
	# Name of the organization
	organization,
	# pipeline: String   Eg: pipeline_example
	# Name of the pipeline
	pipeline,
	# folder: String   Eg: folder_example
	# Name of the folder
	folder,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_pipeline_folder_pipeline", response)
		assert(response.data is PipelineImpl)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_pipeline_queue**   { #get_pipeline_queue }
<a name="get_pipeline_queue"></a>

> `get_pipeline_queue(organization: String,pipeline: String, on_success: Callable, on_failure: Callable)`



Retrieve queue details for an organization pipeline

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
var api = BlueOceanApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = BlueOceanApi.new(config, client)


# Invoke an endpoint
api.get_pipeline_queue(
	# organization: String   Eg: organization_example
	# Name of the organization
	organization,
	# pipeline: String   Eg: pipeline_example
	# Name of the pipeline
	pipeline,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_pipeline_queue", response)
		assert(response.data is QueueItemImpl)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_pipeline_run**   { #get_pipeline_run }
<a name="get_pipeline_run"></a>

> `get_pipeline_run(organization: String,pipeline: String,run: String, on_success: Callable, on_failure: Callable)`



Retrieve run details for an organization pipeline

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
var api = BlueOceanApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = BlueOceanApi.new(config, client)


# Invoke an endpoint
api.get_pipeline_run(
	# organization: String   Eg: organization_example
	# Name of the organization
	organization,
	# pipeline: String   Eg: pipeline_example
	# Name of the pipeline
	pipeline,
	# run: String   Eg: run_example
	# Name of the run
	run,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_pipeline_run", response)
		assert(response.data is PipelineRun)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_pipeline_run_log**   { #get_pipeline_run_log }
<a name="get_pipeline_run_log"></a>

> `get_pipeline_run_log(organization: String,pipeline: String,run: String,start = null,download = null, on_success: Callable, on_failure: Callable)`



Get log for a pipeline run

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
var api = BlueOceanApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = BlueOceanApi.new(config, client)


# Invoke an endpoint
api.get_pipeline_run_log(
	# organization: String   Eg: organization_example
	# Name of the organization
	organization,
	# pipeline: String   Eg: pipeline_example
	# Name of the pipeline
	pipeline,
	# run: String   Eg: run_example
	# Name of the run
	run,
	# start: int   Eg: 56
	# Start position of the log
	start,
	# download: bool   Eg: true
	# Set to true in order to download the file, otherwise it's passed as a response body
	download,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_pipeline_run_log", response)
		assert(response.data is string)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_pipeline_run_node**   { #get_pipeline_run_node }
<a name="get_pipeline_run_node"></a>

> `get_pipeline_run_node(organization: String,pipeline: String,run: String,some_node: String, on_success: Callable, on_failure: Callable)`



Retrieve run node details for an organization pipeline

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
var api = BlueOceanApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = BlueOceanApi.new(config, client)


# Invoke an endpoint
api.get_pipeline_run_node(
	# organization: String   Eg: organization_example
	# Name of the organization
	organization,
	# pipeline: String   Eg: pipeline_example
	# Name of the pipeline
	pipeline,
	# run: String   Eg: run_example
	# Name of the run
	run,
	# some_node: String   Eg: some_node_example
	# Name of the node
	some_node,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_pipeline_run_node", response)
		assert(response.data is PipelineRunNode)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_pipeline_run_node_step**   { #get_pipeline_run_node_step }
<a name="get_pipeline_run_node_step"></a>

> `get_pipeline_run_node_step(organization: String,pipeline: String,run: String,some_node: String,step: String, on_success: Callable, on_failure: Callable)`



Retrieve run node details for an organization pipeline

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
var api = BlueOceanApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = BlueOceanApi.new(config, client)


# Invoke an endpoint
api.get_pipeline_run_node_step(
	# organization: String   Eg: organization_example
	# Name of the organization
	organization,
	# pipeline: String   Eg: pipeline_example
	# Name of the pipeline
	pipeline,
	# run: String   Eg: run_example
	# Name of the run
	run,
	# some_node: String   Eg: some_node_example
	# Name of the node
	some_node,
	# step: String   Eg: step_example
	# Name of the step
	step,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_pipeline_run_node_step", response)
		assert(response.data is PipelineStepImpl)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_pipeline_run_node_step_log**   { #get_pipeline_run_node_step_log }
<a name="get_pipeline_run_node_step_log"></a>

> `get_pipeline_run_node_step_log(organization: String,pipeline: String,run: String,some_node: String,step: String, on_success: Callable, on_failure: Callable)`



Get log for a pipeline run node step

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
var api = BlueOceanApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = BlueOceanApi.new(config, client)


# Invoke an endpoint
api.get_pipeline_run_node_step_log(
	# organization: String   Eg: organization_example
	# Name of the organization
	organization,
	# pipeline: String   Eg: pipeline_example
	# Name of the pipeline
	pipeline,
	# run: String   Eg: run_example
	# Name of the run
	run,
	# some_node: String   Eg: some_node_example
	# Name of the node
	some_node,
	# step: String   Eg: step_example
	# Name of the step
	step,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_pipeline_run_node_step_log", response)
		assert(response.data is string)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_pipeline_run_node_steps**   { #get_pipeline_run_node_steps }
<a name="get_pipeline_run_node_steps"></a>

> `get_pipeline_run_node_steps(organization: String,pipeline: String,run: String,some_node: String, on_success: Callable, on_failure: Callable)`



Retrieve run node steps details for an organization pipeline

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
var api = BlueOceanApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = BlueOceanApi.new(config, client)


# Invoke an endpoint
api.get_pipeline_run_node_steps(
	# organization: String   Eg: organization_example
	# Name of the organization
	organization,
	# pipeline: String   Eg: pipeline_example
	# Name of the pipeline
	pipeline,
	# run: String   Eg: run_example
	# Name of the run
	run,
	# some_node: String   Eg: some_node_example
	# Name of the node
	some_node,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_pipeline_run_node_steps", response)
		assert(response.data is PipelineStepImpl)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_pipeline_run_nodes**   { #get_pipeline_run_nodes }
<a name="get_pipeline_run_nodes"></a>

> `get_pipeline_run_nodes(organization: String,pipeline: String,run: String, on_success: Callable, on_failure: Callable)`



Retrieve run nodes details for an organization pipeline

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
var api = BlueOceanApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = BlueOceanApi.new(config, client)


# Invoke an endpoint
api.get_pipeline_run_nodes(
	# organization: String   Eg: organization_example
	# Name of the organization
	organization,
	# pipeline: String   Eg: pipeline_example
	# Name of the pipeline
	pipeline,
	# run: String   Eg: run_example
	# Name of the run
	run,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_pipeline_run_nodes", response)
		assert(response.data is PipelineRunNode)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_pipeline_runs**   { #get_pipeline_runs }
<a name="get_pipeline_runs"></a>

> `get_pipeline_runs(organization: String,pipeline: String, on_success: Callable, on_failure: Callable)`



Retrieve all runs details for an organization pipeline

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
var api = BlueOceanApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = BlueOceanApi.new(config, client)


# Invoke an endpoint
api.get_pipeline_runs(
	# organization: String   Eg: organization_example
	# Name of the organization
	organization,
	# pipeline: String   Eg: pipeline_example
	# Name of the pipeline
	pipeline,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_pipeline_runs", response)
		assert(response.data is PipelineRun)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_pipelines**   { #get_pipelines }
<a name="get_pipelines"></a>

> `get_pipelines(organization: String, on_success: Callable, on_failure: Callable)`



Retrieve all pipelines details for an organization

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
var api = BlueOceanApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = BlueOceanApi.new(config, client)


# Invoke an endpoint
api.get_pipelines(
	# organization: String   Eg: organization_example
	# Name of the organization
	organization,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_pipelines", response)
		assert(response.data is Pipeline)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_scm**   { #get_scm }
<a name="get_scm"></a>

> `get_scm(organization: String,scm: String, on_success: Callable, on_failure: Callable)`



Retrieve SCM details for an organization

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
var api = BlueOceanApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = BlueOceanApi.new(config, client)


# Invoke an endpoint
api.get_scm(
	# organization: String   Eg: organization_example
	# Name of the organization
	organization,
	# scm: String   Eg: scm_example
	# Name of SCM
	scm,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_scm", response)
		assert(response.data is GithubScm)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_scm_organisation_repositories**   { #get_scm_organisation_repositories }
<a name="get_scm_organisation_repositories"></a>

> `get_scm_organisation_repositories(organization: String,scm: String,scmOrganisation: String,credentialId = null,pageSize = null,pageNumber = null, on_success: Callable, on_failure: Callable)`



Retrieve SCM organization repositories details for an organization

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
var api = BlueOceanApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = BlueOceanApi.new(config, client)


# Invoke an endpoint
api.get_scm_organisation_repositories(
	# organization: String   Eg: organization_example
	# Name of the organization
	organization,
	# scm: String   Eg: scm_example
	# Name of SCM
	scm,
	# scmOrganisation: String   Eg: scmOrganisation_example
	# Name of the SCM organization
	scmOrganisation,
	# credentialId: String   Eg: credentialId_example
	# Credential ID
	credentialId,
	# pageSize: int   Eg: 56
	# Number of items in a page
	pageSize,
	# pageNumber: int   Eg: 56
	# Page number
	pageNumber,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_scm_organisation_repositories", response)
		assert(response.data is GithubOrganization)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_scm_organisation_repository**   { #get_scm_organisation_repository }
<a name="get_scm_organisation_repository"></a>

> `get_scm_organisation_repository(organization: String,scm: String,scmOrganisation: String,repository: String,credentialId = null, on_success: Callable, on_failure: Callable)`



Retrieve SCM organization repository details for an organization

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
var api = BlueOceanApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = BlueOceanApi.new(config, client)


# Invoke an endpoint
api.get_scm_organisation_repository(
	# organization: String   Eg: organization_example
	# Name of the organization
	organization,
	# scm: String   Eg: scm_example
	# Name of SCM
	scm,
	# scmOrganisation: String   Eg: scmOrganisation_example
	# Name of the SCM organization
	scmOrganisation,
	# repository: String   Eg: repository_example
	# Name of the SCM repository
	repository,
	# credentialId: String   Eg: credentialId_example
	# Credential ID
	credentialId,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_scm_organisation_repository", response)
		assert(response.data is GithubOrganization)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_scm_organisations**   { #get_scm_organisations }
<a name="get_scm_organisations"></a>

> `get_scm_organisations(organization: String,scm: String,credentialId = null, on_success: Callable, on_failure: Callable)`



Retrieve SCM organizations details for an organization

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
var api = BlueOceanApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = BlueOceanApi.new(config, client)


# Invoke an endpoint
api.get_scm_organisations(
	# organization: String   Eg: organization_example
	# Name of the organization
	organization,
	# scm: String   Eg: scm_example
	# Name of SCM
	scm,
	# credentialId: String   Eg: credentialId_example
	# Credential ID
	credentialId,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_scm_organisations", response)
		assert(response.data is GithubOrganization)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_user**   { #get_user }
<a name="get_user"></a>

> `get_user(organization: String,user: String, on_success: Callable, on_failure: Callable)`



Retrieve user details for an organization

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
var api = BlueOceanApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = BlueOceanApi.new(config, client)


# Invoke an endpoint
api.get_user(
	# organization: String   Eg: organization_example
	# Name of the organization
	organization,
	# user: String   Eg: user_example
	# Name of the user
	user,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_user", response)
		assert(response.data is User)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_user_favorites**   { #get_user_favorites }
<a name="get_user_favorites"></a>

> `get_user_favorites(user: String, on_success: Callable, on_failure: Callable)`



Retrieve user favorites details for an organization

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
var api = BlueOceanApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = BlueOceanApi.new(config, client)


# Invoke an endpoint
api.get_user_favorites(
	# user: String   Eg: user_example
	# Name of the user
	user,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_user_favorites", response)
		assert(response.data is FavoriteImpl)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **get_users**   { #get_users }
<a name="get_users"></a>

> `get_users(organization: String, on_success: Callable, on_failure: Callable)`



Retrieve users details for an organization

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
var api = BlueOceanApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = BlueOceanApi.new(config, client)


# Invoke an endpoint
api.get_users(
	# organization: String   Eg: organization_example
	# Name of the organization
	organization,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "get_users", response)
		assert(response.data is User)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **post_pipeline_run**   { #post_pipeline_run }
<a name="post_pipeline_run"></a>

> `post_pipeline_run(organization: String,pipeline: String,run: String, on_success: Callable, on_failure: Callable)`



Replay an organization pipeline run

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
var api = BlueOceanApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = BlueOceanApi.new(config, client)


# Invoke an endpoint
api.post_pipeline_run(
	# organization: String   Eg: organization_example
	# Name of the organization
	organization,
	# pipeline: String   Eg: pipeline_example
	# Name of the pipeline
	pipeline,
	# run: String   Eg: run_example
	# Name of the run
	run,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "post_pipeline_run", response)
		assert(response.data is QueueItemImpl)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **post_pipeline_runs**   { #post_pipeline_runs }
<a name="post_pipeline_runs"></a>

> `post_pipeline_runs(organization: String,pipeline: String, on_success: Callable, on_failure: Callable)`



Start a build for an organization pipeline

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
var api = BlueOceanApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = BlueOceanApi.new(config, client)


# Invoke an endpoint
api.post_pipeline_runs(
	# organization: String   Eg: organization_example
	# Name of the organization
	organization,
	# pipeline: String   Eg: pipeline_example
	# Name of the pipeline
	pipeline,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "post_pipeline_runs", response)
		assert(response.data is QueueItemImpl)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **put_pipeline_favorite**   { #put_pipeline_favorite }
<a name="put_pipeline_favorite"></a>

> `put_pipeline_favorite(organization: String,pipeline: String,body: bool, on_success: Callable, on_failure: Callable)`



Favorite/unfavorite a pipeline

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
var api = BlueOceanApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = BlueOceanApi.new(config, client)


# Invoke an endpoint
api.put_pipeline_favorite(
	# organization: String   Eg: organization_example
	# Name of the organization
	organization,
	# pipeline: String   Eg: pipeline_example
	# Name of the pipeline
	pipeline,
	# body: bool   Eg: true
	# Set JSON string body to {\"favorite\": true} to favorite, set value to false to unfavorite
	body,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "put_pipeline_favorite", response)
		assert(response.data is FavoriteImpl)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **put_pipeline_run**   { #put_pipeline_run }
<a name="put_pipeline_run"></a>

> `put_pipeline_run(organization: String,pipeline: String,run: String,blocking = null,timeOutInSecs = null, on_success: Callable, on_failure: Callable)`



Stop a build of an organization pipeline

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
var api = BlueOceanApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = BlueOceanApi.new(config, client)


# Invoke an endpoint
api.put_pipeline_run(
	# organization: String   Eg: organization_example
	# Name of the organization
	organization,
	# pipeline: String   Eg: pipeline_example
	# Name of the pipeline
	pipeline,
	# run: String   Eg: run_example
	# Name of the run
	run,
	# blocking: String   Eg: blocking_example
	# Set to true to make blocking stop, default: false
	blocking,
	# timeOutInSecs: int   Eg: 56
	# Timeout in seconds, default: 10 seconds
	timeOutInSecs,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "put_pipeline_run", response)
		assert(response.data is PipelineRun)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **search**   { #search }
<a name="search"></a>

> `search(q: String, on_success: Callable, on_failure: Callable)`



Search for any resource details

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
var api = BlueOceanApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = BlueOceanApi.new(config, client)


# Invoke an endpoint
api.search(
	# q: String   Eg: q_example
	# Query string
	q,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "search", response)
		assert(response.data is string)
		pass  # do things, make stuff
		,
	# On Error
	func(error):  # error is ApiError
		push_error(str(error))
		,
)

```

# **search_classes**   { #search_classes }
<a name="search_classes"></a>

> `search_classes(q: String, on_success: Callable, on_failure: Callable)`



Get classes details

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
var api = BlueOceanApi.new(config)
# You can also provide your own HTTPClient, to re-use it across apis.
#var api = BlueOceanApi.new(config, client)


# Invoke an endpoint
api.search_classes(
	# q: String   Eg: q_example
	# Query string containing an array of class names
	q,
	# On Success
	func(response):  # response is ApiResponse
		prints("Success!", "search_classes", response)
		assert(response.data is string)
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

