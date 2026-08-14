# \RemoteAccessAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetComputer**](RemoteAccessAPI.md#GetComputer) | **Get** /computer/api/json | 
[**GetJenkins**](RemoteAccessAPI.md#GetJenkins) | **Get** /api/json | 
[**GetJob**](RemoteAccessAPI.md#GetJob) | **Get** /job/{name}/api/json | 
[**GetJobConfig**](RemoteAccessAPI.md#GetJobConfig) | **Get** /job/{name}/config.xml | 
[**GetJobLastBuild**](RemoteAccessAPI.md#GetJobLastBuild) | **Get** /job/{name}/lastBuild/api/json | 
[**GetJobProgressiveText**](RemoteAccessAPI.md#GetJobProgressiveText) | **Get** /job/{name}/{number}/logText/progressiveText | 
[**GetQueue**](RemoteAccessAPI.md#GetQueue) | **Get** /queue/api/json | 
[**GetQueueItem**](RemoteAccessAPI.md#GetQueueItem) | **Get** /queue/item/{number}/api/json | 
[**GetView**](RemoteAccessAPI.md#GetView) | **Get** /view/{name}/api/json | 
[**GetViewConfig**](RemoteAccessAPI.md#GetViewConfig) | **Get** /view/{name}/config.xml | 
[**HeadJenkins**](RemoteAccessAPI.md#HeadJenkins) | **Head** /api/json | 
[**PostCreateItem**](RemoteAccessAPI.md#PostCreateItem) | **Post** /createItem | 
[**PostCreateView**](RemoteAccessAPI.md#PostCreateView) | **Post** /createView | 
[**PostJobBuild**](RemoteAccessAPI.md#PostJobBuild) | **Post** /job/{name}/build | 
[**PostJobConfig**](RemoteAccessAPI.md#PostJobConfig) | **Post** /job/{name}/config.xml | 
[**PostJobDelete**](RemoteAccessAPI.md#PostJobDelete) | **Post** /job/{name}/doDelete | 
[**PostJobDisable**](RemoteAccessAPI.md#PostJobDisable) | **Post** /job/{name}/disable | 
[**PostJobEnable**](RemoteAccessAPI.md#PostJobEnable) | **Post** /job/{name}/enable | 
[**PostJobLastBuildStop**](RemoteAccessAPI.md#PostJobLastBuildStop) | **Post** /job/{name}/lastBuild/stop | 
[**PostViewConfig**](RemoteAccessAPI.md#PostViewConfig) | **Post** /view/{name}/config.xml | 



## GetComputer

> ComputerSet GetComputer(ctx).Depth(depth).Execute()





### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/oapicf/swaggy-jenkins"
)

func main() {
	depth := int32(56) // int32 | Recursion depth in response model

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.RemoteAccessAPI.GetComputer(context.Background()).Depth(depth).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `RemoteAccessAPI.GetComputer``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetComputer`: ComputerSet
	fmt.Fprintf(os.Stdout, "Response from `RemoteAccessAPI.GetComputer`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiGetComputerRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **depth** | **int32** | Recursion depth in response model | 

### Return type

[**ComputerSet**](ComputerSet.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetJenkins

> Hudson GetJenkins(ctx).Execute()





### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/oapicf/swaggy-jenkins"
)

func main() {

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.RemoteAccessAPI.GetJenkins(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `RemoteAccessAPI.GetJenkins``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetJenkins`: Hudson
	fmt.Fprintf(os.Stdout, "Response from `RemoteAccessAPI.GetJenkins`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiGetJenkinsRequest struct via the builder pattern


### Return type

[**Hudson**](Hudson.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetJob

> FreeStyleProject GetJob(ctx, name).Execute()





### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/oapicf/swaggy-jenkins"
)

func main() {
	name := "name_example" // string | Name of the job

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.RemoteAccessAPI.GetJob(context.Background(), name).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `RemoteAccessAPI.GetJob``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetJob`: FreeStyleProject
	fmt.Fprintf(os.Stdout, "Response from `RemoteAccessAPI.GetJob`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**name** | **string** | Name of the job | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetJobRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**FreeStyleProject**](FreeStyleProject.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetJobConfig

> string GetJobConfig(ctx, name).Execute()





### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/oapicf/swaggy-jenkins"
)

func main() {
	name := "name_example" // string | Name of the job

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.RemoteAccessAPI.GetJobConfig(context.Background(), name).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `RemoteAccessAPI.GetJobConfig``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetJobConfig`: string
	fmt.Fprintf(os.Stdout, "Response from `RemoteAccessAPI.GetJobConfig`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**name** | **string** | Name of the job | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetJobConfigRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

**string**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetJobLastBuild

> FreeStyleBuild GetJobLastBuild(ctx, name).Execute()





### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/oapicf/swaggy-jenkins"
)

func main() {
	name := "name_example" // string | Name of the job

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.RemoteAccessAPI.GetJobLastBuild(context.Background(), name).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `RemoteAccessAPI.GetJobLastBuild``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetJobLastBuild`: FreeStyleBuild
	fmt.Fprintf(os.Stdout, "Response from `RemoteAccessAPI.GetJobLastBuild`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**name** | **string** | Name of the job | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetJobLastBuildRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**FreeStyleBuild**](FreeStyleBuild.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetJobProgressiveText

> GetJobProgressiveText(ctx, name, number).Start(start).Execute()





### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/oapicf/swaggy-jenkins"
)

func main() {
	name := "name_example" // string | Name of the job
	number := "number_example" // string | Build number
	start := "start_example" // string | Starting point of progressive text output

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.RemoteAccessAPI.GetJobProgressiveText(context.Background(), name, number).Start(start).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `RemoteAccessAPI.GetJobProgressiveText``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**name** | **string** | Name of the job | 
**number** | **string** | Build number | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetJobProgressiveTextRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **start** | **string** | Starting point of progressive text output | 

### Return type

 (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetQueue

> Queue GetQueue(ctx).Execute()





### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/oapicf/swaggy-jenkins"
)

func main() {

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.RemoteAccessAPI.GetQueue(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `RemoteAccessAPI.GetQueue``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetQueue`: Queue
	fmt.Fprintf(os.Stdout, "Response from `RemoteAccessAPI.GetQueue`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiGetQueueRequest struct via the builder pattern


### Return type

[**Queue**](Queue.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetQueueItem

> Queue GetQueueItem(ctx, number).Execute()





### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/oapicf/swaggy-jenkins"
)

func main() {
	number := "number_example" // string | Queue number

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.RemoteAccessAPI.GetQueueItem(context.Background(), number).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `RemoteAccessAPI.GetQueueItem``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetQueueItem`: Queue
	fmt.Fprintf(os.Stdout, "Response from `RemoteAccessAPI.GetQueueItem`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**number** | **string** | Queue number | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetQueueItemRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**Queue**](Queue.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetView

> ListView GetView(ctx, name).Execute()





### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/oapicf/swaggy-jenkins"
)

func main() {
	name := "name_example" // string | Name of the view

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.RemoteAccessAPI.GetView(context.Background(), name).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `RemoteAccessAPI.GetView``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetView`: ListView
	fmt.Fprintf(os.Stdout, "Response from `RemoteAccessAPI.GetView`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**name** | **string** | Name of the view | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetViewRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**ListView**](ListView.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetViewConfig

> string GetViewConfig(ctx, name).Execute()





### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/oapicf/swaggy-jenkins"
)

func main() {
	name := "name_example" // string | Name of the view

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.RemoteAccessAPI.GetViewConfig(context.Background(), name).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `RemoteAccessAPI.GetViewConfig``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetViewConfig`: string
	fmt.Fprintf(os.Stdout, "Response from `RemoteAccessAPI.GetViewConfig`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**name** | **string** | Name of the view | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetViewConfigRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

**string**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## HeadJenkins

> HeadJenkins(ctx).Execute()





### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/oapicf/swaggy-jenkins"
)

func main() {

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.RemoteAccessAPI.HeadJenkins(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `RemoteAccessAPI.HeadJenkins``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiHeadJenkinsRequest struct via the builder pattern


### Return type

 (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PostCreateItem

> PostCreateItem(ctx).Name(name).From(from).Mode(mode).JenkinsCrumb(jenkinsCrumb).ContentType(contentType).Body(body).Execute()





### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/oapicf/swaggy-jenkins"
)

func main() {
	name := "name_example" // string | Name of the new job
	from := "from_example" // string | Existing job to copy from (optional)
	mode := "mode_example" // string | Set to 'copy' for copying an existing job (optional)
	jenkinsCrumb := "jenkinsCrumb_example" // string | CSRF protection token (optional)
	contentType := "contentType_example" // string | Content type header application/xml (optional)
	body := "body_example" // string | Job configuration in config.xml format (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.RemoteAccessAPI.PostCreateItem(context.Background()).Name(name).From(from).Mode(mode).JenkinsCrumb(jenkinsCrumb).ContentType(contentType).Body(body).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `RemoteAccessAPI.PostCreateItem``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiPostCreateItemRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string** | Name of the new job | 
 **from** | **string** | Existing job to copy from | 
 **mode** | **string** | Set to &#39;copy&#39; for copying an existing job | 
 **jenkinsCrumb** | **string** | CSRF protection token | 
 **contentType** | **string** | Content type header application/xml | 
 **body** | **string** | Job configuration in config.xml format | 

### Return type

 (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PostCreateView

> PostCreateView(ctx).Name(name).JenkinsCrumb(jenkinsCrumb).ContentType(contentType).Body(body).Execute()





### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/oapicf/swaggy-jenkins"
)

func main() {
	name := "name_example" // string | Name of the new view
	jenkinsCrumb := "jenkinsCrumb_example" // string | CSRF protection token (optional)
	contentType := "contentType_example" // string | Content type header application/xml (optional)
	body := "body_example" // string | View configuration in config.xml format (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.RemoteAccessAPI.PostCreateView(context.Background()).Name(name).JenkinsCrumb(jenkinsCrumb).ContentType(contentType).Body(body).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `RemoteAccessAPI.PostCreateView``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiPostCreateViewRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string** | Name of the new view | 
 **jenkinsCrumb** | **string** | CSRF protection token | 
 **contentType** | **string** | Content type header application/xml | 
 **body** | **string** | View configuration in config.xml format | 

### Return type

 (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PostJobBuild

> PostJobBuild(ctx, name).Json(json).Token(token).JenkinsCrumb(jenkinsCrumb).Execute()





### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/oapicf/swaggy-jenkins"
)

func main() {
	name := "name_example" // string | Name of the job
	json := "json_example" // string | 
	token := "token_example" // string |  (optional)
	jenkinsCrumb := "jenkinsCrumb_example" // string | CSRF protection token (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.RemoteAccessAPI.PostJobBuild(context.Background(), name).Json(json).Token(token).JenkinsCrumb(jenkinsCrumb).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `RemoteAccessAPI.PostJobBuild``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**name** | **string** | Name of the job | 

### Other Parameters

Other parameters are passed through a pointer to a apiPostJobBuildRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **json** | **string** |  | 
 **token** | **string** |  | 
 **jenkinsCrumb** | **string** | CSRF protection token | 

### Return type

 (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PostJobConfig

> PostJobConfig(ctx, name).Body(body).JenkinsCrumb(jenkinsCrumb).Execute()





### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/oapicf/swaggy-jenkins"
)

func main() {
	name := "name_example" // string | Name of the job
	body := "body_example" // string | Job configuration in config.xml format
	jenkinsCrumb := "jenkinsCrumb_example" // string | CSRF protection token (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.RemoteAccessAPI.PostJobConfig(context.Background(), name).Body(body).JenkinsCrumb(jenkinsCrumb).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `RemoteAccessAPI.PostJobConfig``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**name** | **string** | Name of the job | 

### Other Parameters

Other parameters are passed through a pointer to a apiPostJobConfigRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **body** | **string** | Job configuration in config.xml format | 
 **jenkinsCrumb** | **string** | CSRF protection token | 

### Return type

 (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PostJobDelete

> PostJobDelete(ctx, name).JenkinsCrumb(jenkinsCrumb).Execute()





### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/oapicf/swaggy-jenkins"
)

func main() {
	name := "name_example" // string | Name of the job
	jenkinsCrumb := "jenkinsCrumb_example" // string | CSRF protection token (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.RemoteAccessAPI.PostJobDelete(context.Background(), name).JenkinsCrumb(jenkinsCrumb).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `RemoteAccessAPI.PostJobDelete``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**name** | **string** | Name of the job | 

### Other Parameters

Other parameters are passed through a pointer to a apiPostJobDeleteRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **jenkinsCrumb** | **string** | CSRF protection token | 

### Return type

 (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PostJobDisable

> PostJobDisable(ctx, name).JenkinsCrumb(jenkinsCrumb).Execute()





### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/oapicf/swaggy-jenkins"
)

func main() {
	name := "name_example" // string | Name of the job
	jenkinsCrumb := "jenkinsCrumb_example" // string | CSRF protection token (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.RemoteAccessAPI.PostJobDisable(context.Background(), name).JenkinsCrumb(jenkinsCrumb).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `RemoteAccessAPI.PostJobDisable``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**name** | **string** | Name of the job | 

### Other Parameters

Other parameters are passed through a pointer to a apiPostJobDisableRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **jenkinsCrumb** | **string** | CSRF protection token | 

### Return type

 (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PostJobEnable

> PostJobEnable(ctx, name).JenkinsCrumb(jenkinsCrumb).Execute()





### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/oapicf/swaggy-jenkins"
)

func main() {
	name := "name_example" // string | Name of the job
	jenkinsCrumb := "jenkinsCrumb_example" // string | CSRF protection token (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.RemoteAccessAPI.PostJobEnable(context.Background(), name).JenkinsCrumb(jenkinsCrumb).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `RemoteAccessAPI.PostJobEnable``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**name** | **string** | Name of the job | 

### Other Parameters

Other parameters are passed through a pointer to a apiPostJobEnableRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **jenkinsCrumb** | **string** | CSRF protection token | 

### Return type

 (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PostJobLastBuildStop

> PostJobLastBuildStop(ctx, name).JenkinsCrumb(jenkinsCrumb).Execute()





### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/oapicf/swaggy-jenkins"
)

func main() {
	name := "name_example" // string | Name of the job
	jenkinsCrumb := "jenkinsCrumb_example" // string | CSRF protection token (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.RemoteAccessAPI.PostJobLastBuildStop(context.Background(), name).JenkinsCrumb(jenkinsCrumb).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `RemoteAccessAPI.PostJobLastBuildStop``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**name** | **string** | Name of the job | 

### Other Parameters

Other parameters are passed through a pointer to a apiPostJobLastBuildStopRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **jenkinsCrumb** | **string** | CSRF protection token | 

### Return type

 (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PostViewConfig

> PostViewConfig(ctx, name).Body(body).JenkinsCrumb(jenkinsCrumb).Execute()





### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/oapicf/swaggy-jenkins"
)

func main() {
	name := "name_example" // string | Name of the view
	body := "body_example" // string | View configuration in config.xml format
	jenkinsCrumb := "jenkinsCrumb_example" // string | CSRF protection token (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.RemoteAccessAPI.PostViewConfig(context.Background(), name).Body(body).JenkinsCrumb(jenkinsCrumb).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `RemoteAccessAPI.PostViewConfig``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**name** | **string** | Name of the view | 

### Other Parameters

Other parameters are passed through a pointer to a apiPostViewConfigRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **body** | **string** | View configuration in config.xml format | 
 **jenkinsCrumb** | **string** | CSRF protection token | 

### Return type

 (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

