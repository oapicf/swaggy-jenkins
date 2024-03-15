# \BlueOceanAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DeletePipelineQueueItem**](BlueOceanAPI.md#DeletePipelineQueueItem) | **Delete** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue} | 
[**GetAuthenticatedUser**](BlueOceanAPI.md#GetAuthenticatedUser) | **Get** /blue/rest/organizations/{organization}/user/ | 
[**GetClasses**](BlueOceanAPI.md#GetClasses) | **Get** /blue/rest/classes/{class} | 
[**GetJsonWebKey**](BlueOceanAPI.md#GetJsonWebKey) | **Get** /jwt-auth/jwks/{key} | 
[**GetJsonWebToken**](BlueOceanAPI.md#GetJsonWebToken) | **Get** /jwt-auth/token | 
[**GetOrganisation**](BlueOceanAPI.md#GetOrganisation) | **Get** /blue/rest/organizations/{organization} | 
[**GetOrganisations**](BlueOceanAPI.md#GetOrganisations) | **Get** /blue/rest/organizations/ | 
[**GetPipeline**](BlueOceanAPI.md#GetPipeline) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline} | 
[**GetPipelineActivities**](BlueOceanAPI.md#GetPipelineActivities) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/activities | 
[**GetPipelineBranch**](BlueOceanAPI.md#GetPipelineBranch) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/ | 
[**GetPipelineBranchRun**](BlueOceanAPI.md#GetPipelineBranchRun) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run} | 
[**GetPipelineBranches**](BlueOceanAPI.md#GetPipelineBranches) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches | 
[**GetPipelineFolder**](BlueOceanAPI.md#GetPipelineFolder) | **Get** /blue/rest/organizations/{organization}/pipelines/{folder}/ | 
[**GetPipelineFolderPipeline**](BlueOceanAPI.md#GetPipelineFolderPipeline) | **Get** /blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline} | 
[**GetPipelineQueue**](BlueOceanAPI.md#GetPipelineQueue) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue | 
[**GetPipelineRun**](BlueOceanAPI.md#GetPipelineRun) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run} | 
[**GetPipelineRunLog**](BlueOceanAPI.md#GetPipelineRunLog) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log | 
[**GetPipelineRunNode**](BlueOceanAPI.md#GetPipelineRunNode) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node} | 
[**GetPipelineRunNodeStep**](BlueOceanAPI.md#GetPipelineRunNodeStep) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step} | 
[**GetPipelineRunNodeStepLog**](BlueOceanAPI.md#GetPipelineRunNodeStepLog) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log | 
[**GetPipelineRunNodeSteps**](BlueOceanAPI.md#GetPipelineRunNodeSteps) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps | 
[**GetPipelineRunNodes**](BlueOceanAPI.md#GetPipelineRunNodes) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes | 
[**GetPipelineRuns**](BlueOceanAPI.md#GetPipelineRuns) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
[**GetPipelines**](BlueOceanAPI.md#GetPipelines) | **Get** /blue/rest/organizations/{organization}/pipelines/ | 
[**GetSCM**](BlueOceanAPI.md#GetSCM) | **Get** /blue/rest/organizations/{organization}/scm/{scm} | 
[**GetSCMOrganisationRepositories**](BlueOceanAPI.md#GetSCMOrganisationRepositories) | **Get** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories | 
[**GetSCMOrganisationRepository**](BlueOceanAPI.md#GetSCMOrganisationRepository) | **Get** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository} | 
[**GetSCMOrganisations**](BlueOceanAPI.md#GetSCMOrganisations) | **Get** /blue/rest/organizations/{organization}/scm/{scm}/organizations | 
[**GetUser**](BlueOceanAPI.md#GetUser) | **Get** /blue/rest/organizations/{organization}/users/{user} | 
[**GetUserFavorites**](BlueOceanAPI.md#GetUserFavorites) | **Get** /blue/rest/users/{user}/favorites | 
[**GetUsers**](BlueOceanAPI.md#GetUsers) | **Get** /blue/rest/organizations/{organization}/users/ | 
[**PostPipelineRun**](BlueOceanAPI.md#PostPipelineRun) | **Post** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay | 
[**PostPipelineRuns**](BlueOceanAPI.md#PostPipelineRuns) | **Post** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
[**PutPipelineFavorite**](BlueOceanAPI.md#PutPipelineFavorite) | **Put** /blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite | 
[**PutPipelineRun**](BlueOceanAPI.md#PutPipelineRun) | **Put** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop | 
[**Search**](BlueOceanAPI.md#Search) | **Get** /blue/rest/search/ | 
[**SearchClasses**](BlueOceanAPI.md#SearchClasses) | **Get** /blue/rest/classes/ | 



## DeletePipelineQueueItem

> DeletePipelineQueueItem(ctx, organization, pipeline, queue).Execute()





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
	organization := "organization_example" // string | Name of the organization
	pipeline := "pipeline_example" // string | Name of the pipeline
	queue := "queue_example" // string | Name of the queue item

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.BlueOceanAPI.DeletePipelineQueueItem(context.Background(), organization, pipeline, queue).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BlueOceanAPI.DeletePipelineQueueItem``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organization** | **string** | Name of the organization | 
**pipeline** | **string** | Name of the pipeline | 
**queue** | **string** | Name of the queue item | 

### Other Parameters

Other parameters are passed through a pointer to a apiDeletePipelineQueueItemRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------




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


## GetAuthenticatedUser

> User GetAuthenticatedUser(ctx, organization).Execute()





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
	organization := "organization_example" // string | Name of the organization

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BlueOceanAPI.GetAuthenticatedUser(context.Background(), organization).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BlueOceanAPI.GetAuthenticatedUser``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetAuthenticatedUser`: User
	fmt.Fprintf(os.Stdout, "Response from `BlueOceanAPI.GetAuthenticatedUser`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organization** | **string** | Name of the organization | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetAuthenticatedUserRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**User**](User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetClasses

> string GetClasses(ctx, class).Execute()





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
	class := "class_example" // string | Name of the class

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BlueOceanAPI.GetClasses(context.Background(), class).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BlueOceanAPI.GetClasses``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetClasses`: string
	fmt.Fprintf(os.Stdout, "Response from `BlueOceanAPI.GetClasses`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**class** | **string** | Name of the class | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetClassesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

**string**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetJsonWebKey

> string GetJsonWebKey(ctx, key).Execute()





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
	key := int32(56) // int32 | Key ID received as part of JWT header field kid

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BlueOceanAPI.GetJsonWebKey(context.Background(), key).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BlueOceanAPI.GetJsonWebKey``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetJsonWebKey`: string
	fmt.Fprintf(os.Stdout, "Response from `BlueOceanAPI.GetJsonWebKey`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**key** | **int32** | Key ID received as part of JWT header field kid | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetJsonWebKeyRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetJsonWebToken

> string GetJsonWebToken(ctx).ExpiryTimeInMins(expiryTimeInMins).MaxExpiryTimeInMins(maxExpiryTimeInMins).Execute()





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
	expiryTimeInMins := int32(56) // int32 | Token expiry time in minutes, default: 30 minutes (optional)
	maxExpiryTimeInMins := int32(56) // int32 | Maximum token expiry time in minutes, default: 480 minutes (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BlueOceanAPI.GetJsonWebToken(context.Background()).ExpiryTimeInMins(expiryTimeInMins).MaxExpiryTimeInMins(maxExpiryTimeInMins).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BlueOceanAPI.GetJsonWebToken``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetJsonWebToken`: string
	fmt.Fprintf(os.Stdout, "Response from `BlueOceanAPI.GetJsonWebToken`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiGetJsonWebTokenRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expiryTimeInMins** | **int32** | Token expiry time in minutes, default: 30 minutes | 
 **maxExpiryTimeInMins** | **int32** | Maximum token expiry time in minutes, default: 480 minutes | 

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetOrganisation

> Organisation GetOrganisation(ctx, organization).Execute()





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
	organization := "organization_example" // string | Name of the organization

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BlueOceanAPI.GetOrganisation(context.Background(), organization).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BlueOceanAPI.GetOrganisation``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetOrganisation`: Organisation
	fmt.Fprintf(os.Stdout, "Response from `BlueOceanAPI.GetOrganisation`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organization** | **string** | Name of the organization | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetOrganisationRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**Organisation**](Organisation.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetOrganisations

> []Organisation GetOrganisations(ctx).Execute()





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
	resp, r, err := apiClient.BlueOceanAPI.GetOrganisations(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BlueOceanAPI.GetOrganisations``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetOrganisations`: []Organisation
	fmt.Fprintf(os.Stdout, "Response from `BlueOceanAPI.GetOrganisations`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiGetOrganisationsRequest struct via the builder pattern


### Return type

[**[]Organisation**](Organisation.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetPipeline

> Pipeline GetPipeline(ctx, organization, pipeline).Execute()





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
	organization := "organization_example" // string | Name of the organization
	pipeline := "pipeline_example" // string | Name of the pipeline

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BlueOceanAPI.GetPipeline(context.Background(), organization, pipeline).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BlueOceanAPI.GetPipeline``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetPipeline`: Pipeline
	fmt.Fprintf(os.Stdout, "Response from `BlueOceanAPI.GetPipeline`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organization** | **string** | Name of the organization | 
**pipeline** | **string** | Name of the pipeline | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetPipelineRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**Pipeline**](Pipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetPipelineActivities

> []PipelineActivity GetPipelineActivities(ctx, organization, pipeline).Execute()





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
	organization := "organization_example" // string | Name of the organization
	pipeline := "pipeline_example" // string | Name of the pipeline

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BlueOceanAPI.GetPipelineActivities(context.Background(), organization, pipeline).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BlueOceanAPI.GetPipelineActivities``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetPipelineActivities`: []PipelineActivity
	fmt.Fprintf(os.Stdout, "Response from `BlueOceanAPI.GetPipelineActivities`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organization** | **string** | Name of the organization | 
**pipeline** | **string** | Name of the pipeline | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetPipelineActivitiesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**[]PipelineActivity**](PipelineActivity.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetPipelineBranch

> BranchImpl GetPipelineBranch(ctx, organization, pipeline, branch).Execute()





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
	organization := "organization_example" // string | Name of the organization
	pipeline := "pipeline_example" // string | Name of the pipeline
	branch := "branch_example" // string | Name of the branch

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BlueOceanAPI.GetPipelineBranch(context.Background(), organization, pipeline, branch).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BlueOceanAPI.GetPipelineBranch``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetPipelineBranch`: BranchImpl
	fmt.Fprintf(os.Stdout, "Response from `BlueOceanAPI.GetPipelineBranch`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organization** | **string** | Name of the organization | 
**pipeline** | **string** | Name of the pipeline | 
**branch** | **string** | Name of the branch | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetPipelineBranchRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------




### Return type

[**BranchImpl**](BranchImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetPipelineBranchRun

> PipelineRun GetPipelineBranchRun(ctx, organization, pipeline, branch, run).Execute()





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
	organization := "organization_example" // string | Name of the organization
	pipeline := "pipeline_example" // string | Name of the pipeline
	branch := "branch_example" // string | Name of the branch
	run := "run_example" // string | Name of the run

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BlueOceanAPI.GetPipelineBranchRun(context.Background(), organization, pipeline, branch, run).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BlueOceanAPI.GetPipelineBranchRun``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetPipelineBranchRun`: PipelineRun
	fmt.Fprintf(os.Stdout, "Response from `BlueOceanAPI.GetPipelineBranchRun`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organization** | **string** | Name of the organization | 
**pipeline** | **string** | Name of the pipeline | 
**branch** | **string** | Name of the branch | 
**run** | **string** | Name of the run | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetPipelineBranchRunRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------





### Return type

[**PipelineRun**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetPipelineBranches

> MultibranchPipeline GetPipelineBranches(ctx, organization, pipeline).Execute()





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
	organization := "organization_example" // string | Name of the organization
	pipeline := "pipeline_example" // string | Name of the pipeline

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BlueOceanAPI.GetPipelineBranches(context.Background(), organization, pipeline).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BlueOceanAPI.GetPipelineBranches``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetPipelineBranches`: MultibranchPipeline
	fmt.Fprintf(os.Stdout, "Response from `BlueOceanAPI.GetPipelineBranches`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organization** | **string** | Name of the organization | 
**pipeline** | **string** | Name of the pipeline | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetPipelineBranchesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**MultibranchPipeline**](MultibranchPipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetPipelineFolder

> PipelineFolderImpl GetPipelineFolder(ctx, organization, folder).Execute()





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
	organization := "organization_example" // string | Name of the organization
	folder := "folder_example" // string | Name of the folder

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BlueOceanAPI.GetPipelineFolder(context.Background(), organization, folder).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BlueOceanAPI.GetPipelineFolder``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetPipelineFolder`: PipelineFolderImpl
	fmt.Fprintf(os.Stdout, "Response from `BlueOceanAPI.GetPipelineFolder`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organization** | **string** | Name of the organization | 
**folder** | **string** | Name of the folder | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetPipelineFolderRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**PipelineFolderImpl**](PipelineFolderImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetPipelineFolderPipeline

> PipelineImpl GetPipelineFolderPipeline(ctx, organization, pipeline, folder).Execute()





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
	organization := "organization_example" // string | Name of the organization
	pipeline := "pipeline_example" // string | Name of the pipeline
	folder := "folder_example" // string | Name of the folder

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BlueOceanAPI.GetPipelineFolderPipeline(context.Background(), organization, pipeline, folder).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BlueOceanAPI.GetPipelineFolderPipeline``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetPipelineFolderPipeline`: PipelineImpl
	fmt.Fprintf(os.Stdout, "Response from `BlueOceanAPI.GetPipelineFolderPipeline`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organization** | **string** | Name of the organization | 
**pipeline** | **string** | Name of the pipeline | 
**folder** | **string** | Name of the folder | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetPipelineFolderPipelineRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------




### Return type

[**PipelineImpl**](PipelineImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetPipelineQueue

> []QueueItemImpl GetPipelineQueue(ctx, organization, pipeline).Execute()





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
	organization := "organization_example" // string | Name of the organization
	pipeline := "pipeline_example" // string | Name of the pipeline

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BlueOceanAPI.GetPipelineQueue(context.Background(), organization, pipeline).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BlueOceanAPI.GetPipelineQueue``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetPipelineQueue`: []QueueItemImpl
	fmt.Fprintf(os.Stdout, "Response from `BlueOceanAPI.GetPipelineQueue`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organization** | **string** | Name of the organization | 
**pipeline** | **string** | Name of the pipeline | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetPipelineQueueRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**[]QueueItemImpl**](QueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetPipelineRun

> PipelineRun GetPipelineRun(ctx, organization, pipeline, run).Execute()





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
	organization := "organization_example" // string | Name of the organization
	pipeline := "pipeline_example" // string | Name of the pipeline
	run := "run_example" // string | Name of the run

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BlueOceanAPI.GetPipelineRun(context.Background(), organization, pipeline, run).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BlueOceanAPI.GetPipelineRun``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetPipelineRun`: PipelineRun
	fmt.Fprintf(os.Stdout, "Response from `BlueOceanAPI.GetPipelineRun`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organization** | **string** | Name of the organization | 
**pipeline** | **string** | Name of the pipeline | 
**run** | **string** | Name of the run | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetPipelineRunRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------




### Return type

[**PipelineRun**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetPipelineRunLog

> string GetPipelineRunLog(ctx, organization, pipeline, run).Start(start).Download(download).Execute()





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
	organization := "organization_example" // string | Name of the organization
	pipeline := "pipeline_example" // string | Name of the pipeline
	run := "run_example" // string | Name of the run
	start := int32(56) // int32 | Start position of the log (optional)
	download := true // bool | Set to true in order to download the file, otherwise it's passed as a response body (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BlueOceanAPI.GetPipelineRunLog(context.Background(), organization, pipeline, run).Start(start).Download(download).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BlueOceanAPI.GetPipelineRunLog``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetPipelineRunLog`: string
	fmt.Fprintf(os.Stdout, "Response from `BlueOceanAPI.GetPipelineRunLog`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organization** | **string** | Name of the organization | 
**pipeline** | **string** | Name of the pipeline | 
**run** | **string** | Name of the run | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetPipelineRunLogRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



 **start** | **int32** | Start position of the log | 
 **download** | **bool** | Set to true in order to download the file, otherwise it&#39;s passed as a response body | 

### Return type

**string**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetPipelineRunNode

> PipelineRunNode GetPipelineRunNode(ctx, organization, pipeline, run, node).Execute()





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
	organization := "organization_example" // string | Name of the organization
	pipeline := "pipeline_example" // string | Name of the pipeline
	run := "run_example" // string | Name of the run
	node := "node_example" // string | Name of the node

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BlueOceanAPI.GetPipelineRunNode(context.Background(), organization, pipeline, run, node).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BlueOceanAPI.GetPipelineRunNode``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetPipelineRunNode`: PipelineRunNode
	fmt.Fprintf(os.Stdout, "Response from `BlueOceanAPI.GetPipelineRunNode`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organization** | **string** | Name of the organization | 
**pipeline** | **string** | Name of the pipeline | 
**run** | **string** | Name of the run | 
**node** | **string** | Name of the node | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetPipelineRunNodeRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------





### Return type

[**PipelineRunNode**](PipelineRunNode.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetPipelineRunNodeStep

> PipelineStepImpl GetPipelineRunNodeStep(ctx, organization, pipeline, run, node, step).Execute()





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
	organization := "organization_example" // string | Name of the organization
	pipeline := "pipeline_example" // string | Name of the pipeline
	run := "run_example" // string | Name of the run
	node := "node_example" // string | Name of the node
	step := "step_example" // string | Name of the step

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BlueOceanAPI.GetPipelineRunNodeStep(context.Background(), organization, pipeline, run, node, step).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BlueOceanAPI.GetPipelineRunNodeStep``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetPipelineRunNodeStep`: PipelineStepImpl
	fmt.Fprintf(os.Stdout, "Response from `BlueOceanAPI.GetPipelineRunNodeStep`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organization** | **string** | Name of the organization | 
**pipeline** | **string** | Name of the pipeline | 
**run** | **string** | Name of the run | 
**node** | **string** | Name of the node | 
**step** | **string** | Name of the step | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetPipelineRunNodeStepRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------






### Return type

[**PipelineStepImpl**](PipelineStepImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetPipelineRunNodeStepLog

> string GetPipelineRunNodeStepLog(ctx, organization, pipeline, run, node, step).Execute()





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
	organization := "organization_example" // string | Name of the organization
	pipeline := "pipeline_example" // string | Name of the pipeline
	run := "run_example" // string | Name of the run
	node := "node_example" // string | Name of the node
	step := "step_example" // string | Name of the step

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BlueOceanAPI.GetPipelineRunNodeStepLog(context.Background(), organization, pipeline, run, node, step).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BlueOceanAPI.GetPipelineRunNodeStepLog``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetPipelineRunNodeStepLog`: string
	fmt.Fprintf(os.Stdout, "Response from `BlueOceanAPI.GetPipelineRunNodeStepLog`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organization** | **string** | Name of the organization | 
**pipeline** | **string** | Name of the pipeline | 
**run** | **string** | Name of the run | 
**node** | **string** | Name of the node | 
**step** | **string** | Name of the step | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetPipelineRunNodeStepLogRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------






### Return type

**string**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetPipelineRunNodeSteps

> []PipelineStepImpl GetPipelineRunNodeSteps(ctx, organization, pipeline, run, node).Execute()





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
	organization := "organization_example" // string | Name of the organization
	pipeline := "pipeline_example" // string | Name of the pipeline
	run := "run_example" // string | Name of the run
	node := "node_example" // string | Name of the node

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BlueOceanAPI.GetPipelineRunNodeSteps(context.Background(), organization, pipeline, run, node).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BlueOceanAPI.GetPipelineRunNodeSteps``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetPipelineRunNodeSteps`: []PipelineStepImpl
	fmt.Fprintf(os.Stdout, "Response from `BlueOceanAPI.GetPipelineRunNodeSteps`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organization** | **string** | Name of the organization | 
**pipeline** | **string** | Name of the pipeline | 
**run** | **string** | Name of the run | 
**node** | **string** | Name of the node | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetPipelineRunNodeStepsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------





### Return type

[**[]PipelineStepImpl**](PipelineStepImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetPipelineRunNodes

> []PipelineRunNode GetPipelineRunNodes(ctx, organization, pipeline, run).Execute()





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
	organization := "organization_example" // string | Name of the organization
	pipeline := "pipeline_example" // string | Name of the pipeline
	run := "run_example" // string | Name of the run

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BlueOceanAPI.GetPipelineRunNodes(context.Background(), organization, pipeline, run).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BlueOceanAPI.GetPipelineRunNodes``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetPipelineRunNodes`: []PipelineRunNode
	fmt.Fprintf(os.Stdout, "Response from `BlueOceanAPI.GetPipelineRunNodes`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organization** | **string** | Name of the organization | 
**pipeline** | **string** | Name of the pipeline | 
**run** | **string** | Name of the run | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetPipelineRunNodesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------




### Return type

[**[]PipelineRunNode**](PipelineRunNode.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetPipelineRuns

> []PipelineRun GetPipelineRuns(ctx, organization, pipeline).Execute()





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
	organization := "organization_example" // string | Name of the organization
	pipeline := "pipeline_example" // string | Name of the pipeline

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BlueOceanAPI.GetPipelineRuns(context.Background(), organization, pipeline).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BlueOceanAPI.GetPipelineRuns``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetPipelineRuns`: []PipelineRun
	fmt.Fprintf(os.Stdout, "Response from `BlueOceanAPI.GetPipelineRuns`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organization** | **string** | Name of the organization | 
**pipeline** | **string** | Name of the pipeline | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetPipelineRunsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**[]PipelineRun**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetPipelines

> []Pipeline GetPipelines(ctx, organization).Execute()





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
	organization := "organization_example" // string | Name of the organization

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BlueOceanAPI.GetPipelines(context.Background(), organization).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BlueOceanAPI.GetPipelines``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetPipelines`: []Pipeline
	fmt.Fprintf(os.Stdout, "Response from `BlueOceanAPI.GetPipelines`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organization** | **string** | Name of the organization | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetPipelinesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**[]Pipeline**](Pipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetSCM

> GithubScm GetSCM(ctx, organization, scm).Execute()





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
	organization := "organization_example" // string | Name of the organization
	scm := "scm_example" // string | Name of SCM

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BlueOceanAPI.GetSCM(context.Background(), organization, scm).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BlueOceanAPI.GetSCM``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetSCM`: GithubScm
	fmt.Fprintf(os.Stdout, "Response from `BlueOceanAPI.GetSCM`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organization** | **string** | Name of the organization | 
**scm** | **string** | Name of SCM | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetSCMRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**GithubScm**](GithubScm.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetSCMOrganisationRepositories

> []GithubOrganization GetSCMOrganisationRepositories(ctx, organization, scm, scmOrganisation).CredentialId(credentialId).PageSize(pageSize).PageNumber(pageNumber).Execute()





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
	organization := "organization_example" // string | Name of the organization
	scm := "scm_example" // string | Name of SCM
	scmOrganisation := "scmOrganisation_example" // string | Name of the SCM organization
	credentialId := "credentialId_example" // string | Credential ID (optional)
	pageSize := int32(56) // int32 | Number of items in a page (optional)
	pageNumber := int32(56) // int32 | Page number (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BlueOceanAPI.GetSCMOrganisationRepositories(context.Background(), organization, scm, scmOrganisation).CredentialId(credentialId).PageSize(pageSize).PageNumber(pageNumber).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BlueOceanAPI.GetSCMOrganisationRepositories``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetSCMOrganisationRepositories`: []GithubOrganization
	fmt.Fprintf(os.Stdout, "Response from `BlueOceanAPI.GetSCMOrganisationRepositories`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organization** | **string** | Name of the organization | 
**scm** | **string** | Name of SCM | 
**scmOrganisation** | **string** | Name of the SCM organization | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetSCMOrganisationRepositoriesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



 **credentialId** | **string** | Credential ID | 
 **pageSize** | **int32** | Number of items in a page | 
 **pageNumber** | **int32** | Page number | 

### Return type

[**[]GithubOrganization**](GithubOrganization.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetSCMOrganisationRepository

> []GithubOrganization GetSCMOrganisationRepository(ctx, organization, scm, scmOrganisation, repository).CredentialId(credentialId).Execute()





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
	organization := "organization_example" // string | Name of the organization
	scm := "scm_example" // string | Name of SCM
	scmOrganisation := "scmOrganisation_example" // string | Name of the SCM organization
	repository := "repository_example" // string | Name of the SCM repository
	credentialId := "credentialId_example" // string | Credential ID (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BlueOceanAPI.GetSCMOrganisationRepository(context.Background(), organization, scm, scmOrganisation, repository).CredentialId(credentialId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BlueOceanAPI.GetSCMOrganisationRepository``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetSCMOrganisationRepository`: []GithubOrganization
	fmt.Fprintf(os.Stdout, "Response from `BlueOceanAPI.GetSCMOrganisationRepository`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organization** | **string** | Name of the organization | 
**scm** | **string** | Name of SCM | 
**scmOrganisation** | **string** | Name of the SCM organization | 
**repository** | **string** | Name of the SCM repository | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetSCMOrganisationRepositoryRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------




 **credentialId** | **string** | Credential ID | 

### Return type

[**[]GithubOrganization**](GithubOrganization.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetSCMOrganisations

> []GithubOrganization GetSCMOrganisations(ctx, organization, scm).CredentialId(credentialId).Execute()





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
	organization := "organization_example" // string | Name of the organization
	scm := "scm_example" // string | Name of SCM
	credentialId := "credentialId_example" // string | Credential ID (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BlueOceanAPI.GetSCMOrganisations(context.Background(), organization, scm).CredentialId(credentialId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BlueOceanAPI.GetSCMOrganisations``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetSCMOrganisations`: []GithubOrganization
	fmt.Fprintf(os.Stdout, "Response from `BlueOceanAPI.GetSCMOrganisations`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organization** | **string** | Name of the organization | 
**scm** | **string** | Name of SCM | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetSCMOrganisationsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **credentialId** | **string** | Credential ID | 

### Return type

[**[]GithubOrganization**](GithubOrganization.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetUser

> User GetUser(ctx, organization, user).Execute()





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
	organization := "organization_example" // string | Name of the organization
	user := "user_example" // string | Name of the user

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BlueOceanAPI.GetUser(context.Background(), organization, user).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BlueOceanAPI.GetUser``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetUser`: User
	fmt.Fprintf(os.Stdout, "Response from `BlueOceanAPI.GetUser`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organization** | **string** | Name of the organization | 
**user** | **string** | Name of the user | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetUserRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**User**](User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetUserFavorites

> []FavoriteImpl GetUserFavorites(ctx, user).Execute()





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
	user := "user_example" // string | Name of the user

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BlueOceanAPI.GetUserFavorites(context.Background(), user).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BlueOceanAPI.GetUserFavorites``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetUserFavorites`: []FavoriteImpl
	fmt.Fprintf(os.Stdout, "Response from `BlueOceanAPI.GetUserFavorites`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**user** | **string** | Name of the user | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetUserFavoritesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**[]FavoriteImpl**](FavoriteImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetUsers

> User GetUsers(ctx, organization).Execute()





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
	organization := "organization_example" // string | Name of the organization

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BlueOceanAPI.GetUsers(context.Background(), organization).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BlueOceanAPI.GetUsers``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetUsers`: User
	fmt.Fprintf(os.Stdout, "Response from `BlueOceanAPI.GetUsers`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organization** | **string** | Name of the organization | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetUsersRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**User**](User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PostPipelineRun

> QueueItemImpl PostPipelineRun(ctx, organization, pipeline, run).Execute()





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
	organization := "organization_example" // string | Name of the organization
	pipeline := "pipeline_example" // string | Name of the pipeline
	run := "run_example" // string | Name of the run

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BlueOceanAPI.PostPipelineRun(context.Background(), organization, pipeline, run).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BlueOceanAPI.PostPipelineRun``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PostPipelineRun`: QueueItemImpl
	fmt.Fprintf(os.Stdout, "Response from `BlueOceanAPI.PostPipelineRun`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organization** | **string** | Name of the organization | 
**pipeline** | **string** | Name of the pipeline | 
**run** | **string** | Name of the run | 

### Other Parameters

Other parameters are passed through a pointer to a apiPostPipelineRunRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------




### Return type

[**QueueItemImpl**](QueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PostPipelineRuns

> QueueItemImpl PostPipelineRuns(ctx, organization, pipeline).Execute()





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
	organization := "organization_example" // string | Name of the organization
	pipeline := "pipeline_example" // string | Name of the pipeline

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BlueOceanAPI.PostPipelineRuns(context.Background(), organization, pipeline).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BlueOceanAPI.PostPipelineRuns``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PostPipelineRuns`: QueueItemImpl
	fmt.Fprintf(os.Stdout, "Response from `BlueOceanAPI.PostPipelineRuns`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organization** | **string** | Name of the organization | 
**pipeline** | **string** | Name of the pipeline | 

### Other Parameters

Other parameters are passed through a pointer to a apiPostPipelineRunsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**QueueItemImpl**](QueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PutPipelineFavorite

> FavoriteImpl PutPipelineFavorite(ctx, organization, pipeline).Body(body).Execute()





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
	organization := "organization_example" // string | Name of the organization
	pipeline := "pipeline_example" // string | Name of the pipeline
	body := true // bool | Set JSON string body to {\"favorite\": true} to favorite, set value to false to unfavorite

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BlueOceanAPI.PutPipelineFavorite(context.Background(), organization, pipeline).Body(body).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BlueOceanAPI.PutPipelineFavorite``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PutPipelineFavorite`: FavoriteImpl
	fmt.Fprintf(os.Stdout, "Response from `BlueOceanAPI.PutPipelineFavorite`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organization** | **string** | Name of the organization | 
**pipeline** | **string** | Name of the pipeline | 

### Other Parameters

Other parameters are passed through a pointer to a apiPutPipelineFavoriteRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **body** | **bool** | Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite | 

### Return type

[**FavoriteImpl**](FavoriteImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PutPipelineRun

> PipelineRun PutPipelineRun(ctx, organization, pipeline, run).Blocking(blocking).TimeOutInSecs(timeOutInSecs).Execute()





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
	organization := "organization_example" // string | Name of the organization
	pipeline := "pipeline_example" // string | Name of the pipeline
	run := "run_example" // string | Name of the run
	blocking := "blocking_example" // string | Set to true to make blocking stop, default: false (optional)
	timeOutInSecs := int32(56) // int32 | Timeout in seconds, default: 10 seconds (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BlueOceanAPI.PutPipelineRun(context.Background(), organization, pipeline, run).Blocking(blocking).TimeOutInSecs(timeOutInSecs).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BlueOceanAPI.PutPipelineRun``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PutPipelineRun`: PipelineRun
	fmt.Fprintf(os.Stdout, "Response from `BlueOceanAPI.PutPipelineRun`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organization** | **string** | Name of the organization | 
**pipeline** | **string** | Name of the pipeline | 
**run** | **string** | Name of the run | 

### Other Parameters

Other parameters are passed through a pointer to a apiPutPipelineRunRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



 **blocking** | **string** | Set to true to make blocking stop, default: false | 
 **timeOutInSecs** | **int32** | Timeout in seconds, default: 10 seconds | 

### Return type

[**PipelineRun**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## Search

> string Search(ctx).Q(q).Execute()





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
	q := "q_example" // string | Query string

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BlueOceanAPI.Search(context.Background()).Q(q).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BlueOceanAPI.Search``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `Search`: string
	fmt.Fprintf(os.Stdout, "Response from `BlueOceanAPI.Search`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSearchRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **string** | Query string | 

### Return type

**string**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchClasses

> string SearchClasses(ctx).Q(q).Execute()





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
	q := "q_example" // string | Query string containing an array of class names

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BlueOceanAPI.SearchClasses(context.Background()).Q(q).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BlueOceanAPI.SearchClasses``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `SearchClasses`: string
	fmt.Fprintf(os.Stdout, "Response from `BlueOceanAPI.SearchClasses`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiSearchClassesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **string** | Query string containing an array of class names | 

### Return type

**string**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

